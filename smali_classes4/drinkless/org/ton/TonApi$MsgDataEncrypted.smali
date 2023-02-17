.class public Ldrinkless/org/ton/TonApi$MsgDataEncrypted;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MsgDataEncrypted"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x21a13d51


# instance fields
.field public data:Ldrinkless/org/ton/TonApi$MsgData;

.field public source:Ldrinkless/org/ton/TonApi$AccountAddress;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2580
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$AccountAddress;Ldrinkless/org/ton/TonApi$MsgData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "data"
        }
    .end annotation

    .line 2583
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 2584
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$MsgDataEncrypted;->source:Ldrinkless/org/ton/TonApi$AccountAddress;

    .line 2585
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$MsgDataEncrypted;->data:Ldrinkless/org/ton/TonApi$MsgData;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x21a13d51

    return v0
.end method
