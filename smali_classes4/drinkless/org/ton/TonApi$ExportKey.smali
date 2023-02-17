.class public Ldrinkless/org/ton/TonApi$ExportKey;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExportKey"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x60b3268d


# instance fields
.field public inputKey:Ldrinkless/org/ton/TonApi$InputKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4564
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$InputKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputKey"
        }
    .end annotation

    .line 4567
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 4568
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$ExportKey;->inputKey:Ldrinkless/org/ton/TonApi$InputKey;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x60b3268d

    return v0
.end method
