.class public final synthetic Lcom/iMe/fork/utils/LoginTokenGenerator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$1:Lcom/iMe/fork/utils/LoginTokenGenerator;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_error;Lcom/iMe/fork/utils/LoginTokenGenerator;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/utils/LoginTokenGenerator$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p2, p0, Lcom/iMe/fork/utils/LoginTokenGenerator$$ExternalSyntheticLambda1;->f$1:Lcom/iMe/fork/utils/LoginTokenGenerator;

    iput-object p3, p0, Lcom/iMe/fork/utils/LoginTokenGenerator$$ExternalSyntheticLambda1;->f$2:Lorg/telegram/tgnet/TLObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/iMe/fork/utils/LoginTokenGenerator$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v1, p0, Lcom/iMe/fork/utils/LoginTokenGenerator$$ExternalSyntheticLambda1;->f$1:Lcom/iMe/fork/utils/LoginTokenGenerator;

    iget-object v2, p0, Lcom/iMe/fork/utils/LoginTokenGenerator$$ExternalSyntheticLambda1;->f$2:Lorg/telegram/tgnet/TLObject;

    invoke-static {v0, v1, v2}, Lcom/iMe/fork/utils/LoginTokenGenerator;->$r8$lambda$aLtxG1n4D2kdsbO75y_9MxkdGJ4(Lorg/telegram/tgnet/TLRPC$TL_error;Lcom/iMe/fork/utils/LoginTokenGenerator;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method
