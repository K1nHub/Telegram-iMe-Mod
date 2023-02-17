.class public Ldrinkless/org/ton/TonApi$PchanActionInit;
.super Ldrinkless/org/ton/TonApi$PchanAction;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PchanActionInit"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x1a2bf68a


# instance fields
.field public incA:J

.field public incB:J

.field public minA:J

.field public minB:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2744
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$PchanAction;-><init>()V

    return-void
.end method

.method public constructor <init>(JJJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "incA",
            "incB",
            "minA",
            "minB"
        }
    .end annotation

    .line 2747
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$PchanAction;-><init>()V

    .line 2748
    iput-wide p1, p0, Ldrinkless/org/ton/TonApi$PchanActionInit;->incA:J

    .line 2749
    iput-wide p3, p0, Ldrinkless/org/ton/TonApi$PchanActionInit;->incB:J

    .line 2750
    iput-wide p5, p0, Ldrinkless/org/ton/TonApi$PchanActionInit;->minA:J

    .line 2751
    iput-wide p7, p0, Ldrinkless/org/ton/TonApi$PchanActionInit;->minB:J

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x1a2bf68a

    return v0
.end method
