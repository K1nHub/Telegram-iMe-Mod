.class public Ldrinkless/org/ton/TonApi$TvmStackEntryList;
.super Ldrinkless/org/ton/TonApi$TvmStackEntry;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TvmStackEntryList"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x46bbd275


# instance fields
.field public list:Ldrinkless/org/ton/TonApi$TvmList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3823
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$TvmStackEntry;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$TvmList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .line 3826
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$TvmStackEntry;-><init>()V

    .line 3827
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$TvmStackEntryList;->list:Ldrinkless/org/ton/TonApi$TvmList;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x46bbd275

    return v0
.end method
