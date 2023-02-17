.class public final synthetic Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

.field public final synthetic f$10:Z

.field public final synthetic f$11:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$12:Ljava/lang/Runnable;

.field public final synthetic f$2:Lorg/telegram/messenger/MessagesController$DialogFilter;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/util/ArrayList;

.field public final synthetic f$6:Ljava/util/ArrayList;

.field public final synthetic f$7:Z

.field public final synthetic f$8:Z

.field public final synthetic f$9:Z


# direct methods
.method public synthetic constructor <init>(ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda12;->f$0:Z

    iput-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda12;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p3, p0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda12;->f$2:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iput p4, p0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda12;->f$3:I

    iput-object p5, p0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda12;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda12;->f$5:Ljava/util/ArrayList;

    iput-object p7, p0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda12;->f$6:Ljava/util/ArrayList;

    iput-boolean p8, p0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda12;->f$7:Z

    iput-boolean p9, p0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda12;->f$8:Z

    iput-boolean p10, p0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda12;->f$9:Z

    iput-boolean p11, p0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda12;->f$10:Z

    iput-object p12, p0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda12;->f$11:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p13, p0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda12;->f$12:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda12;->f$0:Z

    iget-object v2, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda12;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v3, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda12;->f$2:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v4, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda12;->f$3:I

    iget-object v5, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda12;->f$4:Ljava/lang/String;

    iget-object v6, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda12;->f$5:Ljava/util/ArrayList;

    iget-object v7, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda12;->f$6:Ljava/util/ArrayList;

    iget-boolean v8, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda12;->f$7:Z

    iget-boolean v9, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda12;->f$8:Z

    iget-boolean v10, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda12;->f$9:Z

    iget-boolean v11, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda12;->f$10:Z

    iget-object v12, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda12;->f$11:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v13, v0, Lorg/telegram/ui/FilterCreateActivity$$ExternalSyntheticLambda12;->f$12:Ljava/lang/Runnable;

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-static/range {v1 .. v15}, Lorg/telegram/ui/FilterCreateActivity;->$r8$lambda$TVER-7hr2J8euNlr0m6HcTSn82M(ZLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
