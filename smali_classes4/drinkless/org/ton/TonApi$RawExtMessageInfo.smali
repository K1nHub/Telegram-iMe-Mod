.class public Ldrinkless/org/ton/TonApi$RawExtMessageInfo;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawExtMessageInfo"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x34197fae


# instance fields
.field public hash:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3088
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hash"
        }
    .end annotation

    .line 3091
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 3092
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$RawExtMessageInfo;->hash:[B

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x34197fae

    return v0
.end method
