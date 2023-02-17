.class public Ldrinkless/org/ton/TonApi$RawTransactions;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawTransactions"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x7b051713


# instance fields
.field public previousTransactionId:Ldrinkless/org/ton/TonApi$InternalTransactionId;

.field public transactions:[Ldrinkless/org/ton/TonApi$RawTransaction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3249
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Ldrinkless/org/ton/TonApi$RawTransaction;Ldrinkless/org/ton/TonApi$InternalTransactionId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "transactions",
            "previousTransactionId"
        }
    .end annotation

    .line 3252
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 3253
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$RawTransactions;->transactions:[Ldrinkless/org/ton/TonApi$RawTransaction;

    .line 3254
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$RawTransactions;->previousTransactionId:Ldrinkless/org/ton/TonApi$InternalTransactionId;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x7b051713

    return v0
.end method
