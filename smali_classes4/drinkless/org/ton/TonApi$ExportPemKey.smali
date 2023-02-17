.class public Ldrinkless/org/ton/TonApi$ExportPemKey;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExportPemKey"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x26575c46


# instance fields
.field public inputKey:Ldrinkless/org/ton/TonApi$InputKey;

.field public keyPassword:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4599
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$InputKey;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputKey",
            "keyPassword"
        }
    .end annotation

    .line 4602
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 4603
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$ExportPemKey;->inputKey:Ldrinkless/org/ton/TonApi$InputKey;

    .line 4604
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$ExportPemKey;->keyPassword:[B

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x26575c46

    return v0
.end method
