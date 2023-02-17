.class public Ldrinkless/org/ton/TonApi$RwalletLimit;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RwalletLimit"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x48def67e


# instance fields
.field public seconds:I

.field public value:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3343
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seconds",
            "value"
        }
    .end annotation

    .line 3346
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 3347
    iput p1, p0, Ldrinkless/org/ton/TonApi$RwalletLimit;->seconds:I

    .line 3348
    iput-wide p2, p0, Ldrinkless/org/ton/TonApi$RwalletLimit;->value:J

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x48def67e

    return v0
.end method
