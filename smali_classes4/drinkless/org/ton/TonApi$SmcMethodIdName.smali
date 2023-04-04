.class public Ldrinkless/org/ton/TonApi$SmcMethodIdName;
.super Ldrinkless/org/ton/TonApi$SmcMethodId;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmcMethodIdName"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0xed8006c


# instance fields
.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3493
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$SmcMethodId;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 3496
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$SmcMethodId;-><init>()V

    .line 3497
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$SmcMethodIdName;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0xed8006c

    return v0
.end method
