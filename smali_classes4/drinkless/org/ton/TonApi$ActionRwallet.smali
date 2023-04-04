.class public Ldrinkless/org/ton/TonApi$ActionRwallet;
.super Ldrinkless/org/ton/TonApi$Action;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionRwallet"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x6fdc83b


# instance fields
.field public action:Ldrinkless/org/ton/TonApi$RwalletActionInit;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 470
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Action;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$RwalletActionInit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 473
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Action;-><init>()V

    .line 474
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$ActionRwallet;->action:Ldrinkless/org/ton/TonApi$RwalletActionInit;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x6fdc83b

    return v0
.end method
