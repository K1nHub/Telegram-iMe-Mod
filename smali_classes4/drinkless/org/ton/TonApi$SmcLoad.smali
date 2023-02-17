.class public Ldrinkless/org/ton/TonApi$SmcLoad;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmcLoad"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x35da2fc1


# instance fields
.field public accountAddress:Ldrinkless/org/ton/TonApi$AccountAddress;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6358
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$AccountAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accountAddress"
        }
    .end annotation

    .line 6361
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 6362
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$SmcLoad;->accountAddress:Ldrinkless/org/ton/TonApi$AccountAddress;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x35da2fc1

    return v0
.end method
