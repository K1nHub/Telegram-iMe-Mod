.class public final synthetic Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PassportActivity;

.field public final synthetic f$1:Lorg/telegram/messenger/SecureDocument;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/telegram/ui/PassportActivity$SecureDocumentCell;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PassportActivity;Lorg/telegram/messenger/SecureDocument;ILorg/telegram/ui/PassportActivity$SecureDocumentCell;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/PassportActivity;

    iput-object p2, p0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda6;->f$1:Lorg/telegram/messenger/SecureDocument;

    iput p3, p0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda6;->f$2:I

    iput-object p4, p0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda6;->f$3:Lorg/telegram/ui/PassportActivity$SecureDocumentCell;

    iput-object p5, p0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda6;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/PassportActivity;

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda6;->f$1:Lorg/telegram/messenger/SecureDocument;

    iget v2, p0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda6;->f$2:I

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda6;->f$3:Lorg/telegram/ui/PassportActivity$SecureDocumentCell;

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda6;->f$4:Ljava/lang/String;

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/PassportActivity;->$r8$lambda$RAyKagr0nluZXQnbHRsza12dais(Lorg/telegram/ui/PassportActivity;Lorg/telegram/messenger/SecureDocument;ILorg/telegram/ui/PassportActivity$SecureDocumentCell;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
