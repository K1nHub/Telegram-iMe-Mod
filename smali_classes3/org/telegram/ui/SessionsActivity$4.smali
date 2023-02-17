.class Lorg/telegram/ui/SessionsActivity$4;
.super Ljava/lang/Object;
.source "SessionsActivity.java"

# interfaces
.implements Lorg/telegram/ui/SessionBottomSheet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SessionsActivity;->showSessionBottomSheet(Lorg/telegram/tgnet/TLRPC$TL_authorization;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SessionsActivity;


# direct methods
.method public static synthetic $r8$lambda$Dv8IsHk4vfKX-hAuar0K_BKYUrQ(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/SessionsActivity$4;->lambda$onSessionTerminated$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dGIvAhXJGxC0kzf7a80JZlfBLho()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/SessionsActivity$4;->lambda$onSessionTerminated$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/SessionsActivity;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lorg/telegram/ui/SessionsActivity$4;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onSessionTerminated$0()V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$onSessionTerminated$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 543
    sget-object p0, Lorg/telegram/ui/SessionsActivity$4$$ExternalSyntheticLambda0;->INSTANCE:Lorg/telegram/ui/SessionsActivity$4$$ExternalSyntheticLambda0;

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onSessionTerminated(Lorg/telegram/tgnet/TLRPC$TL_authorization;)V
    .locals 3

    .line 535
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$4;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$100(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 536
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$4;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$200(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 537
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$4;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$300(Lorg/telegram/ui/SessionsActivity;)V

    .line 538
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$4;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$400(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/ui/SessionsActivity$ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$4;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$400(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/ui/SessionsActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 541
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_resetAuthorization;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_resetAuthorization;-><init>()V

    .line 542
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;->hash:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_resetAuthorization;->hash:J

    .line 543
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity$4;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p1}, Lorg/telegram/ui/SessionsActivity;->access$500(Lorg/telegram/ui/SessionsActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    sget-object v1, Lorg/telegram/ui/SessionsActivity$4$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/ui/SessionsActivity$4$$ExternalSyntheticLambda1;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method
