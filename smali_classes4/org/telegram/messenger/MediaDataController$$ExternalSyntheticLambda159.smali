.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda159;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLRPC$Document;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda159;->f$0:Lorg/telegram/tgnet/TLRPC$Document;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda159;->f$0:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$Sq3pCQwCH20X1nHtYhkoWS-qEjE(Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method
