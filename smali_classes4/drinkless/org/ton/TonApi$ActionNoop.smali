.class public Ldrinkless/org/ton/TonApi$ActionNoop;
.super Ldrinkless/org/ton/TonApi$Action;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionNoop"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x43b3ac9b


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 364
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Action;-><init>()V

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x43b3ac9b

    return v0
.end method
