.class public final synthetic Lorg/telegram/ui/FilterCreateActivity$LinkCell$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/FilterCreateActivity$LinkCell;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/FilterCreateActivity$LinkCell;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$LinkCell$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/FilterCreateActivity$LinkCell;

    iput-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$LinkCell$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/FilterCreateActivity$LinkCell$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$LinkCell$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/FilterCreateActivity$LinkCell;

    iget-object v1, p0, Lorg/telegram/ui/FilterCreateActivity$LinkCell$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, p0, Lorg/telegram/ui/FilterCreateActivity$LinkCell$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/FilterCreateActivity$LinkCell;->$r8$lambda$VCh8Fs5U6a6DSFY11VKF8nAU3pQ(Lorg/telegram/ui/FilterCreateActivity$LinkCell;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/Runnable;)V

    return-void
.end method
