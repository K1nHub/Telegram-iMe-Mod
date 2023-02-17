.class public Ldrinkless/org/ton/TonApi$BlocksGetTransactions;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlocksGetTransactions"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x356a32cf


# instance fields
.field public after:Ldrinkless/org/ton/TonApi$BlocksAccountTransactionId;

.field public count:I

.field public id:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

.field public mode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4131
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$TonBlockIdExt;IILdrinkless/org/ton/TonApi$BlocksAccountTransactionId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "mode",
            "count",
            "after"
        }
    .end annotation

    .line 4134
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 4135
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$BlocksGetTransactions;->id:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

    .line 4136
    iput p2, p0, Ldrinkless/org/ton/TonApi$BlocksGetTransactions;->mode:I

    .line 4137
    iput p3, p0, Ldrinkless/org/ton/TonApi$BlocksGetTransactions;->count:I

    .line 4138
    iput-object p4, p0, Ldrinkless/org/ton/TonApi$BlocksGetTransactions;->after:Ldrinkless/org/ton/TonApi$BlocksAccountTransactionId;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x356a32cf    # -4908696.5f

    return v0
.end method
