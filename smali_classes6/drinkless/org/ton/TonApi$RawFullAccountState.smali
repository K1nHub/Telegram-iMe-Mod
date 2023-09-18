.class public Ldrinkless/org/ton/TonApi$RawFullAccountState;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawFullAccountState"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x57583471


# instance fields
.field public balance:J

.field public blockId:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

.field public code:[B

.field public data:[B

.field public frozenHash:[B

.field public lastTransactionId:Ldrinkless/org/ton/TonApi$InternalTransactionId;

.field public syncUtime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3124
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J[B[BLdrinkless/org/ton/TonApi$InternalTransactionId;Ldrinkless/org/ton/TonApi$TonBlockIdExt;[BJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "balance",
            "code",
            "data",
            "lastTransactionId",
            "blockId",
            "frozenHash",
            "syncUtime"
        }
    .end annotation

    .line 3127
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 3128
    iput-wide p1, p0, Ldrinkless/org/ton/TonApi$RawFullAccountState;->balance:J

    .line 3129
    iput-object p3, p0, Ldrinkless/org/ton/TonApi$RawFullAccountState;->code:[B

    .line 3130
    iput-object p4, p0, Ldrinkless/org/ton/TonApi$RawFullAccountState;->data:[B

    .line 3131
    iput-object p5, p0, Ldrinkless/org/ton/TonApi$RawFullAccountState;->lastTransactionId:Ldrinkless/org/ton/TonApi$InternalTransactionId;

    .line 3132
    iput-object p6, p0, Ldrinkless/org/ton/TonApi$RawFullAccountState;->blockId:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

    .line 3133
    iput-object p7, p0, Ldrinkless/org/ton/TonApi$RawFullAccountState;->frozenHash:[B

    .line 3134
    iput-wide p8, p0, Ldrinkless/org/ton/TonApi$RawFullAccountState;->syncUtime:J

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x57583471

    return v0
.end method
