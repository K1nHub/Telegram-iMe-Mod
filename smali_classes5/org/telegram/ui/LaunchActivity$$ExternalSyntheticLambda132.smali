.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda132;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda132;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda132;->f$1:Z

    iput p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda132;->f$2:I

    iput-object p4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda132;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final didSelectDialogs(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda132;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget-boolean v2, v0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda132;->f$1:Z

    iget v3, v0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda132;->f$2:I

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda132;->f$3:Ljava/lang/String;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$YxmK7qNjy11SD5zTjlGGpdQWC0I(Lorg/telegram/ui/LaunchActivity;ZILjava/lang/String;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z

    move-result v1

    return v1
.end method
