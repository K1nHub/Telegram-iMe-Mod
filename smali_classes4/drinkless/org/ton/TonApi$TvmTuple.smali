.class public Ldrinkless/org/ton/TonApi$TvmTuple;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TvmTuple"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x514c459d


# instance fields
.field public elements:[Ldrinkless/org/ton/TonApi$TvmStackEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3875
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Ldrinkless/org/ton/TonApi$TvmStackEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .line 3878
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 3879
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$TvmTuple;->elements:[Ldrinkless/org/ton/TonApi$TvmStackEntry;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x514c459d

    return v0
.end method
