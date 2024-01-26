.class public final Lorg/ton/lite/api/exception/LiteServerException$Companion;
.super Ljava/lang/Object;
.source "LiteServerException.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/lite/api/exception/LiteServerException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/lite/api/exception/LiteServerException$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(ILjava/lang/String;)Lorg/ton/lite/api/exception/LiteServerException;
    .locals 1

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x26d

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 19
    new-instance v0, Lorg/ton/lite/api/exception/LiteServerUnknownException;

    invoke-direct {v0, p1, p2}, Lorg/ton/lite/api/exception/LiteServerUnknownException;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 12
    :pswitch_0
    new-instance v0, Lorg/ton/lite/api/exception/LiteServerCancelledException;

    invoke-direct {v0, p2}, Lorg/ton/lite/api/exception/LiteServerCancelledException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :pswitch_1
    new-instance v0, Lorg/ton/lite/api/exception/LiteServerTimeoutException;

    invoke-direct {v0, p2}, Lorg/ton/lite/api/exception/LiteServerTimeoutException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :pswitch_2
    new-instance v0, Lorg/ton/lite/api/exception/LiteServerNotReadyException;

    invoke-direct {v0, p2}, Lorg/ton/lite/api/exception/LiteServerNotReadyException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :pswitch_3
    new-instance v0, Lorg/ton/lite/api/exception/LiteServerWarningException;

    invoke-direct {v0, p2}, Lorg/ton/lite/api/exception/LiteServerWarningException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :pswitch_4
    new-instance v0, Lorg/ton/lite/api/exception/LiteServerErrorException;

    invoke-direct {v0, p2}, Lorg/ton/lite/api/exception/LiteServerErrorException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :pswitch_5
    new-instance v0, Lorg/ton/lite/api/exception/LiteServerFailureException;

    invoke-direct {v0, p2}, Lorg/ton/lite/api/exception/LiteServerFailureException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Lorg/ton/lite/api/exception/LiteServerProtoviolationException;

    invoke-direct {v0, p2}, Lorg/ton/lite/api/exception/LiteServerProtoviolationException;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x259
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x28b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
