.class Ldrinkless/org/ton/Client$Handler;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Handler"
.end annotation


# instance fields
.field final exceptionHandler:Ldrinkless/org/ton/Client$ExceptionHandler;

.field final resultHandler:Ldrinkless/org/ton/Client$ResultHandler;


# direct methods
.method constructor <init>(Ldrinkless/org/ton/Client$ResultHandler;Ldrinkless/org/ton/Client$ExceptionHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resultHandler",
            "exceptionHandler"
        }
    .end annotation

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p1, p0, Ldrinkless/org/ton/Client$Handler;->resultHandler:Ldrinkless/org/ton/Client$ResultHandler;

    .line 209
    iput-object p2, p0, Ldrinkless/org/ton/Client$Handler;->exceptionHandler:Ldrinkless/org/ton/Client$ExceptionHandler;

    return-void
.end method
