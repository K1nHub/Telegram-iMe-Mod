.class public Ldrinkless/org/ton/TonApi$TvmStackEntrySlice;
.super Ldrinkless/org/ton/TonApi$TvmStackEntry;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TvmStackEntrySlice"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x532d6b25


# instance fields
.field public slice:Ldrinkless/org/ton/TonApi$TvmSlice;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3715
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$TvmStackEntry;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$TvmSlice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "slice"
        }
    .end annotation

    .line 3718
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$TvmStackEntry;-><init>()V

    .line 3719
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$TvmStackEntrySlice;->slice:Ldrinkless/org/ton/TonApi$TvmSlice;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x532d6b25

    return v0
.end method
