.class public final synthetic Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/ConnectionsManager;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$10:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/telegram/tgnet/RequestDelegate;

.field public final synthetic f$4:Lorg/telegram/tgnet/RequestDelegateTimestamp;

.field public final synthetic f$5:Lorg/telegram/tgnet/QuickAckDelegate;

.field public final synthetic f$6:Lorg/telegram/tgnet/WriteToSocketDelegate;

.field public final synthetic f$7:I

.field public final synthetic f$8:I

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/ConnectionsManager;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/tgnet/ConnectionsManager;

    iput-object p2, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda9;->f$1:Lorg/telegram/tgnet/TLObject;

    iput p3, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda9;->f$2:I

    iput-object p4, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda9;->f$3:Lorg/telegram/tgnet/RequestDelegate;

    iput-object p5, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda9;->f$4:Lorg/telegram/tgnet/RequestDelegateTimestamp;

    iput-object p6, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda9;->f$5:Lorg/telegram/tgnet/QuickAckDelegate;

    iput-object p7, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda9;->f$6:Lorg/telegram/tgnet/WriteToSocketDelegate;

    iput p8, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda9;->f$7:I

    iput p9, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda9;->f$8:I

    iput p10, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda9;->f$9:I

    iput-boolean p11, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda9;->f$10:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/tgnet/ConnectionsManager;

    iget-object v1, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda9;->f$1:Lorg/telegram/tgnet/TLObject;

    iget v2, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda9;->f$2:I

    iget-object v3, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda9;->f$3:Lorg/telegram/tgnet/RequestDelegate;

    iget-object v4, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda9;->f$4:Lorg/telegram/tgnet/RequestDelegateTimestamp;

    iget-object v5, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda9;->f$5:Lorg/telegram/tgnet/QuickAckDelegate;

    iget-object v6, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda9;->f$6:Lorg/telegram/tgnet/WriteToSocketDelegate;

    iget v7, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda9;->f$7:I

    iget v8, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda9;->f$8:I

    iget v9, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda9;->f$9:I

    iget-boolean v10, p0, Lorg/telegram/tgnet/ConnectionsManager$$ExternalSyntheticLambda9;->f$10:Z

    invoke-static/range {v0 .. v10}, Lorg/telegram/tgnet/ConnectionsManager;->$r8$lambda$6d2G5WILAZVBjearmA2QIFbPDgE(Lorg/telegram/tgnet/ConnectionsManager;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/RequestDelegateTimestamp;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)V

    return-void
.end method
