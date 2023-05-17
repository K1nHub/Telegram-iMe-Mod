.class public final synthetic Lorg/telegram/ui/ProfileActivity$7$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ProfileActivity$7;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$2:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ProfileActivity$7;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$7$$ExternalSyntheticLambda18;->f$0:Lorg/telegram/ui/ProfileActivity$7;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$7$$ExternalSyntheticLambda18;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    iput-object p3, p0, Lorg/telegram/ui/ProfileActivity$7$$ExternalSyntheticLambda18;->f$2:Lorg/telegram/ui/DialogsActivity;

    return-void
.end method


# virtual methods
.method public final didSelectDialogs(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$7$$ExternalSyntheticLambda18;->f$0:Lorg/telegram/ui/ProfileActivity$7;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$7$$ExternalSyntheticLambda18;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$7$$ExternalSyntheticLambda18;->f$2:Lorg/telegram/ui/DialogsActivity;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/ProfileActivity$7;->$r8$lambda$IsE9ipX7U8IeTpukFSPhJdm-fq4(Lorg/telegram/ui/ProfileActivity$7;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z

    move-result p1

    return p1
.end method
