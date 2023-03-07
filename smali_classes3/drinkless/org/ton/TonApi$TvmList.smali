.class public Ldrinkless/org/ton/TonApi$TvmList;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TvmList"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x4bb78d08


# instance fields
.field public elements:[Ldrinkless/org/ton/TonApi$TvmStackEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3625
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

    .line 3628
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 3629
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$TvmList;->elements:[Ldrinkless/org/ton/TonApi$TvmStackEntry;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x4bb78d08    # 2.4058384E7f

    return v0
.end method
