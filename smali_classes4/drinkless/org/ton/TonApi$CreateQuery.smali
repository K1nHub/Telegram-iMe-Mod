.class public Ldrinkless/org/ton/TonApi$CreateQuery;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateQuery"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0xe74df3b


# instance fields
.field public action:Ldrinkless/org/ton/TonApi$Action;

.field public address:Ldrinkless/org/ton/TonApi$AccountAddress;

.field public initialAccountState:Ldrinkless/org/ton/TonApi$InitialAccountState;

.field public privateKey:Ldrinkless/org/ton/TonApi$InputKey;

.field public timeout:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4315
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$InputKey;Ldrinkless/org/ton/TonApi$AccountAddress;ILdrinkless/org/ton/TonApi$Action;Ldrinkless/org/ton/TonApi$InitialAccountState;)V
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
            "address",
            "timeout",
            "action",
            "initialAccountState"
        }
    .end annotation

    .line 4318
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 4319
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$CreateQuery;->privateKey:Ldrinkless/org/ton/TonApi$InputKey;

    .line 4320
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$CreateQuery;->address:Ldrinkless/org/ton/TonApi$AccountAddress;

    .line 4321
    iput p3, p0, Ldrinkless/org/ton/TonApi$CreateQuery;->timeout:I

    .line 4322
    iput-object p4, p0, Ldrinkless/org/ton/TonApi$CreateQuery;->action:Ldrinkless/org/ton/TonApi$Action;

    .line 4323
    iput-object p5, p0, Ldrinkless/org/ton/TonApi$CreateQuery;->initialAccountState:Ldrinkless/org/ton/TonApi$InitialAccountState;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0xe74df3b

    return v0
.end method
