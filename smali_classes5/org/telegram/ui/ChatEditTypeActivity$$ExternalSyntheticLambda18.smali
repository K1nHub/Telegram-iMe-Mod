.class public final synthetic Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatEditTypeActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatEditTypeActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda18;->f$0:Lorg/telegram/ui/ChatEditTypeActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda18;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda18;->f$2:Lorg/telegram/tgnet/TLObject;

    iput-boolean p4, p0, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda18;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda18;->f$0:Lorg/telegram/ui/ChatEditTypeActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda18;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, p0, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda18;->f$2:Lorg/telegram/tgnet/TLObject;

    iget-boolean v3, p0, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda18;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/ChatEditTypeActivity;->$r8$lambda$OW_oj6Ojb76lxOuxFA7Q-AQ9vds(Lorg/telegram/ui/ChatEditTypeActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V

    return-void
.end method
