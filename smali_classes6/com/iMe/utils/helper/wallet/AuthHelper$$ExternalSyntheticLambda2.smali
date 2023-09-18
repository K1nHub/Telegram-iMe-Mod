.class public final synthetic Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iMe/fork/utils/Callbacks$Callback2;


# static fields
.field public static final synthetic INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda2;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;

    invoke-static {p1, p2}, Lcom/iMe/utils/helper/wallet/AuthHelper;->$r8$lambda$eR3XeVJpfX_9TTorBuGNrtPbcaM(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;)V

    return-void
.end method
