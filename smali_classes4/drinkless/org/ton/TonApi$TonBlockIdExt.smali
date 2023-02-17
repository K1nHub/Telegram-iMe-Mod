.class public Ldrinkless/org/ton/TonApi$TonBlockIdExt;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TonBlockIdExt"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x7910fc9a


# instance fields
.field public fileHash:[B

.field public rootHash:[B

.field public seqno:I

.field public shard:J

.field public workchain:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3561
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IJI[B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "workchain",
            "shard",
            "seqno",
            "rootHash",
            "fileHash"
        }
    .end annotation

    .line 3564
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 3565
    iput p1, p0, Ldrinkless/org/ton/TonApi$TonBlockIdExt;->workchain:I

    .line 3566
    iput-wide p2, p0, Ldrinkless/org/ton/TonApi$TonBlockIdExt;->shard:J

    .line 3567
    iput p4, p0, Ldrinkless/org/ton/TonApi$TonBlockIdExt;->seqno:I

    .line 3568
    iput-object p5, p0, Ldrinkless/org/ton/TonApi$TonBlockIdExt;->rootHash:[B

    .line 3569
    iput-object p6, p0, Ldrinkless/org/ton/TonApi$TonBlockIdExt;->fileHash:[B

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x7910fc9a

    return v0
.end method
