.class public Ldrinkless/org/ton/TonApi$FullAccountState;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FullAccountState"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x56d23a49


# instance fields
.field public accountState:Ldrinkless/org/ton/TonApi$AccountState;

.field public address:Ldrinkless/org/ton/TonApi$AccountAddress;

.field public balance:J

.field public blockId:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

.field public lastTransactionId:Ldrinkless/org/ton/TonApi$InternalTransactionId;

.field public revision:I

.field public syncUtime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 850
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$AccountAddress;JLdrinkless/org/ton/TonApi$InternalTransactionId;Ldrinkless/org/ton/TonApi$TonBlockIdExt;JLdrinkless/org/ton/TonApi$AccountState;I)V
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
            "address",
            "balance",
            "lastTransactionId",
            "blockId",
            "syncUtime",
            "accountState",
            "revision"
        }
    .end annotation

    .line 853
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 854
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$FullAccountState;->address:Ldrinkless/org/ton/TonApi$AccountAddress;

    .line 855
    iput-wide p2, p0, Ldrinkless/org/ton/TonApi$FullAccountState;->balance:J

    .line 856
    iput-object p4, p0, Ldrinkless/org/ton/TonApi$FullAccountState;->lastTransactionId:Ldrinkless/org/ton/TonApi$InternalTransactionId;

    .line 857
    iput-object p5, p0, Ldrinkless/org/ton/TonApi$FullAccountState;->blockId:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

    .line 858
    iput-wide p6, p0, Ldrinkless/org/ton/TonApi$FullAccountState;->syncUtime:J

    .line 859
    iput-object p8, p0, Ldrinkless/org/ton/TonApi$FullAccountState;->accountState:Ldrinkless/org/ton/TonApi$AccountState;

    .line 860
    iput p9, p0, Ldrinkless/org/ton/TonApi$FullAccountState;->revision:I

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x56d23a49

    return v0
.end method
