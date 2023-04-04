.class public Ldrinkless/org/ton/TonApi$RawGetTransactionsV2;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawGetTransactionsV2"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x21c0835a


# instance fields
.field public accountAddress:Ldrinkless/org/ton/TonApi$AccountAddress;

.field public count:I

.field public fromTransactionId:Ldrinkless/org/ton/TonApi$InternalTransactionId;

.field public privateKey:Ldrinkless/org/ton/TonApi$InputKey;

.field public tryDecodeMessages:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5944
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$InputKey;Ldrinkless/org/ton/TonApi$AccountAddress;Ldrinkless/org/ton/TonApi$InternalTransactionId;IZ)V
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
            "privateKey",
            "accountAddress",
            "fromTransactionId",
            "count",
            "tryDecodeMessages"
        }
    .end annotation

    .line 5947
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 5948
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$RawGetTransactionsV2;->privateKey:Ldrinkless/org/ton/TonApi$InputKey;

    .line 5949
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$RawGetTransactionsV2;->accountAddress:Ldrinkless/org/ton/TonApi$AccountAddress;

    .line 5950
    iput-object p3, p0, Ldrinkless/org/ton/TonApi$RawGetTransactionsV2;->fromTransactionId:Ldrinkless/org/ton/TonApi$InternalTransactionId;

    .line 5951
    iput p4, p0, Ldrinkless/org/ton/TonApi$RawGetTransactionsV2;->count:I

    .line 5952
    iput-boolean p5, p0, Ldrinkless/org/ton/TonApi$RawGetTransactionsV2;->tryDecodeMessages:Z

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x21c0835a

    return v0
.end method
