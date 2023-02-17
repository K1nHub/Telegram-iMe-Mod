.class public Ldrinkless/org/ton/TonApi$TvmStackEntryTuple;
.super Ldrinkless/org/ton/TonApi$TvmStackEntry;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TvmStackEntryTuple"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x9619c24


# instance fields
.field public tuple:Ldrinkless/org/ton/TonApi$TvmTuple;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3796
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$TvmStackEntry;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$TvmTuple;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tuple"
        }
    .end annotation

    .line 3799
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$TvmStackEntry;-><init>()V

    .line 3800
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$TvmStackEntryTuple;->tuple:Ldrinkless/org/ton/TonApi$TvmTuple;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x9619c24

    return v0
.end method
