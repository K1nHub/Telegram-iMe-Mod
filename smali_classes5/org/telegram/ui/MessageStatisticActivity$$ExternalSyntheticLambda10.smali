.class public final synthetic Lorg/telegram/ui/MessageStatisticActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/MessageStatisticActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_stats_loadAsyncGraph;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/MessageStatisticActivity;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_stats_loadAsyncGraph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/MessageStatisticActivity$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/MessageStatisticActivity;

    iput-object p2, p0, Lorg/telegram/ui/MessageStatisticActivity$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/MessageStatisticActivity$$ExternalSyntheticLambda10;->f$2:Lorg/telegram/tgnet/TLRPC$TL_stats_loadAsyncGraph;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/MessageStatisticActivity;

    iget-object v1, p0, Lorg/telegram/ui/MessageStatisticActivity$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/MessageStatisticActivity$$ExternalSyntheticLambda10;->f$2:Lorg/telegram/tgnet/TLRPC$TL_stats_loadAsyncGraph;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/MessageStatisticActivity;->$r8$lambda$-XJBihMczd-DXysUJr6YNXZhgI8(Lorg/telegram/ui/MessageStatisticActivity;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_stats_loadAsyncGraph;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
