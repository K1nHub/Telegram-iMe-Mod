.class public Ldrinkless/org/ton/TonApi$RawSendMessage;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawSendMessage"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x6aa87f20


# instance fields
.field public body:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5982
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "body"
        }
    .end annotation

    .line 5985
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 5986
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$RawSendMessage;->body:[B

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x6aa87f20

    return v0
.end method
