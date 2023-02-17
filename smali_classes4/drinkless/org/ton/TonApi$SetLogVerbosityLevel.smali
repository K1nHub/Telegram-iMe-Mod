.class public Ldrinkless/org/ton/TonApi$SetLogVerbosityLevel;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetLogVerbosityLevel"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x1215f82e


# instance fields
.field public newVerbosityLevel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6181
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newVerbosityLevel"
        }
    .end annotation

    .line 6191
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 6192
    iput p1, p0, Ldrinkless/org/ton/TonApi$SetLogVerbosityLevel;->newVerbosityLevel:I

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x1215f82e

    return v0
.end method
