.class public Ldrinkless/org/ton/TonApi$TvmStackEntryNumber;
.super Ldrinkless/org/ton/TonApi$TvmStackEntry;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TvmStackEntryNumber"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x50fb3dbe


# instance fields
.field public number:Ldrinkless/org/ton/TonApi$TvmNumberDecimal;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3769
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$TvmStackEntry;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$TvmNumberDecimal;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    .line 3772
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$TvmStackEntry;-><init>()V

    .line 3773
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$TvmStackEntryNumber;->number:Ldrinkless/org/ton/TonApi$TvmNumberDecimal;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x50fb3dbe

    return v0
.end method
