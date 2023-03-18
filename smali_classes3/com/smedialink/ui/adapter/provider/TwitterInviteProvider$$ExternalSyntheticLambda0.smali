.class public final synthetic Lcom/smedialink/ui/adapter/provider/TwitterInviteProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/fork/utils/Callbacks$Callback1;


# static fields
.field public static final synthetic INSTANCE:Lcom/smedialink/ui/adapter/provider/TwitterInviteProvider$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/ui/adapter/provider/TwitterInviteProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/smedialink/ui/adapter/provider/TwitterInviteProvider$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/smedialink/ui/adapter/provider/TwitterInviteProvider$$ExternalSyntheticLambda0;->INSTANCE:Lcom/smedialink/ui/adapter/provider/TwitterInviteProvider$$ExternalSyntheticLambda0;

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

    check-cast p1, Lcom/smedialink/model/twitter/TwitterInviteItem;

    invoke-static {p1}, Lcom/smedialink/ui/adapter/provider/TwitterInviteProvider;->$r8$lambda$OCcSwKSBa6Bj82b7Fov-jJsMJf4(Lcom/smedialink/model/twitter/TwitterInviteItem;)V

    return-void
.end method
