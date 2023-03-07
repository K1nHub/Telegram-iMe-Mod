.class public Ldrinkless/org/ton/TonApi$AddLogMessage;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddLogMessage"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x5f36cfec


# instance fields
.field public text:Ljava/lang/String;

.field public verbosityLevel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3916
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "verbosityLevel",
            "text"
        }
    .end annotation

    .line 3927
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 3928
    iput p1, p0, Ldrinkless/org/ton/TonApi$AddLogMessage;->verbosityLevel:I

    .line 3929
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$AddLogMessage;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x5f36cfec

    return v0
.end method
