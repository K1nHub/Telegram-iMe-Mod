.class public Ldrinkless/org/ton/TonApi$SmcGetLibraries;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmcGetLibraries"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x3089ee15


# instance fields
.field public libraryList:[[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6290
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>([[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "libraryList"
        }
    .end annotation

    .line 6293
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 6294
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$SmcGetLibraries;->libraryList:[[B

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x3089ee15

    return v0
.end method
