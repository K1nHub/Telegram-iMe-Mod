.class public Ldrinkless/org/ton/TonApi$RawAccountState;
.super Ldrinkless/org/ton/TonApi$AccountState;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawAccountState"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x1fb469c6


# instance fields
.field public code:[B

.field public data:[B

.field public frozenHash:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$AccountState;-><init>()V

    return-void
.end method

.method public constructor <init>([B[B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "frozenHash"
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$AccountState;-><init>()V

    .line 134
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$RawAccountState;->code:[B

    .line 135
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$RawAccountState;->data:[B

    .line 136
    iput-object p3, p0, Ldrinkless/org/ton/TonApi$RawAccountState;->frozenHash:[B

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x1fb469c6

    return v0
.end method
