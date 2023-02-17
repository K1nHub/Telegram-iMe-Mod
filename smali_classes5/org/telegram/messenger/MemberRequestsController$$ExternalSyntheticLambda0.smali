.class public final synthetic Lorg/telegram/messenger/MemberRequestsController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MemberRequestsController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$3:J

.field public final synthetic f$4:Lorg/telegram/tgnet/RequestDelegate;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MemberRequestsController;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;JLorg/telegram/tgnet/RequestDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MemberRequestsController$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/MemberRequestsController;

    iput-object p2, p0, Lorg/telegram/messenger/MemberRequestsController$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/messenger/MemberRequestsController$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/tgnet/TLObject;

    iput-wide p4, p0, Lorg/telegram/messenger/MemberRequestsController$$ExternalSyntheticLambda0;->f$3:J

    iput-object p6, p0, Lorg/telegram/messenger/MemberRequestsController$$ExternalSyntheticLambda0;->f$4:Lorg/telegram/tgnet/RequestDelegate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/MemberRequestsController$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/messenger/MemberRequestsController;

    iget-object v1, p0, Lorg/telegram/messenger/MemberRequestsController$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, p0, Lorg/telegram/messenger/MemberRequestsController$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/tgnet/TLObject;

    iget-wide v3, p0, Lorg/telegram/messenger/MemberRequestsController$$ExternalSyntheticLambda0;->f$3:J

    iget-object v5, p0, Lorg/telegram/messenger/MemberRequestsController$$ExternalSyntheticLambda0;->f$4:Lorg/telegram/tgnet/RequestDelegate;

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/MemberRequestsController;->$r8$lambda$89gNYLDycfEa6xbgKwlAmlF5DKg(Lorg/telegram/messenger/MemberRequestsController;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;JLorg/telegram/tgnet/RequestDelegate;)V

    return-void
.end method
