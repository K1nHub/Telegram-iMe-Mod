.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda142;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:[I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/Runnable;

.field public final synthetic f$4:Lorg/telegram/tgnet/TLRPC$TL_account_getAuthorizationForm;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;[IILjava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_account_getAuthorizationForm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda142;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda142;->f$1:[I

    iput p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda142;->f$2:I

    iput-object p4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda142;->f$3:Ljava/lang/Runnable;

    iput-object p5, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda142;->f$4:Lorg/telegram/tgnet/TLRPC$TL_account_getAuthorizationForm;

    iput-object p6, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda142;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda142;->f$6:Ljava/lang/String;

    iput-object p8, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda142;->f$7:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda142;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda142;->f$1:[I

    iget v2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda142;->f$2:I

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda142;->f$3:Ljava/lang/Runnable;

    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda142;->f$4:Lorg/telegram/tgnet/TLRPC$TL_account_getAuthorizationForm;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda142;->f$5:Ljava/lang/String;

    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda142;->f$6:Ljava/lang/String;

    iget-object v7, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda142;->f$7:Ljava/lang/String;

    move-object v8, p1

    move-object v9, p2

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$Y1yT6Tf0Yy9eaL1qWN-0Euf9ato(Lorg/telegram/ui/LaunchActivity;[IILjava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_account_getAuthorizationForm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
