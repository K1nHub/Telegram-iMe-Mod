.class public final synthetic Lorg/telegram/ui/Components/voip/VoIPHelper$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/SharedPreferences;

.field public final synthetic f$1:Lorg/telegram/ui/Cells/TextCheckCell;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;Lorg/telegram/ui/Cells/TextCheckCell;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$$ExternalSyntheticLambda11;->f$0:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/ui/Cells/TextCheckCell;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$$ExternalSyntheticLambda11;->f$0:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/voip/VoIPHelper;->$r8$lambda$kTgNORDGoA575jqMJiU6BBAbtnw(Landroid/content/SharedPreferences;Lorg/telegram/ui/Cells/TextCheckCell;Landroid/view/View;)V

    return-void
.end method
