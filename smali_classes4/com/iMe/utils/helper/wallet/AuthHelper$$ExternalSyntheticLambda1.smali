.class public final synthetic Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iMe/fork/utils/Callbacks$Callback1;


# static fields
.field public static final synthetic INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda1;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {p1}, Lcom/iMe/utils/helper/wallet/AuthHelper;->$r8$lambda$sH8wwf2Y0OlmVrG6N6VKzFe49gg(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method
