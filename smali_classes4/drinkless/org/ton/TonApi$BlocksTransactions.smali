.class public Ldrinkless/org/ton/TonApi$BlocksTransactions;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlocksTransactions"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x72940f6c


# instance fields
.field public id:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

.field public incomplete:Z

.field public reqCount:I

.field public transactions:[Ldrinkless/org/ton/TonApi$BlocksShortTxId;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1952
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$TonBlockIdExt;IZ[Ldrinkless/org/ton/TonApi$BlocksShortTxId;)V
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
            "reqCount",
            "incomplete",
            "transactions"
        }
    .end annotation

    .line 1955
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 1956
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$BlocksTransactions;->id:Ldrinkless/org/ton/TonApi$TonBlockIdExt;

    .line 1957
    iput p2, p0, Ldrinkless/org/ton/TonApi$BlocksTransactions;->reqCount:I

    .line 1958
    iput-boolean p3, p0, Ldrinkless/org/ton/TonApi$BlocksTransactions;->incomplete:Z

    .line 1959
    iput-object p4, p0, Ldrinkless/org/ton/TonApi$BlocksTransactions;->transactions:[Ldrinkless/org/ton/TonApi$BlocksShortTxId;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x72940f6c

    return v0
.end method
