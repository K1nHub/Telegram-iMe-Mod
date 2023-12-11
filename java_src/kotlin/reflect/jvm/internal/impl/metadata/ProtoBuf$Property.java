package kotlin.reflect.jvm.internal.impl.metadata;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractParser;
import kotlin.reflect.jvm.internal.impl.protobuf.ByteString;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedOutputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.protobuf.Parser;
/* loaded from: classes4.dex */
public final class ProtoBuf$Property extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$Property> {
    public static Parser<ProtoBuf$Property> PARSER = new AbstractParser<ProtoBuf$Property>() { // from class: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property.1
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
        public ProtoBuf$Property parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new ProtoBuf$Property(codedInputStream, extensionRegistryLite);
        }
    };
    private static final ProtoBuf$Property defaultInstance;
    private int bitField0_;
    private int contextReceiverTypeIdMemoizedSerializedSize;
    private List<Integer> contextReceiverTypeId_;
    private List<ProtoBuf$Type> contextReceiverType_;
    private int flags_;
    private int getterFlags_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private int name_;
    private int oldFlags_;
    private int receiverTypeId_;
    private ProtoBuf$Type receiverType_;
    private int returnTypeId_;
    private ProtoBuf$Type returnType_;
    private int setterFlags_;
    private ProtoBuf$ValueParameter setterValueParameter_;
    private List<ProtoBuf$TypeParameter> typeParameter_;
    private final ByteString unknownFields;
    private List<Integer> versionRequirement_;

    private ProtoBuf$Property(GeneratedMessageLite.ExtendableBuilder<ProtoBuf$Property, ?> extendableBuilder) {
        super(extendableBuilder);
        this.contextReceiverTypeIdMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = extendableBuilder.getUnknownFields();
    }

    private ProtoBuf$Property(boolean z) {
        this.contextReceiverTypeIdMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = ByteString.EMPTY;
    }

    public static ProtoBuf$Property getDefaultInstance() {
        return defaultInstance;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public ProtoBuf$Property getDefaultInstanceForType() {
        return defaultInstance;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean] */
    private ProtoBuf$Property(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this.contextReceiverTypeIdMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        initFields();
        ByteString.Output newOutput = ByteString.newOutput();
        CodedOutputStream newInstance = CodedOutputStream.newInstance(newOutput, 1);
        boolean z = false;
        boolean z2 = false;
        while (true) {
            ?? r5 = 256;
            if (!z) {
                try {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            switch (readTag) {
                                case 0:
                                    break;
                                case 8:
                                    this.bitField0_ |= 2;
                                    this.oldFlags_ = codedInputStream.readInt32();
                                    continue;
                                case 16:
                                    this.bitField0_ |= 4;
                                    this.name_ = codedInputStream.readInt32();
                                    continue;
                                case 26:
                                    ProtoBuf$Type.Builder builder = (this.bitField0_ & 8) == 8 ? this.returnType_.toBuilder() : null;
                                    ProtoBuf$Type protoBuf$Type = (ProtoBuf$Type) codedInputStream.readMessage(ProtoBuf$Type.PARSER, extensionRegistryLite);
                                    this.returnType_ = protoBuf$Type;
                                    if (builder != null) {
                                        builder.mergeFrom(protoBuf$Type);
                                        this.returnType_ = builder.buildPartial();
                                    }
                                    this.bitField0_ |= 8;
                                    continue;
                                case 34:
                                    boolean z3 = (z2 ? 1 : 0) & true;
                                    z2 = z2;
                                    if (!z3) {
                                        this.typeParameter_ = new ArrayList();
                                        z2 = (z2 ? 1 : 0) | true;
                                    }
                                    this.typeParameter_.add(codedInputStream.readMessage(ProtoBuf$TypeParameter.PARSER, extensionRegistryLite));
                                    continue;
                                case 42:
                                    ProtoBuf$Type.Builder builder2 = (this.bitField0_ & 32) == 32 ? this.receiverType_.toBuilder() : null;
                                    ProtoBuf$Type protoBuf$Type2 = (ProtoBuf$Type) codedInputStream.readMessage(ProtoBuf$Type.PARSER, extensionRegistryLite);
                                    this.receiverType_ = protoBuf$Type2;
                                    if (builder2 != null) {
                                        builder2.mergeFrom(protoBuf$Type2);
                                        this.receiverType_ = builder2.buildPartial();
                                    }
                                    this.bitField0_ |= 32;
                                    continue;
                                case 50:
                                    ProtoBuf$ValueParameter.Builder builder3 = (this.bitField0_ & 128) == 128 ? this.setterValueParameter_.toBuilder() : null;
                                    ProtoBuf$ValueParameter protoBuf$ValueParameter = (ProtoBuf$ValueParameter) codedInputStream.readMessage(ProtoBuf$ValueParameter.PARSER, extensionRegistryLite);
                                    this.setterValueParameter_ = protoBuf$ValueParameter;
                                    if (builder3 != null) {
                                        builder3.mergeFrom(protoBuf$ValueParameter);
                                        this.setterValueParameter_ = builder3.buildPartial();
                                    }
                                    this.bitField0_ |= 128;
                                    continue;
                                case 56:
                                    this.bitField0_ |= 256;
                                    this.getterFlags_ = codedInputStream.readInt32();
                                    continue;
                                case 64:
                                    this.bitField0_ |= 512;
                                    this.setterFlags_ = codedInputStream.readInt32();
                                    continue;
                                case 72:
                                    this.bitField0_ |= 16;
                                    this.returnTypeId_ = codedInputStream.readInt32();
                                    continue;
                                case 80:
                                    this.bitField0_ |= 64;
                                    this.receiverTypeId_ = codedInputStream.readInt32();
                                    continue;
                                case 88:
                                    this.bitField0_ |= 1;
                                    this.flags_ = codedInputStream.readInt32();
                                    continue;
                                case 98:
                                    boolean z4 = (z2 ? 1 : 0) & true;
                                    z2 = z2;
                                    if (!z4) {
                                        this.contextReceiverType_ = new ArrayList();
                                        z2 = (z2 ? 1 : 0) | true;
                                    }
                                    this.contextReceiverType_.add(codedInputStream.readMessage(ProtoBuf$Type.PARSER, extensionRegistryLite));
                                    continue;
                                case 104:
                                    boolean z5 = (z2 ? 1 : 0) & true;
                                    z2 = z2;
                                    if (!z5) {
                                        this.contextReceiverTypeId_ = new ArrayList();
                                        z2 = (z2 ? 1 : 0) | true;
                                    }
                                    this.contextReceiverTypeId_.add(Integer.valueOf(codedInputStream.readInt32()));
                                    continue;
                                case 106:
                                    int pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    boolean z6 = (z2 ? 1 : 0) & true;
                                    z2 = z2;
                                    if (!z6) {
                                        z2 = z2;
                                        if (codedInputStream.getBytesUntilLimit() > 0) {
                                            this.contextReceiverTypeId_ = new ArrayList();
                                            z2 = (z2 ? 1 : 0) | true;
                                        }
                                    }
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.contextReceiverTypeId_.add(Integer.valueOf(codedInputStream.readInt32()));
                                    }
                                    codedInputStream.popLimit(pushLimit);
                                    continue;
                                case 248:
                                    boolean z7 = (z2 ? 1 : 0) & true;
                                    z2 = z2;
                                    if (!z7) {
                                        this.versionRequirement_ = new ArrayList();
                                        z2 = (z2 ? 1 : 0) | true;
                                    }
                                    this.versionRequirement_.add(Integer.valueOf(codedInputStream.readInt32()));
                                    continue;
                                case 250:
                                    int pushLimit2 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    boolean z8 = (z2 ? 1 : 0) & true;
                                    z2 = z2;
                                    if (!z8) {
                                        z2 = z2;
                                        if (codedInputStream.getBytesUntilLimit() > 0) {
                                            this.versionRequirement_ = new ArrayList();
                                            z2 = (z2 ? 1 : 0) | true;
                                        }
                                    }
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.versionRequirement_.add(Integer.valueOf(codedInputStream.readInt32()));
                                    }
                                    codedInputStream.popLimit(pushLimit2);
                                    continue;
                                default:
                                    r5 = parseUnknownField(codedInputStream, newInstance, extensionRegistryLite, readTag);
                                    if (r5 == 0) {
                                        break;
                                    } else {
                                        continue;
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
                    if ((z2 ? 1 : 0) & true) {
                        this.typeParameter_ = Collections.unmodifiableList(this.typeParameter_);
                    }
                    if (((z2 ? 1 : 0) & true) == r5) {
                        this.contextReceiverType_ = Collections.unmodifiableList(this.contextReceiverType_);
                    }
                    if ((z2 ? 1 : 0) & true) {
                        this.contextReceiverTypeId_ = Collections.unmodifiableList(this.contextReceiverTypeId_);
                    }
                    if ((z2 ? 1 : 0) & true) {
                        this.versionRequirement_ = Collections.unmodifiableList(this.versionRequirement_);
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
            } else {
                if ((z2 ? 1 : 0) & true) {
                    this.typeParameter_ = Collections.unmodifiableList(this.typeParameter_);
                }
                if ((z2 ? 1 : 0) & true) {
                    this.contextReceiverType_ = Collections.unmodifiableList(this.contextReceiverType_);
                }
                if ((z2 ? 1 : 0) & true) {
                    this.contextReceiverTypeId_ = Collections.unmodifiableList(this.contextReceiverTypeId_);
                }
                if ((z2 ? 1 : 0) & true) {
                    this.versionRequirement_ = Collections.unmodifiableList(this.versionRequirement_);
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
                return;
            }
        }
    }

    static {
        ProtoBuf$Property protoBuf$Property = new ProtoBuf$Property(true);
        defaultInstance = protoBuf$Property;
        protoBuf$Property.initFields();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public Parser<ProtoBuf$Property> getParserForType() {
        return PARSER;
    }

    public boolean hasFlags() {
        return (this.bitField0_ & 1) == 1;
    }

    public int getFlags() {
        return this.flags_;
    }

    public boolean hasOldFlags() {
        return (this.bitField0_ & 2) == 2;
    }

    public int getOldFlags() {
        return this.oldFlags_;
    }

    public boolean hasName() {
        return (this.bitField0_ & 4) == 4;
    }

    public int getName() {
        return this.name_;
    }

    public boolean hasReturnType() {
        return (this.bitField0_ & 8) == 8;
    }

    public ProtoBuf$Type getReturnType() {
        return this.returnType_;
    }

    public boolean hasReturnTypeId() {
        return (this.bitField0_ & 16) == 16;
    }

    public int getReturnTypeId() {
        return this.returnTypeId_;
    }

    public List<ProtoBuf$TypeParameter> getTypeParameterList() {
        return this.typeParameter_;
    }

    public int getTypeParameterCount() {
        return this.typeParameter_.size();
    }

    public ProtoBuf$TypeParameter getTypeParameter(int i) {
        return this.typeParameter_.get(i);
    }

    public boolean hasReceiverType() {
        return (this.bitField0_ & 32) == 32;
    }

    public ProtoBuf$Type getReceiverType() {
        return this.receiverType_;
    }

    public boolean hasReceiverTypeId() {
        return (this.bitField0_ & 64) == 64;
    }

    public int getReceiverTypeId() {
        return this.receiverTypeId_;
    }

    public List<ProtoBuf$Type> getContextReceiverTypeList() {
        return this.contextReceiverType_;
    }

    public int getContextReceiverTypeCount() {
        return this.contextReceiverType_.size();
    }

    public ProtoBuf$Type getContextReceiverType(int i) {
        return this.contextReceiverType_.get(i);
    }

    public List<Integer> getContextReceiverTypeIdList() {
        return this.contextReceiverTypeId_;
    }

    public boolean hasSetterValueParameter() {
        return (this.bitField0_ & 128) == 128;
    }

    public ProtoBuf$ValueParameter getSetterValueParameter() {
        return this.setterValueParameter_;
    }

    public boolean hasGetterFlags() {
        return (this.bitField0_ & 256) == 256;
    }

    public int getGetterFlags() {
        return this.getterFlags_;
    }

    public boolean hasSetterFlags() {
        return (this.bitField0_ & 512) == 512;
    }

    public int getSetterFlags() {
        return this.setterFlags_;
    }

    public List<Integer> getVersionRequirementList() {
        return this.versionRequirement_;
    }

    private void initFields() {
        this.flags_ = 518;
        this.oldFlags_ = 2054;
        this.name_ = 0;
        this.returnType_ = ProtoBuf$Type.getDefaultInstance();
        this.returnTypeId_ = 0;
        this.typeParameter_ = Collections.emptyList();
        this.receiverType_ = ProtoBuf$Type.getDefaultInstance();
        this.receiverTypeId_ = 0;
        this.contextReceiverType_ = Collections.emptyList();
        this.contextReceiverTypeId_ = Collections.emptyList();
        this.setterValueParameter_ = ProtoBuf$ValueParameter.getDefaultInstance();
        this.getterFlags_ = 0;
        this.setterFlags_ = 0;
        this.versionRequirement_ = Collections.emptyList();
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
        if (!hasName()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        } else if (hasReturnType() && !getReturnType().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        } else {
            for (int i = 0; i < getTypeParameterCount(); i++) {
                if (!getTypeParameter(i).isInitialized()) {
                    this.memoizedIsInitialized = (byte) 0;
                    return false;
                }
            }
            if (hasReceiverType() && !getReceiverType().isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            for (int i2 = 0; i2 < getContextReceiverTypeCount(); i2++) {
                if (!getContextReceiverType(i2).isInitialized()) {
                    this.memoizedIsInitialized = (byte) 0;
                    return false;
                }
            }
            if (hasSetterValueParameter() && !getSetterValueParameter().isInitialized()) {
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
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        GeneratedMessageLite.ExtendableMessage<MessageType>.ExtensionWriter newExtensionWriter = newExtensionWriter();
        if ((this.bitField0_ & 2) == 2) {
            codedOutputStream.writeInt32(1, this.oldFlags_);
        }
        if ((this.bitField0_ & 4) == 4) {
            codedOutputStream.writeInt32(2, this.name_);
        }
        if ((this.bitField0_ & 8) == 8) {
            codedOutputStream.writeMessage(3, this.returnType_);
        }
        for (int i = 0; i < this.typeParameter_.size(); i++) {
            codedOutputStream.writeMessage(4, this.typeParameter_.get(i));
        }
        if ((this.bitField0_ & 32) == 32) {
            codedOutputStream.writeMessage(5, this.receiverType_);
        }
        if ((this.bitField0_ & 128) == 128) {
            codedOutputStream.writeMessage(6, this.setterValueParameter_);
        }
        if ((this.bitField0_ & 256) == 256) {
            codedOutputStream.writeInt32(7, this.getterFlags_);
        }
        if ((this.bitField0_ & 512) == 512) {
            codedOutputStream.writeInt32(8, this.setterFlags_);
        }
        if ((this.bitField0_ & 16) == 16) {
            codedOutputStream.writeInt32(9, this.returnTypeId_);
        }
        if ((this.bitField0_ & 64) == 64) {
            codedOutputStream.writeInt32(10, this.receiverTypeId_);
        }
        if ((this.bitField0_ & 1) == 1) {
            codedOutputStream.writeInt32(11, this.flags_);
        }
        for (int i2 = 0; i2 < this.contextReceiverType_.size(); i2++) {
            codedOutputStream.writeMessage(12, this.contextReceiverType_.get(i2));
        }
        if (getContextReceiverTypeIdList().size() > 0) {
            codedOutputStream.writeRawVarint32(106);
            codedOutputStream.writeRawVarint32(this.contextReceiverTypeIdMemoizedSerializedSize);
        }
        for (int i3 = 0; i3 < this.contextReceiverTypeId_.size(); i3++) {
            codedOutputStream.writeInt32NoTag(this.contextReceiverTypeId_.get(i3).intValue());
        }
        for (int i4 = 0; i4 < this.versionRequirement_.size(); i4++) {
            codedOutputStream.writeInt32(31, this.versionRequirement_.get(i4).intValue());
        }
        newExtensionWriter.writeUntil(19000, codedOutputStream);
        codedOutputStream.writeRawBytes(this.unknownFields);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public int getSerializedSize() {
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int computeInt32Size = (this.bitField0_ & 2) == 2 ? CodedOutputStream.computeInt32Size(1, this.oldFlags_) + 0 : 0;
        if ((this.bitField0_ & 4) == 4) {
            computeInt32Size += CodedOutputStream.computeInt32Size(2, this.name_);
        }
        if ((this.bitField0_ & 8) == 8) {
            computeInt32Size += CodedOutputStream.computeMessageSize(3, this.returnType_);
        }
        for (int i2 = 0; i2 < this.typeParameter_.size(); i2++) {
            computeInt32Size += CodedOutputStream.computeMessageSize(4, this.typeParameter_.get(i2));
        }
        if ((this.bitField0_ & 32) == 32) {
            computeInt32Size += CodedOutputStream.computeMessageSize(5, this.receiverType_);
        }
        if ((this.bitField0_ & 128) == 128) {
            computeInt32Size += CodedOutputStream.computeMessageSize(6, this.setterValueParameter_);
        }
        if ((this.bitField0_ & 256) == 256) {
            computeInt32Size += CodedOutputStream.computeInt32Size(7, this.getterFlags_);
        }
        if ((this.bitField0_ & 512) == 512) {
            computeInt32Size += CodedOutputStream.computeInt32Size(8, this.setterFlags_);
        }
        if ((this.bitField0_ & 16) == 16) {
            computeInt32Size += CodedOutputStream.computeInt32Size(9, this.returnTypeId_);
        }
        if ((this.bitField0_ & 64) == 64) {
            computeInt32Size += CodedOutputStream.computeInt32Size(10, this.receiverTypeId_);
        }
        if ((this.bitField0_ & 1) == 1) {
            computeInt32Size += CodedOutputStream.computeInt32Size(11, this.flags_);
        }
        for (int i3 = 0; i3 < this.contextReceiverType_.size(); i3++) {
            computeInt32Size += CodedOutputStream.computeMessageSize(12, this.contextReceiverType_.get(i3));
        }
        int i4 = 0;
        for (int i5 = 0; i5 < this.contextReceiverTypeId_.size(); i5++) {
            i4 += CodedOutputStream.computeInt32SizeNoTag(this.contextReceiverTypeId_.get(i5).intValue());
        }
        int i6 = computeInt32Size + i4;
        if (!getContextReceiverTypeIdList().isEmpty()) {
            i6 = i6 + 1 + CodedOutputStream.computeInt32SizeNoTag(i4);
        }
        this.contextReceiverTypeIdMemoizedSerializedSize = i4;
        int i7 = 0;
        for (int i8 = 0; i8 < this.versionRequirement_.size(); i8++) {
            i7 += CodedOutputStream.computeInt32SizeNoTag(this.versionRequirement_.get(i8).intValue());
        }
        int size = i6 + i7 + (getVersionRequirementList().size() * 2) + extensionsSerializedSize() + this.unknownFields.size();
        this.memoizedSerializedSize = size;
        return size;
    }

    public static Builder newBuilder() {
        return Builder.access$16000();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Builder newBuilder(ProtoBuf$Property protoBuf$Property) {
        return newBuilder().mergeFrom(protoBuf$Property);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public Builder toBuilder() {
        return newBuilder(this);
    }

    /* loaded from: classes4.dex */
    public static final class Builder extends GeneratedMessageLite.ExtendableBuilder<ProtoBuf$Property, Builder> {
        private int bitField0_;
        private int getterFlags_;
        private int name_;
        private int receiverTypeId_;
        private int returnTypeId_;
        private int setterFlags_;
        private int flags_ = 518;
        private int oldFlags_ = 2054;
        private ProtoBuf$Type returnType_ = ProtoBuf$Type.getDefaultInstance();
        private List<ProtoBuf$TypeParameter> typeParameter_ = Collections.emptyList();
        private ProtoBuf$Type receiverType_ = ProtoBuf$Type.getDefaultInstance();
        private List<ProtoBuf$Type> contextReceiverType_ = Collections.emptyList();
        private List<Integer> contextReceiverTypeId_ = Collections.emptyList();
        private ProtoBuf$ValueParameter setterValueParameter_ = ProtoBuf$ValueParameter.getDefaultInstance();
        private List<Integer> versionRequirement_ = Collections.emptyList();

        private void maybeForceBuilderInitialization() {
        }

        static /* synthetic */ Builder access$16000() {
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
        public ProtoBuf$Property build() {
            ProtoBuf$Property buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessageLite.Builder.newUninitializedMessageException(buildPartial);
        }

        public ProtoBuf$Property buildPartial() {
            ProtoBuf$Property protoBuf$Property = new ProtoBuf$Property(this);
            int i = this.bitField0_;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$Property.flags_ = this.flags_;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$Property.oldFlags_ = this.oldFlags_;
            if ((i & 4) == 4) {
                i2 |= 4;
            }
            protoBuf$Property.name_ = this.name_;
            if ((i & 8) == 8) {
                i2 |= 8;
            }
            protoBuf$Property.returnType_ = this.returnType_;
            if ((i & 16) == 16) {
                i2 |= 16;
            }
            protoBuf$Property.returnTypeId_ = this.returnTypeId_;
            if ((this.bitField0_ & 32) == 32) {
                this.typeParameter_ = Collections.unmodifiableList(this.typeParameter_);
                this.bitField0_ &= -33;
            }
            protoBuf$Property.typeParameter_ = this.typeParameter_;
            if ((i & 64) == 64) {
                i2 |= 32;
            }
            protoBuf$Property.receiverType_ = this.receiverType_;
            if ((i & 128) == 128) {
                i2 |= 64;
            }
            protoBuf$Property.receiverTypeId_ = this.receiverTypeId_;
            if ((this.bitField0_ & 256) == 256) {
                this.contextReceiverType_ = Collections.unmodifiableList(this.contextReceiverType_);
                this.bitField0_ &= -257;
            }
            protoBuf$Property.contextReceiverType_ = this.contextReceiverType_;
            if ((this.bitField0_ & 512) == 512) {
                this.contextReceiverTypeId_ = Collections.unmodifiableList(this.contextReceiverTypeId_);
                this.bitField0_ &= -513;
            }
            protoBuf$Property.contextReceiverTypeId_ = this.contextReceiverTypeId_;
            if ((i & 1024) == 1024) {
                i2 |= 128;
            }
            protoBuf$Property.setterValueParameter_ = this.setterValueParameter_;
            if ((i & 2048) == 2048) {
                i2 |= 256;
            }
            protoBuf$Property.getterFlags_ = this.getterFlags_;
            if ((i & 4096) == 4096) {
                i2 |= 512;
            }
            protoBuf$Property.setterFlags_ = this.setterFlags_;
            if ((this.bitField0_ & 8192) == 8192) {
                this.versionRequirement_ = Collections.unmodifiableList(this.versionRequirement_);
                this.bitField0_ &= -8193;
            }
            protoBuf$Property.versionRequirement_ = this.versionRequirement_;
            protoBuf$Property.bitField0_ = i2;
            return protoBuf$Property;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public Builder mergeFrom(ProtoBuf$Property protoBuf$Property) {
            if (protoBuf$Property == ProtoBuf$Property.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$Property.hasFlags()) {
                setFlags(protoBuf$Property.getFlags());
            }
            if (protoBuf$Property.hasOldFlags()) {
                setOldFlags(protoBuf$Property.getOldFlags());
            }
            if (protoBuf$Property.hasName()) {
                setName(protoBuf$Property.getName());
            }
            if (protoBuf$Property.hasReturnType()) {
                mergeReturnType(protoBuf$Property.getReturnType());
            }
            if (protoBuf$Property.hasReturnTypeId()) {
                setReturnTypeId(protoBuf$Property.getReturnTypeId());
            }
            if (!protoBuf$Property.typeParameter_.isEmpty()) {
                if (this.typeParameter_.isEmpty()) {
                    this.typeParameter_ = protoBuf$Property.typeParameter_;
                    this.bitField0_ &= -33;
                } else {
                    ensureTypeParameterIsMutable();
                    this.typeParameter_.addAll(protoBuf$Property.typeParameter_);
                }
            }
            if (protoBuf$Property.hasReceiverType()) {
                mergeReceiverType(protoBuf$Property.getReceiverType());
            }
            if (protoBuf$Property.hasReceiverTypeId()) {
                setReceiverTypeId(protoBuf$Property.getReceiverTypeId());
            }
            if (!protoBuf$Property.contextReceiverType_.isEmpty()) {
                if (this.contextReceiverType_.isEmpty()) {
                    this.contextReceiverType_ = protoBuf$Property.contextReceiverType_;
                    this.bitField0_ &= -257;
                } else {
                    ensureContextReceiverTypeIsMutable();
                    this.contextReceiverType_.addAll(protoBuf$Property.contextReceiverType_);
                }
            }
            if (!protoBuf$Property.contextReceiverTypeId_.isEmpty()) {
                if (this.contextReceiverTypeId_.isEmpty()) {
                    this.contextReceiverTypeId_ = protoBuf$Property.contextReceiverTypeId_;
                    this.bitField0_ &= -513;
                } else {
                    ensureContextReceiverTypeIdIsMutable();
                    this.contextReceiverTypeId_.addAll(protoBuf$Property.contextReceiverTypeId_);
                }
            }
            if (protoBuf$Property.hasSetterValueParameter()) {
                mergeSetterValueParameter(protoBuf$Property.getSetterValueParameter());
            }
            if (protoBuf$Property.hasGetterFlags()) {
                setGetterFlags(protoBuf$Property.getGetterFlags());
            }
            if (protoBuf$Property.hasSetterFlags()) {
                setSetterFlags(protoBuf$Property.getSetterFlags());
            }
            if (!protoBuf$Property.versionRequirement_.isEmpty()) {
                if (this.versionRequirement_.isEmpty()) {
                    this.versionRequirement_ = protoBuf$Property.versionRequirement_;
                    this.bitField0_ &= -8193;
                } else {
                    ensureVersionRequirementIsMutable();
                    this.versionRequirement_.addAll(protoBuf$Property.versionRequirement_);
                }
            }
            mergeExtensionFields(protoBuf$Property);
            setUnknownFields(getUnknownFields().concat(protoBuf$Property.unknownFields));
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite.Builder, kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property.Builder mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                kotlin.reflect.jvm.internal.impl.protobuf.Parser<kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property> r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property.PARSER     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property r3 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property) r3     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property) r4     // Catch: java.lang.Throwable -> Lf
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property.Builder.mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property$Builder");
        }

        public Builder setFlags(int i) {
            this.bitField0_ |= 1;
            this.flags_ = i;
            return this;
        }

        public Builder setOldFlags(int i) {
            this.bitField0_ |= 2;
            this.oldFlags_ = i;
            return this;
        }

        public Builder setName(int i) {
            this.bitField0_ |= 4;
            this.name_ = i;
            return this;
        }

        public Builder mergeReturnType(ProtoBuf$Type protoBuf$Type) {
            if ((this.bitField0_ & 8) == 8 && this.returnType_ != ProtoBuf$Type.getDefaultInstance()) {
                this.returnType_ = ProtoBuf$Type.newBuilder(this.returnType_).mergeFrom(protoBuf$Type).buildPartial();
            } else {
                this.returnType_ = protoBuf$Type;
            }
            this.bitField0_ |= 8;
            return this;
        }

        public Builder setReturnTypeId(int i) {
            this.bitField0_ |= 16;
            this.returnTypeId_ = i;
            return this;
        }

        private void ensureTypeParameterIsMutable() {
            if ((this.bitField0_ & 32) != 32) {
                this.typeParameter_ = new ArrayList(this.typeParameter_);
                this.bitField0_ |= 32;
            }
        }

        public Builder mergeReceiverType(ProtoBuf$Type protoBuf$Type) {
            if ((this.bitField0_ & 64) == 64 && this.receiverType_ != ProtoBuf$Type.getDefaultInstance()) {
                this.receiverType_ = ProtoBuf$Type.newBuilder(this.receiverType_).mergeFrom(protoBuf$Type).buildPartial();
            } else {
                this.receiverType_ = protoBuf$Type;
            }
            this.bitField0_ |= 64;
            return this;
        }

        public Builder setReceiverTypeId(int i) {
            this.bitField0_ |= 128;
            this.receiverTypeId_ = i;
            return this;
        }

        private void ensureContextReceiverTypeIsMutable() {
            if ((this.bitField0_ & 256) != 256) {
                this.contextReceiverType_ = new ArrayList(this.contextReceiverType_);
                this.bitField0_ |= 256;
            }
        }

        private void ensureContextReceiverTypeIdIsMutable() {
            if ((this.bitField0_ & 512) != 512) {
                this.contextReceiverTypeId_ = new ArrayList(this.contextReceiverTypeId_);
                this.bitField0_ |= 512;
            }
        }

        public Builder mergeSetterValueParameter(ProtoBuf$ValueParameter protoBuf$ValueParameter) {
            if ((this.bitField0_ & 1024) == 1024 && this.setterValueParameter_ != ProtoBuf$ValueParameter.getDefaultInstance()) {
                this.setterValueParameter_ = ProtoBuf$ValueParameter.newBuilder(this.setterValueParameter_).mergeFrom(protoBuf$ValueParameter).buildPartial();
            } else {
                this.setterValueParameter_ = protoBuf$ValueParameter;
            }
            this.bitField0_ |= 1024;
            return this;
        }

        public Builder setGetterFlags(int i) {
            this.bitField0_ |= 2048;
            this.getterFlags_ = i;
            return this;
        }

        public Builder setSetterFlags(int i) {
            this.bitField0_ |= 4096;
            this.setterFlags_ = i;
            return this;
        }

        private void ensureVersionRequirementIsMutable() {
            if ((this.bitField0_ & 8192) != 8192) {
                this.versionRequirement_ = new ArrayList(this.versionRequirement_);
                this.bitField0_ |= 8192;
            }
        }
    }
}
