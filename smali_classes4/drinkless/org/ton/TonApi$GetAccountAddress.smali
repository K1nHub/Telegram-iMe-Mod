.class public Ldrinkless/org/ton/TonApi$GetAccountAddress;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetAccountAddress"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x1e8ba5c8


# instance fields
.field public initialAccountState:Ldrinkless/org/ton/TonApi$InitialAccountState;

.field public revision:I

.field public workchainId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4670
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$InitialAccountState;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "initialAccountState",
            "revision",
            "workchainId"
        }
    .end annotation

    .line 4673
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 4674
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$GetAccountAddress;->initialAccountState:Ldrinkless/org/ton/TonApi$InitialAccountState;

    .line 4675
    iput p2, p0, Ldrinkless/org/ton/TonApi$GetAccountAddress;->revision:I

    .line 4676
    iput p3, p0, Ldrinkless/org/ton/TonApi$GetAccountAddress;->workchainId:I

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x1e8ba5c8

    return v0
.end method
