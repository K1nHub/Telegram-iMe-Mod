.class public final synthetic Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Adapters/MentionsAdapter;[ZLorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda1;->f$1:[Z

    iput-object p3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda1;->f$2:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda1;->f$1:[Z

    iget-object v2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$$ExternalSyntheticLambda1;->f$2:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->$r8$lambda$ZOKo8wZ6czGtXVRDFzlUPA3U2KA(Lorg/telegram/ui/Adapters/MentionsAdapter;[ZLorg/telegram/tgnet/TLRPC$User;Landroid/content/DialogInterface;I)V

    return-void
.end method
