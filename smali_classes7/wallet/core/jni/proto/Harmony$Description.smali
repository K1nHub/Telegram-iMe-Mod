.class public final Lwallet/core/jni/proto/Harmony$Description;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Harmony.java"

# interfaces
.implements Lwallet/core/jni/proto/Harmony$DescriptionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Harmony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Description"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Harmony$Description$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Harmony$Description;",
        "Lwallet/core/jni/proto/Harmony$Description$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Harmony$DescriptionOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Description;

.field public static final DETAILS_FIELD_NUMBER:I = 0x5

.field public static final IDENTITY_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Harmony$Description;",
            ">;"
        }
    .end annotation
.end field

.field public static final SECURITY_CONTACT_FIELD_NUMBER:I = 0x4

.field public static final WEBSITE_FIELD_NUMBER:I = 0x3


# instance fields
.field private details_:Ljava/lang/String;

.field private identity_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private securityContact_:Ljava/lang/String;

.field private website_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3949
    new-instance v0, Lwallet/core/jni/proto/Harmony$Description;

    invoke-direct {v0}, Lwallet/core/jni/proto/Harmony$Description;-><init>()V

    .line 3952
    sput-object v0, Lwallet/core/jni/proto/Harmony$Description;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Description;

    .line 3953
    const-class v1, Lwallet/core/jni/proto/Harmony$Description;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3303
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 3304
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$Description;->name_:Ljava/lang/String;

    .line 3305
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$Description;->identity_:Ljava/lang/String;

    .line 3306
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$Description;->website_:Ljava/lang/String;

    .line 3307
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$Description;->securityContact_:Ljava/lang/String;

    .line 3308
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$Description;->details_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6600()Lwallet/core/jni/proto/Harmony$Description;
    .locals 1

    .line 3298
    sget-object v0, Lwallet/core/jni/proto/Harmony$Description;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Description;

    return-object v0
.end method

.method static synthetic access$6700(Lwallet/core/jni/proto/Harmony$Description;Ljava/lang/String;)V
    .locals 0

    .line 3298
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$Description;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6800(Lwallet/core/jni/proto/Harmony$Description;)V
    .locals 0

    .line 3298
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$Description;->clearName()V

    return-void
.end method

