.class Lorg/telegram/messenger/TopicsController$2;
.super Ljava/lang/Object;
.source "TopicsController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/TopicsController;->toggleCloseTopic(JIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/TopicsController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/TopicsController;)V
    .locals 0

    .line 550
    iput-object p1, p0, Lorg/telegram/messenger/TopicsController$2;->this$0:Lorg/telegram/messenger/TopicsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method
