.class public Ldrinkless/org/ton/TonApi$SmcGetCode;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmcGetCode"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x7e19e468


# instance fields
.field public id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6222
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

    .line 6225
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 6226
    iput-wide p1, p0, Ldrinkless/org/ton/TonApi$SmcGetCode;->id:J

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x7e19e468

    return v0
.end method
