.class public Ldrinkless/org/ton/TonApi$SmcGetState;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmcGetState"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0xcc75615


# instance fields
.field public id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6324
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 6327
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 6328
    iput-wide p1, p0, Ldrinkless/org/ton/TonApi$SmcGetState;->id:J

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0xcc75615

    return v0
.end method
