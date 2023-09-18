.class public Ldrinkless/org/ton/TonApi$RawTransaction;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawTransaction"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x70828481


# instance fields
.field public data:[B

.field public fee:J

.field public inMsg:Ldrinkless/org/ton/TonApi$RawMessage;

.field public otherFee:J

.field public outMsgs:[Ldrinkless/org/ton/TonApi$RawMessage;

.field public storageFee:J

.field public transactionId:Ldrinkless/org/ton/TonApi$InternalTransactionId;

.field public utime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3211
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J[BLdrinkless/org/ton/TonApi$InternalTransactionId;JJJLdrinkless/org/ton/TonApi$RawMessage;[Ldrinkless/org/ton/TonApi$RawMessage;)V
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
            "utime",
            "data",
            "transactionId",
            "fee",
            "storageFee",
            "otherFee",
            "inMsg",
            "outMsgs"
        }
    .end annotation

    .line 3214
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 3215
    iput-wide p1, p0, Ldrinkless/org/ton/TonApi$RawTransaction;->utime:J

    .line 3216
    iput-object p3, p0, Ldrinkless/org/ton/TonApi$RawTransaction;->data:[B

    .line 3217
    iput-object p4, p0, Ldrinkless/org/ton/TonApi$RawTransaction;->transactionId:Ldrinkless/org/ton/TonApi$InternalTransactionId;

    .line 3218
    iput-wide p5, p0, Ldrinkless/org/ton/TonApi$RawTransaction;->fee:J

    .line 3219
    iput-wide p7, p0, Ldrinkless/org/ton/TonApi$RawTransaction;->storageFee:J

    .line 3220
    iput-wide p9, p0, Ldrinkless/org/ton/TonApi$RawTransaction;->otherFee:J

    .line 3221
    iput-object p11, p0, Ldrinkless/org/ton/TonApi$RawTransaction;->inMsg:Ldrinkless/org/ton/TonApi$RawMessage;

    .line 3222
    iput-object p12, p0, Ldrinkless/org/ton/TonApi$RawTransaction;->outMsgs:[Ldrinkless/org/ton/TonApi$RawMessage;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x70828481

    return v0
.end method
