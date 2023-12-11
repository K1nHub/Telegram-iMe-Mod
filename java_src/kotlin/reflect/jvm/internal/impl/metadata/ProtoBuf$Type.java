package kotlin.reflect.jvm.internal.impl.metadata;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractParser;
import kotlin.reflect.jvm.internal.impl.protobuf.ByteString;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedOutputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.Internal;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder;
import kotlin.reflect.jvm.internal.impl.protobuf.Parser;
/* loaded from: classes4.dex */
public final class ProtoBuf$Type extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$Type> {
    public static Parser<ProtoBuf$Type> PARSER = new AbstractParser<ProtoBuf$Type>() { // from class: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type.1
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
        public ProtoBuf$Type parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new ProtoBuf$Type(codedInputStream, extensionRegistryLite);
        }
    };
    private static final ProtoBuf$Type defaultInstance;
    private int abbreviatedTypeId_;
    private ProtoBuf$Type abbreviatedType_;
    private List<Argument> argument_;
    private int bitField0_;
    private int className_;
    private int flags_;
    private int flexibleTypeCapabilitiesId_;
    private int flexibleUpperBoundId_;
    private ProtoBuf$Type flexibleUpperBound_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private boolean nullable_;
    private int outerTypeId_;
    private ProtoBuf$Type outerType_;
    private int typeAliasName_;
    private int typeParameterName_;
    private int typeParameter_;
    private final ByteString unknownFields;

    private ProtoBuf$Type(GeneratedMessageLite.ExtendableBuilder<ProtoBuf$Type, ?> extendableBuilder) {
        super(extendableBuilder);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = extendableBuilder.getUnknownFields();
    }

    private ProtoBuf$Type(boolean z) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = ByteString.EMPTY;
    }

    public static ProtoBuf$Type getDefaultInstance() {
        return defaultInstance;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public ProtoBuf$Type getDefaultInstanceForType() {
        return defaultInstance;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ProtoBuf$Type(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        Builder builder;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        initFields();
        ByteString.Output newOutput = ByteString.newOutput();
        CodedOutputStream newInstance = CodedOutputStream.newInstance(newOutput, 1);
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            try {
                try {
                    int readTag = codedInputStream.readTag();
                    switch (readTag) {
                        case 0:
                            break;
                        case 8:
                            this.bitField0_ |= 4096;
                            this.flags_ = codedInputStream.readInt32();
                            continue;
                        case 18:
                            if (!(z2 & true)) {
                                this.argument_ = new ArrayList();
                                z2 |= true;
                            }
                            this.argument_.add(codedInputStream.readMessage(Argument.PARSER, extensionRegistryLite));
                            continue;
                        case 24:
                            this.bitField0_ |= 1;
                            this.nullable_ = codedInputStream.readBool();
                            continue;
                        case 32:
                            this.bitField0_ |= 2;
                            this.flexibleTypeCapabilitiesId_ = codedInputStream.readInt32();
                            continue;
                        case 42:
                            builder = (this.bitField0_ & 4) == 4 ? this.flexibleUpperBound_.toBuilder() : null;
                            ProtoBuf$Type protoBuf$Type = (ProtoBuf$Type) codedInputStream.readMessage(PARSER, extensionRegistryLite);
                            this.flexibleUpperBound_ = protoBuf$Type;
                            if (builder != null) {
                                builder.mergeFrom(protoBuf$Type);
                                this.flexibleUpperBound_ = builder.buildPartial();
                            }
                            this.bitField0_ |= 4;
                            continue;
                        case 48:
                            this.bitField0_ |= 16;
                            this.className_ = codedInputStream.readInt32();
                            continue;
                        case 56:
                            this.bitField0_ |= 32;
                            this.typeParameter_ = codedInputStream.readInt32();
                            continue;
                        case 64:
                            this.bitField0_ |= 8;
                            this.flexibleUpperBoundId_ = codedInputStream.readInt32();
                            continue;
                        case 72:
                            this.bitField0_ |= 64;
                            this.typeParameterName_ = codedInputStream.readInt32();
                            continue;
                        case 82:
                            builder = (this.bitField0_ & 256) == 256 ? this.outerType_.toBuilder() : null;
                            ProtoBuf$Type protoBuf$Type2 = (ProtoBuf$Type) codedInputStream.readMessage(PARSER, extensionRegistryLite);
                            this.outerType_ = protoBuf$Type2;
                            if (builder != null) {
                                builder.mergeFrom(protoBuf$Type2);
                                this.outerType_ = builder.buildPartial();
                            }
                            this.bitField0_ |= 256;
                            continue;
                        case 88:
                            this.bitField0_ |= 512;
                            this.outerTypeId_ = codedInputStream.readInt32();
                            continue;
                        case 96:
                            this.bitField0_ |= 128;
                            this.typeAliasName_ = codedInputStream.readInt32();
                            continue;
                        case 106:
                            builder = (this.bitField0_ & 1024) == 1024 ? this.abbreviatedType_.toBuilder() : null;
                            ProtoBuf$Type protoBuf$Type3 = (ProtoBuf$Type) codedInputStream.readMessage(PARSER, extensionRegistryLite);
                            this.abbreviatedType_ = protoBuf$Type3;
                            if (builder != null) {
                                builder.mergeFrom(protoBuf$Type3);
                                this.abbreviatedType_ = builder.buildPartial();
                            }
                            this.bitField0_ |= 1024;
                            continue;
                        case 112:
                            this.bitField0_ |= 2048;
                            this.abbreviatedTypeId_ = codedInputStream.readInt32();
                            continue;
                        default:
                            if (!parseUnknownField(codedInputStream, newInstance, extensionRegistryLite, readTag)) {
                                break;
                            } else {
                                continue;
                            }
                    }
                    z = true;
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                }
            } catch (Throwable th) {
                if (z2 & true) {
                    this.argument_ = Collections.unmodifiableList(this.argument_);
                }
                try {
                    newInstance.flush();
                } catch (IOException unused) {
                } catch (Throwable th2) {
                    this.unknownFields = newOutput.toByteString();
                    throw th2;
                }
                this.unknownFields = newOutput.toByteString();
                makeExtensionsImmutable();
                throw th;
            }
        }
        if (z2 & true) {
            this.argument_ = Collections.unmodifiableList(this.argument_);
        }
        try {
            newInstance.flush();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.unknownFields = newOutput.toByteString();
            throw th3;
        }
        this.unknownFields = newOutput.toByteString();
        makeExtensionsImmutable();
    }

    static {
        ProtoBuf$Type protoBuf$Type = new ProtoBuf$Type(true);
        defaultInstance = protoBuf$Type;
        protoBuf$Type.initFields();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public Parser<ProtoBuf$Type> getParserForType() {
        return PARSER;
    }

    /* loaded from: classes4.dex */
    public static final class Argument extends GeneratedMessageLite implements MessageLiteOrBuilder {
        public static Parser<Argument> PARSER = new AbstractParser<Argument>() { // from class: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf.Type.Argument.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
            public Argument parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Argument(codedInputStream, extensionRegistryLite);
            }
        };
        private static final Argument defaultInstance;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Projection projection_;
        private int typeId_;
        private ProtoBuf$Type type_;
        private final ByteString unknownFields;

        private Argument(GeneratedMessageLite.Builder builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = builder.getUnknownFields();
        }

        private Argument(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = ByteString.EMPTY;
        }

        public static Argument getDefaultInstance() {
            return defaultInstance;
        }

        private Argument(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            ByteString.Output newOutput = ByteString.newOutput();
            CodedOutputStream newInstance = CodedOutputStream.newInstance(newOutput, 1);
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            if (readTag != 0) {
                                if (readTag == 8) {
                                    int readEnum = codedInputStream.readEnum();
                                    Projection valueOf = Projection.valueOf(readEnum);
                                    if (valueOf == null) {
                                        newInstance.writeRawVarint32(readTag);
                                        newInstance.writeRawVarint32(readEnum);
                                    } else {
                                        this.bitField0_ |= 1;
                                        this.projection_ = valueOf;
                                    }
                                } else if (readTag == 18) {
                                    Builder builder = (this.bitField0_ & 2) == 2 ? this.type_.toBuilder() : null;
                                    ProtoBuf$Type protoBuf$Type = (ProtoBuf$Type) codedInputStream.readMessage(ProtoBuf$Type.PARSER, extensionRegistryLite);
                                    this.type_ = protoBuf$Type;
                                    if (builder != null) {
                                        builder.mergeFrom(protoBuf$Type);
                                        this.type_ = builder.buildPartial();
                                    }
                                    this.bitField0_ |= 2;
                                } else if (readTag != 24) {
                                    if (!parseUnknownField(codedInputStream, newInstance, extensionRegistryLite, readTag)) {
                                    }
                                } else {
                                    this.bitField0_ |= 4;
                                    this.typeId_ = codedInputStream.readInt32();
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.setUnfinishedMessage(this);
                        }
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    try {
                        newInstance.flush();
                    } catch (IOException unused) {
                    } catch (Throwable th2) {
                        this.unknownFields = newOutput.toByteString();
                        throw th2;
                    }
                    this.unknownFields = newOutput.toByteString();
                    makeExtensionsImmutable();
                    throw th;
                }
            }
            try {
                newInstance.flush();
            } catch (IOException unused2) {
            } catch (Throwable th3) {
                this.unknownFields = newOutput.toByteString();
                throw th3;
            }
            this.unknownFields = newOutput.toByteString();
            makeExtensionsImmutable();
        }

        static {
            Argument argument = new Argument(true);
            defaultInstance = argument;
            argument.initFields();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
        public Parser<Argument> getParserForType() {
            return PARSER;
        }

        /* loaded from: classes4.dex */
        public enum Projection implements Internal.EnumLite {
            IN(0, 0),
            OUT(1, 1),
            INV(2, 2),
            STAR(3, 3);
            
            private static Internal.EnumLiteMap<Projection> internalValueMap = new Internal.EnumLiteMap<Projection>() { // from class: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf.Type.Argument.Projection.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLiteMap
                public Projection findValueByNumber(int i) {
                    return Projection.valueOf(i);
                }
            };
            private final int value;

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite
            public final int getNumber() {
                return this.value;
            }

            public static Projection valueOf(int i) {
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i != 3) {
                                return null;
                            }
                            return STAR;
                        }
                        return INV;
                    }
                    return OUT;
                }
                return IN;
            }

            Projection(int i, int i2) {
                this.value = i2;
            }
        }

        public boolean hasProjection() {
            return (this.bitField0_ & 1) == 1;
        }

        public Projection getProjection() {
            return this.projection_;
        }

        public boolean hasType() {
            return (this.bitField0_ & 2) == 2;
        }

        public ProtoBuf$Type getType() {
            return this.type_;
        }

        public boolean hasTypeId() {
            return (this.bitField0_ & 4) == 4;
        }

        public int getTypeId() {
            return this.typeId_;
        }

        private void initFields() {
            this.projection_ = Projection.INV;
            this.type_ = ProtoBuf$Type.getDefaultInstance();
            this.typeId_ = 0;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b = this.memoizedIsInitialized;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            if (hasType() && !getType().isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.writeEnum(1, this.projection_.getNumber());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.writeMessage(2, this.type_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.writeInt32(3, this.typeId_);
            }
            codedOutputStream.writeRawBytes(this.unknownFields);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int computeEnumSize = (this.bitField0_ & 1) == 1 ? 0 + CodedOutputStream.computeEnumSize(1, this.projection_.getNumber()) : 0;
            if ((this.bitField0_ & 2) == 2) {
                computeEnumSize += CodedOutputStream.computeMessageSize(2, this.type_);
            }
            if ((this.bitField0_ & 4) == 4) {
                computeEnumSize += CodedOutputStream.computeInt32Size(3, this.typeId_);
            }
            int size = computeEnumSize + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        public static Builder newBuilder() {
            return Builder.access$5000();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
        public Builder newBuilderForType() {
            return newBuilder();
        }

        public static Builder newBuilder(Argument argument) {
            return newBuilder().mergeFrom(argument);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
        public Builder toBuilder() {
            return newBuilder(this);
        }

        /* loaded from: classes4.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Argument, Builder> implements MessageLiteOrBuilder {
            private int bitField0_;
            private int typeId_;
            private Projection projection_ = Projection.INV;
            private ProtoBuf$Type type_ = ProtoBuf$Type.getDefaultInstance();

            private void maybeForceBuilderInitialization() {
            }

            static /* synthetic */ Builder access$5000() {
                return create();
            }

            private Builder() {
                maybeForceBuilderInitialization();
            }

            private static Builder create() {
                return new Builder();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
            /* renamed from: clone */
            public Builder mo2051clone() {
                return create().mergeFrom(buildPartial());
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
            public Argument build() {
                Argument buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessageLite.Builder.newUninitializedMessageException(buildPartial);
            }

            public Argument buildPartial() {
                Argument argument = new Argument(this);
                int i = this.bitField0_;
                int i2 = (i & 1) != 1 ? 0 : 1;
                argument.projection_ = this.projection_;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                argument.type_ = this.type_;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                argument.typeId_ = this.typeId_;
                argument.bitField0_ = i2;
                return argument;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
            public Builder mergeFrom(Argument argument) {
                if (argument == Argument.getDefaultInstance()) {
                    return this;
                }
                if (argument.hasProjection()) {
                    setProjection(argument.getProjection());
                }
                if (argument.hasType()) {
                    mergeType(argument.getType());
                }
                if (argument.hasTypeId()) {
                    setTypeId(argument.getTypeId());
                }
                setUnknownFields(getUnknownFields().concat(argument.unknownFields));
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite.Builder, kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf.Type.Argument.Builder mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    kotlin.reflect.jvm.internal.impl.protobuf.Parser<kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$Argument> r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type.Argument.PARSER     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                    kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$Argument r3 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type.Argument) r3     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.mergeFrom(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1b
                L11:
                    r3 = move-exception
                    kotlin.reflect.jvm.internal.impl.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$Argument r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type.Argument) r4     // Catch: java.lang.Throwable -> Lf
                    throw r3     // Catch: java.lang.Throwable -> L19
                L19:
                    r3 = move-exception
                    r0 = r4
                L1b:
                    if (r0 == 0) goto L20
                    r2.mergeFrom(r0)
                L20:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf.Type.Argument.Builder.mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$Argument$Builder");
            }

            public Builder setProjection(Projection projection) {
                Objects.requireNonNull(projection);
                this.bitField0_ |= 1;
                this.projection_ = projection;
                return this;
            }

            public Builder mergeType(ProtoBuf$Type protoBuf$Type) {
                if ((this.bitField0_ & 2) == 2 && this.type_ != ProtoBuf$Type.getDefaultInstance()) {
                    this.type_ = ProtoBuf$Type.newBuilder(this.type_).mergeFrom(protoBuf$Type).buildPartial();
                } else {
                    this.type_ = protoBuf$Type;
                }
                this.bitField0_ |= 2;
                return this;
            }

            public Builder setTypeId(int i) {
                this.bitField0_ |= 4;
                this.typeId_ = i;
                return this;
            }
        }
    }

    public List<Argument> getArgumentList() {
        return this.argument_;
    }

    public int getArgumentCount() {
        return this.argument_.size();
    }

    public Argument getArgument(int i) {
        return this.argument_.get(i);
    }

    public boolean hasNullable() {
        return (this.bitField0_ & 1) == 1;
    }

    public boolean getNullable() {
        return this.nullable_;
    }

    public boolean hasFlexibleTypeCapabilitiesId() {
        return (this.bitField0_ & 2) == 2;
    }

    public int getFlexibleTypeCapabilitiesId() {
        return this.flexibleTypeCapabilitiesId_;
    }

    public boolean hasFlexibleUpperBound() {
        return (this.bitField0_ & 4) == 4;
    }

    public ProtoBuf$Type getFlexibleUpperBound() {
        return this.flexibleUpperBound_;
    }

    public boolean hasFlexibleUpperBoundId() {
        return (this.bitField0_ & 8) == 8;
    }

    public int getFlexibleUpperBoundId() {
        return this.flexibleUpperBoundId_;
    }

    public boolean hasClassName() {
        return (this.bitField0_ & 16) == 16;
    }

    public int getClassName() {
        return this.className_;
    }

    public boolean hasTypeParameter() {
        return (this.bitField0_ & 32) == 32;
    }

    public int getTypeParameter() {
        return this.typeParameter_;
    }

    public boolean hasTypeParameterName() {
        return (this.bitField0_ & 64) == 64;
    }

    public int getTypeParameterName() {
        return this.typeParameterName_;
    }

    public boolean hasTypeAliasName() {
        return (this.bitField0_ & 128) == 128;
    }

    public int getTypeAliasName() {
        return this.typeAliasName_;
    }

    public boolean hasOuterType() {
        return (this.bitField0_ & 256) == 256;
    }

    public ProtoBuf$Type getOuterType() {
        return this.outerType_;
    }

    public boolean hasOuterTypeId() {
        return (this.bitField0_ & 512) == 512;
    }

    public int getOuterTypeId() {
        return this.outerTypeId_;
    }

    public boolean hasAbbreviatedType() {
        return (this.bitField0_ & 1024) == 1024;
    }

    public ProtoBuf$Type getAbbreviatedType() {
        return this.abbreviatedType_;
    }

    public boolean hasAbbreviatedTypeId() {
        return (this.bitField0_ & 2048) == 2048;
    }

    public int getAbbreviatedTypeId() {
        return this.abbreviatedTypeId_;
    }

    public boolean hasFlags() {
        return (this.bitField0_ & 4096) == 4096;
    }

    public int getFlags() {
        return this.flags_;
    }

    private void initFields() {
        this.argument_ = Collections.emptyList();
        this.nullable_ = false;
        this.flexibleTypeCapabilitiesId_ = 0;
        this.flexibleUpperBound_ = getDefaultInstance();
        this.flexibleUpperBoundId_ = 0;
        this.className_ = 0;
        this.typeParameter_ = 0;
        this.typeParameterName_ = 0;
        this.typeAliasName_ = 0;
        this.outerType_ = getDefaultInstance();
        this.outerTypeId_ = 0;
        this.abbreviatedType_ = getDefaultInstance();
        this.abbreviatedTypeId_ = 0;
        this.flags_ = 0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public final boolean isInitialized() {
        byte b = this.memoizedIsInitialized;
        if (b == 1) {
            return true;
        }
        if (b == 0) {
            return false;
        }
        for (int i = 0; i < getArgumentCount(); i++) {
            if (!getArgument(i).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        if (hasFlexibleUpperBound() && !getFlexibleUpperBound().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        } else if (hasOuterType() && !getOuterType().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        } else if (hasAbbreviatedType() && !getAbbreviatedType().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        } else if (!extensionsAreInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        } else {
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        GeneratedMessageLite.ExtendableMessage<MessageType>.ExtensionWriter newExtensionWriter = newExtensionWriter();
        if ((this.bitField0_ & 4096) == 4096) {
            codedOutputStream.writeInt32(1, this.flags_);
        }
        for (int i = 0; i < this.argument_.size(); i++) {
            codedOutputStream.writeMessage(2, this.argument_.get(i));
        }
        if ((this.bitField0_ & 1) == 1) {
            codedOutputStream.writeBool(3, this.nullable_);
        }
        if ((this.bitField0_ & 2) == 2) {
            codedOutputStream.writeInt32(4, this.flexibleTypeCapabilitiesId_);
        }
        if ((this.bitField0_ & 4) == 4) {
            codedOutputStream.writeMessage(5, this.flexibleUpperBound_);
        }
        if ((this.bitField0_ & 16) == 16) {
            codedOutputStream.writeInt32(6, this.className_);
        }
        if ((this.bitField0_ & 32) == 32) {
            codedOutputStream.writeInt32(7, this.typeParameter_);
        }
        if ((this.bitField0_ & 8) == 8) {
            codedOutputStream.writeInt32(8, this.flexibleUpperBoundId_);
        }
        if ((this.bitField0_ & 64) == 64) {
            codedOutputStream.writeInt32(9, this.typeParameterName_);
        }
        if ((this.bitField0_ & 256) == 256) {
            codedOutputStream.writeMessage(10, this.outerType_);
        }
        if ((this.bitField0_ & 512) == 512) {
            codedOutputStream.writeInt32(11, this.outerTypeId_);
        }
        if ((this.bitField0_ & 128) == 128) {
            codedOutputStream.writeInt32(12, this.typeAliasName_);
        }
        if ((this.bitField0_ & 1024) == 1024) {
            codedOutputStream.writeMessage(13, this.abbreviatedType_);
        }
        if ((this.bitField0_ & 2048) == 2048) {
            codedOutputStream.writeInt32(14, this.abbreviatedTypeId_);
        }
        newExtensionWriter.writeUntil(200, codedOutputStream);
        codedOutputStream.writeRawBytes(this.unknownFields);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int computeInt32Size = (this.bitField0_ & 4096) == 4096 ? CodedOutputStream.computeInt32Size(1, this.flags_) + 0 : 0;
        for (int i2 = 0; i2 < this.argument_.size(); i2++) {
            computeInt32Size += CodedOutputStream.computeMessageSize(2, this.argument_.get(i2));
        }
        if ((this.bitField0_ & 1) == 1) {
            computeInt32Size += CodedOutputStream.computeBoolSize(3, this.nullable_);
        }
        if ((this.bitField0_ & 2) == 2) {
            computeInt32Size += CodedOutputStream.computeInt32Size(4, this.flexibleTypeCapabilitiesId_);
        }
        if ((this.bitField0_ & 4) == 4) {
            computeInt32Size += CodedOutputStream.computeMessageSize(5, this.flexibleUpperBound_);
        }
        if ((this.bitField0_ & 16) == 16) {
            computeInt32Size += CodedOutputStream.computeInt32Size(6, this.className_);
        }
        if ((this.bitField0_ & 32) == 32) {
            computeInt32Size += CodedOutputStream.computeInt32Size(7, this.typeParameter_);
        }
        if ((this.bitField0_ & 8) == 8) {
            computeInt32Size += CodedOutputStream.computeInt32Size(8, this.flexibleUpperBoundId_);
        }
        if ((this.bitField0_ & 64) == 64) {
            computeInt32Size += CodedOutputStream.computeInt32Size(9, this.typeParameterName_);
        }
        if ((this.bitField0_ & 256) == 256) {
            computeInt32Size += CodedOutputStream.computeMessageSize(10, this.outerType_);
        }
        if ((this.bitField0_ & 512) == 512) {
            computeInt32Size += CodedOutputStream.computeInt32Size(11, this.outerTypeId_);
        }
        if ((this.bitField0_ & 128) == 128) {
            computeInt32Size += CodedOutputStream.computeInt32Size(12, this.typeAliasName_);
        }
        if ((this.bitField0_ & 1024) == 1024) {
            computeInt32Size += CodedOutputStream.computeMessageSize(13, this.abbreviatedType_);
        }
        if ((this.bitField0_ & 2048) == 2048) {
            computeInt32Size += CodedOutputStream.computeInt32Size(14, this.abbreviatedTypeId_);
        }
        int extensionsSerializedSize = computeInt32Size + extensionsSerializedSize() + this.unknownFields.size();
        this.memoizedSerializedSize = extensionsSerializedSize;
        return extensionsSerializedSize;
    }

    public static Builder newBuilder() {
        return Builder.access$5700();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Builder newBuilder(ProtoBuf$Type protoBuf$Type) {
        return newBuilder().mergeFrom(protoBuf$Type);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public Builder toBuilder() {
        return newBuilder(this);
    }

    /* loaded from: classes4.dex */
    public static final class Builder extends GeneratedMessageLite.ExtendableBuilder<ProtoBuf$Type, Builder> {
        private int abbreviatedTypeId_;
        private int bitField0_;
        private int className_;
        private int flags_;
        private int flexibleTypeCapabilitiesId_;
        private int flexibleUpperBoundId_;
        private boolean nullable_;
        private int outerTypeId_;
        private int typeAliasName_;
        private int typeParameterName_;
        private int typeParameter_;
        private List<Argument> argument_ = Collections.emptyList();
        private ProtoBuf$Type flexibleUpperBound_ = ProtoBuf$Type.getDefaultInstance();
        private ProtoBuf$Type outerType_ = ProtoBuf$Type.getDefaultInstance();
        private ProtoBuf$Type abbreviatedType_ = ProtoBuf$Type.getDefaultInstance();

        private void maybeForceBuilderInitialization() {
        }

        static /* synthetic */ Builder access$5700() {
            return create();
        }

        private Builder() {
            maybeForceBuilderInitialization();
        }

        private static Builder create() {
            return new Builder();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        /* renamed from: clone */
        public Builder mo2051clone() {
            return create().mergeFrom(buildPartial());
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public ProtoBuf$Type build() {
            ProtoBuf$Type buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessageLite.Builder.newUninitializedMessageException(buildPartial);
        }

        public ProtoBuf$Type buildPartial() {
            ProtoBuf$Type protoBuf$Type = new ProtoBuf$Type(this);
            int i = this.bitField0_;
            if ((i & 1) == 1) {
                this.argument_ = Collections.unmodifiableList(this.argument_);
                this.bitField0_ &= -2;
            }
            protoBuf$Type.argument_ = this.argument_;
            int i2 = (i & 2) != 2 ? 0 : 1;
            protoBuf$Type.nullable_ = this.nullable_;
            if ((i & 4) == 4) {
                i2 |= 2;
            }
            protoBuf$Type.flexibleTypeCapabilitiesId_ = this.flexibleTypeCapabilitiesId_;
            if ((i & 8) == 8) {
                i2 |= 4;
            }
            protoBuf$Type.flexibleUpperBound_ = this.flexibleUpperBound_;
            if ((i & 16) == 16) {
                i2 |= 8;
            }
            protoBuf$Type.flexibleUpperBoundId_ = this.flexibleUpperBoundId_;
            if ((i & 32) == 32) {
                i2 |= 16;
            }
            protoBuf$Type.className_ = this.className_;
            if ((i & 64) == 64) {
                i2 |= 32;
            }
            protoBuf$Type.typeParameter_ = this.typeParameter_;
            if ((i & 128) == 128) {
                i2 |= 64;
            }
            protoBuf$Type.typeParameterName_ = this.typeParameterName_;
            if ((i & 256) == 256) {
                i2 |= 128;
            }
            protoBuf$Type.typeAliasName_ = this.typeAliasName_;
            if ((i & 512) == 512) {
                i2 |= 256;
            }
            protoBuf$Type.outerType_ = this.outerType_;
            if ((i & 1024) == 1024) {
                i2 |= 512;
            }
            protoBuf$Type.outerTypeId_ = this.outerTypeId_;
            if ((i & 2048) == 2048) {
                i2 |= 1024;
            }
            protoBuf$Type.abbreviatedType_ = this.abbreviatedType_;
            if ((i & 4096) == 4096) {
                i2 |= 2048;
            }
            protoBuf$Type.abbreviatedTypeId_ = this.abbreviatedTypeId_;
            if ((i & 8192) == 8192) {
                i2 |= 4096;
            }
            protoBuf$Type.flags_ = this.flags_;
            protoBuf$Type.bitField0_ = i2;
            return protoBuf$Type;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public Builder mergeFrom(ProtoBuf$Type protoBuf$Type) {
            if (protoBuf$Type == ProtoBuf$Type.getDefaultInstance()) {
                return this;
            }
            if (!protoBuf$Type.argument_.isEmpty()) {
                if (this.argument_.isEmpty()) {
                    this.argument_ = protoBuf$Type.argument_;
                    this.bitField0_ &= -2;
                } else {
                    ensureArgumentIsMutable();
                    this.argument_.addAll(protoBuf$Type.argument_);
                }
            }
            if (protoBuf$Type.hasNullable()) {
                setNullable(protoBuf$Type.getNullable());
            }
            if (protoBuf$Type.hasFlexibleTypeCapabilitiesId()) {
                setFlexibleTypeCapabilitiesId(protoBuf$Type.getFlexibleTypeCapabilitiesId());
            }
            if (protoBuf$Type.hasFlexibleUpperBound()) {
                mergeFlexibleUpperBound(protoBuf$Type.getFlexibleUpperBound());
            }
            if (protoBuf$Type.hasFlexibleUpperBoundId()) {
                setFlexibleUpperBoundId(protoBuf$Type.getFlexibleUpperBoundId());
            }
            if (protoBuf$Type.hasClassName()) {
                setClassName(protoBuf$Type.getClassName());
            }
            if (protoBuf$Type.hasTypeParameter()) {
                setTypeParameter(protoBuf$Type.getTypeParameter());
            }
            if (protoBuf$Type.hasTypeParameterName()) {
                setTypeParameterName(protoBuf$Type.getTypeParameterName());
            }
            if (protoBuf$Type.hasTypeAliasName()) {
                setTypeAliasName(protoBuf$Type.getTypeAliasName());
            }
            if (protoBuf$Type.hasOuterType()) {
                mergeOuterType(protoBuf$Type.getOuterType());
            }
            if (protoBuf$Type.hasOuterTypeId()) {
                setOuterTypeId(protoBuf$Type.getOuterTypeId());
            }
            if (protoBuf$Type.hasAbbreviatedType()) {
                mergeAbbreviatedType(protoBuf$Type.getAbbreviatedType());
            }
            if (protoBuf$Type.hasAbbreviatedTypeId()) {
                setAbbreviatedTypeId(protoBuf$Type.getAbbreviatedTypeId());
            }
            if (protoBuf$Type.hasFlags()) {
                setFlags(protoBuf$Type.getFlags());
            }
            mergeExtensionFields(protoBuf$Type);
            setUnknownFields(getUnknownFields().concat(protoBuf$Type.unknownFields));
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite.Builder, kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type.Builder mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                kotlin.reflect.jvm.internal.impl.protobuf.Parser<kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type> r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type.PARSER     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type r3 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type) r3     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                if (r3 == 0) goto Le
                r2.mergeFrom(r3)
            Le:
                return r2
            Lf:
                r3 = move-exception
                goto L1b
            L11:
                r3 = move-exception
                kotlin.reflect.jvm.internal.impl.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type) r4     // Catch: java.lang.Throwable -> Lf
                throw r3     // Catch: java.lang.Throwable -> L19
            L19:
                r3 = move-exception
                r0 = r4
            L1b:
                if (r0 == 0) goto L20
                r2.mergeFrom(r0)
            L20:
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type.Builder.mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type$Builder");
        }

        private void ensureArgumentIsMutable() {
            if ((this.bitField0_ & 1) != 1) {
                this.argument_ = new ArrayList(this.argument_);
                this.bitField0_ |= 1;
            }
        }

        public Builder setNullable(boolean z) {
            this.bitField0_ |= 2;
            this.nullable_ = z;
            return this;
        }

        public Builder setFlexibleTypeCapabilitiesId(int i) {
            this.bitField0_ |= 4;
            this.flexibleTypeCapabilitiesId_ = i;
            return this;
        }

        public Builder mergeFlexibleUpperBound(ProtoBuf$Type protoBuf$Type) {
            if ((this.bitField0_ & 8) == 8 && this.flexibleUpperBound_ != ProtoBuf$Type.getDefaultInstance()) {
                this.flexibleUpperBound_ = ProtoBuf$Type.newBuilder(this.flexibleUpperBound_).mergeFrom(protoBuf$Type).buildPartial();
            } else {
                this.flexibleUpperBound_ = protoBuf$Type;
            }
            this.bitField0_ |= 8;
            return this;
        }

        public Builder setFlexibleUpperBoundId(int i) {
            this.bitField0_ |= 16;
            this.flexibleUpperBoundId_ = i;
            return this;
        }

        public Builder setClassName(int i) {
            this.bitField0_ |= 32;
            this.className_ = i;
            return this;
        }

        public Builder setTypeParameter(int i) {
            this.bitField0_ |= 64;
            this.typeParameter_ = i;
            return this;
        }

        public Builder setTypeParameterName(int i) {
            this.bitField0_ |= 128;
            this.typeParameterName_ = i;
            return this;
        }

        public Builder setTypeAliasName(int i) {
            this.bitField0_ |= 256;
            this.typeAliasName_ = i;
            return this;
        }

        public Builder mergeOuterType(ProtoBuf$Type protoBuf$Type) {
            if ((this.bitField0_ & 512) == 512 && this.outerType_ != ProtoBuf$Type.getDefaultInstance()) {
                this.outerType_ = ProtoBuf$Type.newBuilder(this.outerType_).mergeFrom(protoBuf$Type).buildPartial();
            } else {
                this.outerType_ = protoBuf$Type;
            }
            this.bitField0_ |= 512;
            return this;
        }

        public Builder setOuterTypeId(int i) {
            this.bitField0_ |= 1024;
            this.outerTypeId_ = i;
            return this;
        }

        public Builder mergeAbbreviatedType(ProtoBuf$Type protoBuf$Type) {
            if ((this.bitField0_ & 2048) == 2048 && this.abbreviatedType_ != ProtoBuf$Type.getDefaultInstance()) {
                this.abbreviatedType_ = ProtoBuf$Type.newBuilder(this.abbreviatedType_).mergeFrom(protoBuf$Type).buildPartial();
            } else {
                this.abbreviatedType_ = protoBuf$Type;
            }
            this.bitField0_ |= 2048;
            return this;
        }

        public Builder setAbbreviatedTypeId(int i) {
            this.bitField0_ |= 4096;
            this.abbreviatedTypeId_ = i;
            return this;
        }

        public Builder setFlags(int i) {
            this.bitField0_ |= 8192;
            this.flags_ = i;
            return this;
        }
    }
}
