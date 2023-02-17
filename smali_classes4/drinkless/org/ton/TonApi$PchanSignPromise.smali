.class public Ldrinkless/org/ton/TonApi$PchanSignPromise;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PchanSignPromise"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x6c245f1e


# instance fields
.field public inputKey:Ldrinkless/org/ton/TonApi$InputKey;

.field public promise:Ldrinkless/org/ton/TonApi$PchanPromise;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5547
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$InputKey;Ldrinkless/org/ton/TonApi$PchanPromise;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputKey",
            "promise"
        }
    .end annotation

    .line 5550
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 5551
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$PchanSignPromise;->inputKey:Ldrinkless/org/ton/TonApi$InputKey;

    .line 5552
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$PchanSignPromise;->promise:Ldrinkless/org/ton/TonApi$PchanPromise;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x6c245f1e

    return v0
.end method
