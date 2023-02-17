.class public Ldrinkless/org/ton/TonApi$BlocksHeader;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlocksHeader"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x58298662


# instance fields
.field public afterMerge:Z

.field public afterSplit:Z

.field public beforeSplit:Z

.field public catchainSeqno:I

.field public endLt:J

.field public flags:I

.field public genUtime:J

.field public globalId:I

.field public id:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

.field public isKeyBlock:Z

.field public minRefMcSeqno:I

.field public prevBlocks:[Ldrinkless/org/ton/TonApi$TonBlockIdExt;

.field public prevKeyBlockSeqno:I

.field public startLt:J

.field public validatorListHashShort:I

.field public version:I

.field public vertSeqno:I

.field public wantMerge:Z

.field public wantSplit:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1737
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$TonBlockIdExt;IIIZZZZZIIIZIJJJI[Ldrinkless/org/ton/TonApi$TonBlockIdExt;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "globalId",
            "version",
            "flags",
            "afterMerge",
            "afterSplit",
            "beforeSplit",
            "wantMerge",
            "wantSplit",
            "validatorListHashShort",
            "catchainSeqno",
            "minRefMcSeqno",
            "isKeyBlock",
            "prevKeyBlockSeqno",
            "startLt",
            "endLt",
            "genUtime",
            "vertSeqno",
            "prevBlocks"
        }
    .end annotation

    move-object v0, p0

    .line 1740
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    move-object v1, p1

    .line 1741
    iput-object v1, v0, Ldrinkless/org/ton/TonApi$BlocksHeader;->id:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

    move v1, p2

    .line 1742
    iput v1, v0, Ldrinkless/org/ton/TonApi$BlocksHeader;->globalId:I

    move v1, p3

    .line 1743
    iput v1, v0, Ldrinkless/org/ton/TonApi$BlocksHeader;->version:I

    move v1, p4

    .line 1744
    iput v1, v0, Ldrinkless/org/ton/TonApi$BlocksHeader;->flags:I

    move v1, p5

    .line 1745
    iput-boolean v1, v0, Ldrinkless/org/ton/TonApi$BlocksHeader;->afterMerge:Z

    move v1, p6

    .line 1746
    iput-boolean v1, v0, Ldrinkless/org/ton/TonApi$BlocksHeader;->afterSplit:Z

    move v1, p7

    .line 1747
    iput-boolean v1, v0, Ldrinkless/org/ton/TonApi$BlocksHeader;->beforeSplit:Z

    move v1, p8

    .line 1748
    iput-boolean v1, v0, Ldrinkless/org/ton/TonApi$BlocksHeader;->wantMerge:Z

    move v1, p9

    .line 1749
    iput-boolean v1, v0, Ldrinkless/org/ton/TonApi$BlocksHeader;->wantSplit:Z

    move v1, p10

    .line 1750
    iput v1, v0, Ldrinkless/org/ton/TonApi$BlocksHeader;->validatorListHashShort:I

    move v1, p11

    .line 1751
    iput v1, v0, Ldrinkless/org/ton/TonApi$BlocksHeader;->catchainSeqno:I

    move v1, p12

    .line 1752
    iput v1, v0, Ldrinkless/org/ton/TonApi$BlocksHeader;->minRefMcSeqno:I

    move/from16 v1, p13

    .line 1753
    iput-boolean v1, v0, Ldrinkless/org/ton/TonApi$BlocksHeader;->isKeyBlock:Z

    move/from16 v1, p14

    .line 1754
    iput v1, v0, Ldrinkless/org/ton/TonApi$BlocksHeader;->prevKeyBlockSeqno:I

    move-wide/from16 v1, p15

    .line 1755
    iput-wide v1, v0, Ldrinkless/org/ton/TonApi$BlocksHeader;->startLt:J

    move-wide/from16 v1, p17

    .line 1756
    iput-wide v1, v0, Ldrinkless/org/ton/TonApi$BlocksHeader;->endLt:J

    move-wide/from16 v1, p19

    .line 1757
    iput-wide v1, v0, Ldrinkless/org/ton/TonApi$BlocksHeader;->genUtime:J

    move/from16 v1, p21

    .line 1758
    iput v1, v0, Ldrinkless/org/ton/TonApi$BlocksHeader;->vertSeqno:I

    move-object/from16 v1, p22

    .line 1759
    iput-object v1, v0, Ldrinkless/org/ton/TonApi$BlocksHeader;->prevBlocks:[Ldrinkless/org/ton/TonApi$TonBlockIdExt;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x58298662

    return v0
.end method
