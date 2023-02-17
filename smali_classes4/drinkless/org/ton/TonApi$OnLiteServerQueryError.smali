.class public Ldrinkless/org/ton/TonApi$OnLiteServerQueryError;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnLiteServerQueryError"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x2860b94d


# instance fields
.field public error:Ldrinkless/org/ton/TonApi$Error;

.field public id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5339
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(JLdrinkless/org/ton/TonApi$Error;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "error"
        }
    .end annotation

    .line 5342
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 5343
    iput-wide p1, p0, Ldrinkless/org/ton/TonApi$OnLiteServerQueryError;->id:J

    .line 5344
    iput-object p3, p0, Ldrinkless/org/ton/TonApi$OnLiteServerQueryError;->error:Ldrinkless/org/ton/TonApi$Error;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x2860b94d    # -3.50251999E14f

    return v0
.end method
