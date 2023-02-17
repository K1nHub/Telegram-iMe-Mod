.class public final synthetic Lorg/telegram/ui/ChatUsersActivity$9$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;ILandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$9$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    iput p2, p0, Lorg/telegram/ui/ChatUsersActivity$9$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/ChatUsersActivity$9$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$9$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity$9$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$9$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ChatUsersActivity$9;->$r8$lambda$WL4wuEPzBFL1t2yjSdHq8N7-QNs(Ljava/util/ArrayList;ILandroid/content/Context;)V

    return-void
.end method