.method static synthetic access$6900(Lwallet/core/jni/proto/Harmony$Description;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3298
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$Description;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7000(Lwallet/core/jni/proto/Harmony$Description;Ljava/lang/String;)V
    .locals 0

    .line 3298
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$Description;->setIdentity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7100(Lwallet/core/jni/proto/Harmony$Description;)V
    .locals 0

    .line 3298
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$Description;->clearIdentity()V

    return-void
.end method

.method static synthetic access$7200(Lwallet/core/jni/proto/Harmony$Description;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3298
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$Description;->setIdentityBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7300(Lwallet/core/jni/proto/Harmony$Description;Ljava/lang/String;)V
    .locals 0

    .line 3298
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$Description;->setWebsite(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7400(Lwallet/core/jni/proto/Harmony$Description;)V
    .locals 0

    .line 3298
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$Description;->clearWebsite()V

    return-void
.end method

.method static synthetic access$7500(Lwallet/core/jni/proto/Harmony$Description;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3298
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$Description;->setWebsiteBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7600(Lwallet/core/jni/proto/Harmony$Description;Ljava/lang/String;)V
    .locals 0

    .line 3298
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$Description;->setSecurityContact(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7700(Lwallet/core/jni/proto/Harmony$Description;)V
    .locals 0

    .line 3298
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$Description;->clearSecurityContact()V

    return-void
.end method

.method static synthetic access$7800(Lwallet/core/jni/proto/Harmony$Description;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3298
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$Description;->setSecurityContactBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7900(Lwallet/core/jni/proto/Harmony$Description;Ljava/lang/String;)V
    .locals 0

    .line 3298
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$Description;->setDetails(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8000(Lwallet/core/jni/proto/Harmony$Description;)V
    .locals 0

    .line 3298
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$Description;->clearDetails()V

    return-void
.end method

.method static synthetic access$8100(Lwallet/core/jni/proto/Harmony$Description;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3298
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$Description;->setDetailsBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearDetails()V
    .locals 1

    .line 3532
    invoke-static {}, Lwallet/core/jni/proto/Harmony$Description;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$Description;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$Description;->getDetails()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$Description;->details_:Ljava/lang/String;

    return-void
.end method

.method private clearIdentity()V
    .locals 1

    .line 3391
    invoke-static {}, Lwallet/core/jni/proto/Harmony$Description;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$Description;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$Description;->getIdentity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$Description;->identity_:Ljava/lang/String;

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 3344
    invoke-static {}, Lwallet/core/jni/proto/Harmony$Description;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$Description;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$Description;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$Description;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearSecurityContact()V
    .locals 1

    .line 3485
    invoke-static {}, Lwallet/core/jni/proto/Harmony$Description;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$Description;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$Description;->getSecurityContact()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$Description;->securityContact_:Ljava/lang/String;

    return-void
.end method

.method private clearWebsite()V
    .locals 1

    .line 3438
    invoke-static {}, Lwallet/core/jni/proto/Harmony$Description;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$Description;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$Description;->getWebsite()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$Description;->website_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Harmony$Description;
    .locals 1

    .line 3958
    sget-object v0, Lwallet/core/jni/proto/Harmony$Description;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Description;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Harmony$Description$Builder;
    .locals 1

    .line 3620
    sget-object v0, Lwallet/core/jni/proto/Harmony$Description;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Description;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Harmony$Description$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Harmony$Description;)Lwallet/core/jni/proto/Harmony$Description$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 3623
    sget-object v0, Lwallet/core/jni/proto/Harmony$Description;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Description;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$Description$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Harmony$Description;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3597
    sget-object v0, Lwallet/core/jni/proto/Harmony$Description;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Description;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$Description;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$Description;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3603
    sget-object v0, Lwallet/core/jni/proto/Harmony$Description;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Description;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$Description;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$Description;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3561
    sget-object v0, Lwallet/core/jni/proto/Harmony$Description;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Description;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$Description;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$Description;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3568
    sget-object v0, Lwallet/core/jni/proto/Harmony$Description;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Description;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$Description;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Harmony$Description;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3608
    sget-object v0, Lwallet/core/jni/proto/Harmony$Description;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Description;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$Description;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$Description;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3615
    sget-object v0, Lwallet/core/jni/proto/Harmony$Description;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Description;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$Description;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Harmony$Description;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3585
    sget-object v0, Lwallet/core/jni/proto/Harmony$Description;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Description;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$Description;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$Description;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3592
    sget-object v0, Lwallet/core/jni/proto/Harmony$Description;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Description;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$Description;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Harmony$Description;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3548
    sget-object v0, Lwallet/core/jni/proto/Harmony$Description;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Description;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$Description;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$Description;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3555
    sget-object v0, Lwallet/core/jni/proto/Harmony$Description;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Description;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$Description;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Harmony$Description;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3573
    sget-object v0, Lwallet/core/jni/proto/Harmony$Description;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Description;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$Description;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$Description;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3580
    sget-object v0, Lwallet/core/jni/proto/Harmony$Description;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Description;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$Description;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Harmony$Description;",
            ">;"
        }
    .end annotation

    .line 3964
    sget-object v0, Lwallet/core/jni/proto/Harmony$Description;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Description;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDetails(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3523
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3525
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$Description;->details_:Ljava/lang/String;

    return-void
.end method

.method private setDetailsBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3540
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3541
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$Description;->details_:Ljava/lang/String;

    return-void
.end method

.method private setIdentity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3382
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3384
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$Description;->identity_:Ljava/lang/String;

    return-void
.end method

.method private setIdentityBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3399
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3400
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$Description;->identity_:Ljava/lang/String;

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3335
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3337
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$Description;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3352
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3353
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$Description;->name_:Ljava/lang/String;

    return-void
.end method

.method private setSecurityContact(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3476
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3478
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$Description;->securityContact_:Ljava/lang/String;

    return-void
.end method

.method private setSecurityContactBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3493
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3494
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$Description;->securityContact_:Ljava/lang/String;

    return-void
.end method

.method private setWebsite(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3429
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3431
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$Description;->website_:Ljava/lang/String;

    return-void
.end method

.method private setWebsiteBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3446
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3447
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$Description;->website_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0",
            "arg1"
        }
    .end annotation

    .line 3896
    sget-object p2, Lwallet/core/jni/proto/Harmony$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3942
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3936
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3921
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Harmony$Description;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3923
    const-class p2, Lwallet/core/jni/proto/Harmony$Description;

    monitor-enter p2

    .line 3924
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Harmony$Description;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3926
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Harmony$Description;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Description;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3929
    sput-object p1, Lwallet/core/jni/proto/Harmony$Description;->PARSER:Lcom/google/protobuf/Parser;

    .line 3931
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 3918
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Harmony$Description;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Description;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "name_"

    aput-object v0, p1, p3

    const-string p3, "identity_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "website_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "securityContact_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "details_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\u0208\u0005\u0208"

    .line 3914
    sget-object p3, Lwallet/core/jni/proto/Harmony$Description;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$Description;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3901
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Harmony$Description$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Harmony$Description$Builder;-><init>(Lwallet/core/jni/proto/Harmony$1;)V

    return-object p1

    .line 3898
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Harmony$Description;

    invoke-direct {p1}, Lwallet/core/jni/proto/Harmony$Description;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDetails()Ljava/lang/String;
    .locals 1

    .line 3506
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$Description;->details_:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailsBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3515
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$Description;->details_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .line 3365
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$Description;->identity_:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentityBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3374
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$Description;->identity_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 3318
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$Description;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3327
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$Description;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSecurityContact()Ljava/lang/String;
    .locals 1

    .line 3459
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$Description;->securityContact_:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityContactBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3468
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$Description;->securityContact_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getWebsite()Ljava/lang/String;
    .locals 1

    .line 3412
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$Description;->website_:Ljava/lang/String;

    return-object v0
.end method

.method public getWebsiteBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3421
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$Description;->website_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
