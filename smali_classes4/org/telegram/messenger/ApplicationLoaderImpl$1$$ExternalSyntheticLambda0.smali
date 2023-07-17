.class public final synthetic Lorg/telegram/messenger/ApplicationLoaderImpl$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iMe/fork/utils/Callbacks$Callback1;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ApplicationLoaderImpl$1$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iput-object p2, p0, Lorg/telegram/messenger/ApplicationLoaderImpl$1$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/ApplicationLoaderImpl$1$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v1, p0, Lorg/telegram/messenger/ApplicationLoaderImpl$1$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/ApplicationLoaderImpl$1;->$r8$lambda$fQrw-DRfvLMYUlrPuDxco1a-d7I(Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method
