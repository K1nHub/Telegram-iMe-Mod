.class public final synthetic Lcom/iMe/ui/adapter/provider/TwitterInviteProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iMe/fork/utils/Callbacks$Callback1;


# static fields
.field public static final synthetic INSTANCE:Lcom/iMe/ui/adapter/provider/TwitterInviteProvider$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider$$ExternalSyntheticLambda0;->INSTANCE:Lcom/iMe/ui/adapter/provider/TwitterInviteProvider$$ExternalSyntheticLambda0;

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

    check-cast p1, Lcom/iMe/model/twitter/TwitterInviteItem;

    invoke-static {p1}, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;->$r8$lambda$WC8zFu6nj3xHCKjwamimaTANUdg(Lcom/iMe/model/twitter/TwitterInviteItem;)V

    return-void
.end method
