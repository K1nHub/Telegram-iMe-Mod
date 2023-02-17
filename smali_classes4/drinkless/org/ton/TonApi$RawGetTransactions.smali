.class public Ldrinkless/org/ton/TonApi$RawGetTransactions;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawGetTransactions"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x3d5ea31d


# instance fields
.field public accountAddress:Ldrinkless/org/ton/TonApi$AccountAddress;

.field public fromTransactionId:Ldrinkless/org/ton/TonApi$InternalTransactionId;

.field public privateKey:Ldrinkless/org/ton/TonApi$InputKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5904
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$InputKey;Ldrinkless/org/ton/TonApi$AccountAddress;Ldrinkless/org/ton/TonApi$InternalTransactionId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "accountAddress",
            "fromTransactionId"
        }
    .end annotation

    .line 5907
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 5908
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$RawGetTransactions;->privateKey:Ldrinkless/org/ton/TonApi$InputKey;

    .line 5909
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$RawGetTransactions;->accountAddress:Ldrinkless/org/ton/TonApi$AccountAddress;

    .line 5910
    iput-object p3, p0, Ldrinkless/org/ton/TonApi$RawGetTransactions;->fromTransactionId:Ldrinkless/org/ton/TonApi$InternalTransactionId;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x3d5ea31d

    return v0
.end method
