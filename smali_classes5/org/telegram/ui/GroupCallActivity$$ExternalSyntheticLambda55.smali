.class public final synthetic Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda55;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/GroupCallActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/GroupCallActivity;Lorg/telegram/tgnet/TLRPC$ChatFull;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda55;->f$0:Lorg/telegram/ui/GroupCallActivity;

    iput-object p2, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda55;->f$1:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iput-boolean p3, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda55;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda55;->f$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda55;->f$1:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v2, p0, Lorg/telegram/ui/GroupCallActivity$$ExternalSyntheticLambda55;->f$2:Z

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/GroupCallActivity;->$r8$lambda$8oPNFcUomjon7VOIFUCPV2JHw94(Lorg/telegram/ui/GroupCallActivity;Lorg/telegram/tgnet/TLRPC$ChatFull;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
