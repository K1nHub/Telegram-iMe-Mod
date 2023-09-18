.class public Ldrinkless/org/ton/TonApi$Kdf;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Kdf"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x63698c83


# instance fields
.field public iterations:I

.field public password:[B

.field public salt:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5201
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>([B[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "password",
            "salt",
            "iterations"
        }
    .end annotation

    .line 5204
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 5205
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$Kdf;->password:[B

    .line 5206
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$Kdf;->salt:[B

    .line 5207
    iput p3, p0, Ldrinkless/org/ton/TonApi$Kdf;->iterations:I

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x63698c83

    return v0
.end method
