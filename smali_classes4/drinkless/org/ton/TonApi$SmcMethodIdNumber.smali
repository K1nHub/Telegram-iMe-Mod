.class public Ldrinkless/org/ton/TonApi$SmcMethodIdNumber;
.super Ldrinkless/org/ton/TonApi$SmcMethodId;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmcMethodIdNumber"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x5bdc4604


# instance fields
.field public number:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3466
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$SmcMethodId;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    .line 3469
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$SmcMethodId;-><init>()V

    .line 3470
    iput p1, p0, Ldrinkless/org/ton/TonApi$SmcMethodIdNumber;->number:I

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x5bdc4604

    return v0
.end method
