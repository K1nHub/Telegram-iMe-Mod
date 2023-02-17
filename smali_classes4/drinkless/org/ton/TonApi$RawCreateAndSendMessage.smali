.class public Ldrinkless/org/ton/TonApi$RawCreateAndSendMessage;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawCreateAndSendMessage"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x2e07365b


# instance fields
.field public data:[B

.field public destination:Ldrinkless/org/ton/TonApi$AccountAddress;

.field public initialAccountState:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5792
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$AccountAddress;[B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "destination",
            "initialAccountState",
            "data"
        }
    .end annotation

    .line 5795
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 5796
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$RawCreateAndSendMessage;->destination:Ldrinkless/org/ton/TonApi$AccountAddress;

    .line 5797
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$RawCreateAndSendMessage;->initialAccountState:[B

    .line 5798
    iput-object p3, p0, Ldrinkless/org/ton/TonApi$RawCreateAndSendMessage;->data:[B

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x2e07365b

    return v0
.end method
