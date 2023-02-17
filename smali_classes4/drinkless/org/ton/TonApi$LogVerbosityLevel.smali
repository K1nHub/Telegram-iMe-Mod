.class public Ldrinkless/org/ton/TonApi$LogVerbosityLevel;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogVerbosityLevel"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x676443ea


# instance fields
.field public verbosityLevel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1372
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "verbosityLevel"
        }
    .end annotation

    .line 1380
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 1381
    iput p1, p0, Ldrinkless/org/ton/TonApi$LogVerbosityLevel;->verbosityLevel:I

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x676443ea

    return v0
.end method
