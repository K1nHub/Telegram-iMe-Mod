.class public Ldrinkless/org/ton/TonApi$RawMessage;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawMessage"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x518b724f


# instance fields
.field public bodyHash:[B

.field public createdLt:J

.field public destination:Ldrinkless/org/ton/TonApi$AccountAddress;

.field public fwdFee:J

.field public ihrFee:J

.field public msgData:Ldrinkless/org/ton/TonApi$MsgData;

.field public source:Ldrinkless/org/ton/TonApi$AccountAddress;

.field public value:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3167
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$AccountAddress;Ldrinkless/org/ton/TonApi$AccountAddress;JJJJ[BLdrinkless/org/ton/TonApi$MsgData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "source",
            "destination",
            "value",
            "fwdFee",
            "ihrFee",
            "createdLt",
            "bodyHash",
            "msgData"
        }
    .end annotation

    .line 3170
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 3171
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$RawMessage;->source:Ldrinkless/org/ton/TonApi$AccountAddress;

    .line 3172
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$RawMessage;->destination:Ldrinkless/org/ton/TonApi$AccountAddress;

    .line 3173
    iput-wide p3, p0, Ldrinkless/org/ton/TonApi$RawMessage;->value:J

    .line 3174
    iput-wide p5, p0, Ldrinkless/org/ton/TonApi$RawMessage;->fwdFee:J

    .line 3175
    iput-wide p7, p0, Ldrinkless/org/ton/TonApi$RawMessage;->ihrFee:J

    .line 3176
    iput-wide p9, p0, Ldrinkless/org/ton/TonApi$RawMessage;->createdLt:J

    .line 3177
    iput-object p11, p0, Ldrinkless/org/ton/TonApi$RawMessage;->bodyHash:[B

    .line 3178
    iput-object p12, p0, Ldrinkless/org/ton/TonApi$RawMessage;->msgData:Ldrinkless/org/ton/TonApi$MsgData;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x518b724f

    return v0
.end method
