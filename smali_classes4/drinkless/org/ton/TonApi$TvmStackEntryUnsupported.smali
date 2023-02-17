.class public Ldrinkless/org/ton/TonApi$TvmStackEntryUnsupported;
.super Ldrinkless/org/ton/TonApi$TvmStackEntry;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TvmStackEntryUnsupported"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x169541f2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3849
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$TvmStackEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x169541f2

    return v0
.end method
