.class public Ldrinkless/org/ton/TonApi$MsgMessage;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MsgMessage"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x3027b074


# instance fields
.field public amount:J

.field public data:Ldrinkless/org/ton/TonApi$MsgData;

.field public destination:Ldrinkless/org/ton/TonApi$AccountAddress;

.field public publicKey:Ljava/lang/String;

.field public sendMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2645
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$AccountAddress;Ljava/lang/String;JLdrinkless/org/ton/TonApi$MsgData;I)V
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
            "destination",
            "publicKey",
            "amount",
            "data",
            "sendMode"
        }
    .end annotation

    .line 2648
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 2649
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$MsgMessage;->destination:Ldrinkless/org/ton/TonApi$AccountAddress;

    .line 2650
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$MsgMessage;->publicKey:Ljava/lang/String;

    .line 2651
    iput-wide p3, p0, Ldrinkless/org/ton/TonApi$MsgMessage;->amount:J

    .line 2652
    iput-object p5, p0, Ldrinkless/org/ton/TonApi$MsgMessage;->data:Ldrinkless/org/ton/TonApi$MsgData;

    .line 2653
    iput p6, p0, Ldrinkless/org/ton/TonApi$MsgMessage;->sendMode:I

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x3027b074

    return v0
.end method
