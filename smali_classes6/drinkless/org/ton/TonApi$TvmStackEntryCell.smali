.class public Ldrinkless/org/ton/TonApi$TvmStackEntryCell;
.super Ldrinkless/org/ton/TonApi$TvmStackEntry;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TvmStackEntryCell"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x4db16f20


# instance fields
.field public cell:Ldrinkless/org/ton/TonApi$TvmCell;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3742
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$TvmStackEntry;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$TvmCell;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cell"
        }
    .end annotation

    .line 3745
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$TvmStackEntry;-><init>()V

    .line 3746
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$TvmStackEntryCell;->cell:Ldrinkless/org/ton/TonApi$TvmCell;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x4db16f20    # 3.7210624E8f

    return v0
.end method
