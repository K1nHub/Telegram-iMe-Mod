.class public Ldrinkless/org/ton/TonApi$PchanStatePayout;
.super Ldrinkless/org/ton/TonApi$PchanState;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PchanStatePayout"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x279e1447


# instance fields
.field public A:J

.field public B:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2987
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$PchanState;-><init>()V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "A",
            "B"
        }
    .end annotation

    .line 2990
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$PchanState;-><init>()V

    .line 2991
    iput-wide p1, p0, Ldrinkless/org/ton/TonApi$PchanStatePayout;->A:J

    .line 2992
    iput-wide p3, p0, Ldrinkless/org/ton/TonApi$PchanStatePayout;->B:J

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x279e1447

    return v0
.end method
