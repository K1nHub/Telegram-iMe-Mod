.class public Ldrinkless/org/ton/TonApi$PchanUnpackPromise;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PchanUnpackPromise"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x4a831b2d


# instance fields
.field public data:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5582
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 5585
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 5586
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$PchanUnpackPromise;->data:[B

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x4a831b2d

    return v0
.end method
