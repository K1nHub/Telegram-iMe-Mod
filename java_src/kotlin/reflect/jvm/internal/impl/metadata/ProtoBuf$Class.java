package kotlin.reflect.jvm.internal.impl.metadata;

import com.google.android.exoplayer2.extractor.p015ts.PsExtractor;
import com.google.android.exoplayer2.extractor.p015ts.TsExtractor;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractParser;
import kotlin.reflect.jvm.internal.impl.protobuf.ByteString;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedOutputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.Internal;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.protobuf.Parser;
import org.telegram.messenger.LiteMode;
/* loaded from: classes4.dex */
public final class ProtoBuf$Class extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$Class> {
    public static Parser<ProtoBuf$Class> PARSER = new AbstractParser<ProtoBuf$Class>() { // from class: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class.1
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Parser
        public ProtoBuf$Class parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new ProtoBuf$Class(codedInputStream, extensionRegistryLite);
        }
    };
    private static final ProtoBuf$Class defaultInstance;
    private int bitField0_;
    private int companionObjectName_;
    private List<ProtoBuf$Constructor> constructor_;
    private int contextReceiverTypeIdMemoizedSerializedSize;
    private List<Integer> contextReceiverTypeId_;
    private List<ProtoBuf$Type> contextReceiverType_;
    private List<ProtoBuf$EnumEntry> enumEntry_;
    private int flags_;
    private int fqName_;
    private List<ProtoBuf$Function> function_;
    private int inlineClassUnderlyingPropertyName_;
    private int inlineClassUnderlyingTypeId_;
    private ProtoBuf$Type inlineClassUnderlyingType_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private int multiFieldValueClassUnderlyingNameMemoizedSerializedSize;
    private List<Integer> multiFieldValueClassUnderlyingName_;
    private int multiFieldValueClassUnderlyingTypeIdMemoizedSerializedSize;
    private List<Integer> multiFieldValueClassUnderlyingTypeId_;
    private List<ProtoBuf$Type> multiFieldValueClassUnderlyingType_;
    private int nestedClassNameMemoizedSerializedSize;
    private List<Integer> nestedClassName_;
    private List<ProtoBuf$Property> property_;
    private int sealedSubclassFqNameMemoizedSerializedSize;
    private List<Integer> sealedSubclassFqName_;
    private int supertypeIdMemoizedSerializedSize;
    private List<Integer> supertypeId_;
    private List<ProtoBuf$Type> supertype_;
    private List<ProtoBuf$TypeAlias> typeAlias_;
    private List<ProtoBuf$TypeParameter> typeParameter_;
    private ProtoBuf$TypeTable typeTable_;
    private final ByteString unknownFields;
    private ProtoBuf$VersionRequirementTable versionRequirementTable_;
    private List<Integer> versionRequirement_;

    private ProtoBuf$Class(GeneratedMessageLite.ExtendableBuilder<ProtoBuf$Class, ?> extendableBuilder) {
        super(extendableBuilder);
        this.supertypeIdMemoizedSerializedSize = -1;
        this.nestedClassNameMemoizedSerializedSize = -1;
        this.contextReceiverTypeIdMemoizedSerializedSize = -1;
        this.sealedSubclassFqNameMemoizedSerializedSize = -1;
        this.multiFieldValueClassUnderlyingNameMemoizedSerializedSize = -1;
        this.multiFieldValueClassUnderlyingTypeIdMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = extendableBuilder.getUnknownFields();
    }

    private ProtoBuf$Class(boolean z) {
        this.supertypeIdMemoizedSerializedSize = -1;
        this.nestedClassNameMemoizedSerializedSize = -1;
        this.contextReceiverTypeIdMemoizedSerializedSize = -1;
        this.sealedSubclassFqNameMemoizedSerializedSize = -1;
        this.multiFieldValueClassUnderlyingNameMemoizedSerializedSize = -1;
        this.multiFieldValueClassUnderlyingTypeIdMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = ByteString.EMPTY;
    }

    public static ProtoBuf$Class getDefaultInstance() {
        return defaultInstance;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLiteOrBuilder
    public ProtoBuf$Class getDefaultInstanceForType() {
        return defaultInstance;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v4, types: [boolean] */
    private ProtoBuf$Class(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        boolean z;
        this.supertypeIdMemoizedSerializedSize = -1;
        this.nestedClassNameMemoizedSerializedSize = -1;
        this.contextReceiverTypeIdMemoizedSerializedSize = -1;
        this.sealedSubclassFqNameMemoizedSerializedSize = -1;
        this.multiFieldValueClassUnderlyingNameMemoizedSerializedSize = -1;
        this.multiFieldValueClassUnderlyingTypeIdMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        initFields();
        ByteString.Output newOutput = ByteString.newOutput();
        CodedOutputStream newInstance = CodedOutputStream.newInstance(newOutput, 1);
        boolean z2 = false;
        boolean z3 = false;
        while (true) {
            ?? r5 = 4194304;
            if (!z2) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        switch (readTag) {
                            case 0:
                                z = true;
                                z2 = z;
                                break;
                            case 8:
                                z = true;
                                this.bitField0_ |= 1;
                                this.flags_ = codedInputStream.readInt32();
                                break;
                            case 16:
                                boolean z4 = (z3 ? 1 : 0) & true;
                                boolean z5 = z3;
                                if (!z4) {
                                    this.supertypeId_ = new ArrayList();
                                    z5 = (z3 ? 1 : 0) | true;
                                }
                                this.supertypeId_.add(Integer.valueOf(codedInputStream.readInt32()));
                                z3 = z5;
                                z = true;
                                break;
                            case 18:
                                int pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                boolean z6 = (z3 ? 1 : 0) & true;
                                boolean z7 = z3;
                                if (!z6) {
                                    z7 = z3;
                                    if (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.supertypeId_ = new ArrayList();
                                        z7 = (z3 ? 1 : 0) | true;
                                    }
                                }
                                while (codedInputStream.getBytesUntilLimit() > 0) {
                                    this.supertypeId_.add(Integer.valueOf(codedInputStream.readInt32()));
                                }
                                codedInputStream.popLimit(pushLimit);
                                z3 = z7;
                                z = true;
                                break;
                            case 24:
                                this.bitField0_ |= 2;
                                this.fqName_ = codedInputStream.readInt32();
                                z3 = z3;
                                z = true;
                                break;
                            case 32:
                                this.bitField0_ |= 4;
                                this.companionObjectName_ = codedInputStream.readInt32();
                                z3 = z3;
                                z = true;
                                break;
                            case 42:
                                boolean z8 = (z3 ? 1 : 0) & true;
                                boolean z9 = z3;
                                if (!z8) {
                                    this.typeParameter_ = new ArrayList();
                                    z9 = (z3 ? 1 : 0) | true;
                                }
                                this.typeParameter_.add(codedInputStream.readMessage(ProtoBuf$TypeParameter.PARSER, extensionRegistryLite));
                                z3 = z9;
                                z = true;
                                break;
                            case 50:
                                boolean z10 = (z3 ? 1 : 0) & true;
                                boolean z11 = z3;
                                if (!z10) {
                                    this.supertype_ = new ArrayList();
                                    z11 = (z3 ? 1 : 0) | true;
                                }
                                this.supertype_.add(codedInputStream.readMessage(ProtoBuf$Type.PARSER, extensionRegistryLite));
                                z3 = z11;
                                z = true;
                                break;
                            case 56:
                                boolean z12 = (z3 ? 1 : 0) & true;
                                boolean z13 = z3;
                                if (!z12) {
                                    this.nestedClassName_ = new ArrayList();
                                    z13 = (z3 ? 1 : 0) | true;
                                }
                                this.nestedClassName_.add(Integer.valueOf(codedInputStream.readInt32()));
                                z3 = z13;
                                z = true;
                                break;
                            case 58:
                                int pushLimit2 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                boolean z14 = (z3 ? 1 : 0) & true;
                                boolean z15 = z3;
                                if (!z14) {
                                    z15 = z3;
                                    if (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.nestedClassName_ = new ArrayList();
                                        z15 = (z3 ? 1 : 0) | true;
                                    }
                                }
                                while (codedInputStream.getBytesUntilLimit() > 0) {
                                    this.nestedClassName_.add(Integer.valueOf(codedInputStream.readInt32()));
                                }
                                codedInputStream.popLimit(pushLimit2);
                                z3 = z15;
                                z = true;
                                break;
                            case 66:
                                boolean z16 = (z3 ? 1 : 0) & true;
                                boolean z17 = z3;
                                if (!z16) {
                                    this.constructor_ = new ArrayList();
                                    z17 = (z3 ? 1 : 0) | true;
                                }
                                this.constructor_.add(codedInputStream.readMessage(ProtoBuf$Constructor.PARSER, extensionRegistryLite));
                                z3 = z17;
                                z = true;
                                break;
                            case 74:
                                boolean z18 = (z3 ? 1 : 0) & true;
                                boolean z19 = z3;
                                if (!z18) {
                                    this.function_ = new ArrayList();
                                    z19 = (z3 ? 1 : 0) | true;
                                }
                                this.function_.add(codedInputStream.readMessage(ProtoBuf$Function.PARSER, extensionRegistryLite));
                                z3 = z19;
                                z = true;
                                break;
                            case 82:
                                boolean z20 = (z3 ? 1 : 0) & true;
                                boolean z21 = z3;
                                if (!z20) {
                                    this.property_ = new ArrayList();
                                    z21 = (z3 ? 1 : 0) | true;
                                }
                                this.property_.add(codedInputStream.readMessage(ProtoBuf$Property.PARSER, extensionRegistryLite));
                                z3 = z21;
                                z = true;
                                break;
                            case 90:
                                boolean z22 = (z3 ? 1 : 0) & true;
                                boolean z23 = z3;
                                if (!z22) {
                                    this.typeAlias_ = new ArrayList();
                                    z23 = (z3 ? 1 : 0) | true;
                                }
                                this.typeAlias_.add(codedInputStream.readMessage(ProtoBuf$TypeAlias.PARSER, extensionRegistryLite));
                                z3 = z23;
                                z = true;
                                break;
                            case 106:
                                boolean z24 = (z3 ? 1 : 0) & true;
                                boolean z25 = z3;
                                if (!z24) {
                                    this.enumEntry_ = new ArrayList();
                                    z25 = (z3 ? 1 : 0) | true;
                                }
                                this.enumEntry_.add(codedInputStream.readMessage(ProtoBuf$EnumEntry.PARSER, extensionRegistryLite));
                                z3 = z25;
                                z = true;
                                break;
                            case 128:
                                boolean z26 = (z3 ? 1 : 0) & true;
                                boolean z27 = z3;
                                if (!z26) {
                                    this.sealedSubclassFqName_ = new ArrayList();
                                    z27 = (z3 ? 1 : 0) | true;
                                }
                                this.sealedSubclassFqName_.add(Integer.valueOf(codedInputStream.readInt32()));
                                z3 = z27;
                                z = true;
                                break;
                            case TsExtractor.TS_STREAM_TYPE_HDMV_DTS /* 130 */:
                                int pushLimit3 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                boolean z28 = (z3 ? 1 : 0) & true;
                                boolean z29 = z3;
                                if (!z28) {
                                    z29 = z3;
                                    if (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.sealedSubclassFqName_ = new ArrayList();
                                        z29 = (z3 ? 1 : 0) | true;
                                    }
                                }
                                while (codedInputStream.getBytesUntilLimit() > 0) {
                                    this.sealedSubclassFqName_.add(Integer.valueOf(codedInputStream.readInt32()));
                                }
                                codedInputStream.popLimit(pushLimit3);
                                z3 = z29;
                                z = true;
                                break;
                            case 136:
                                this.bitField0_ |= 8;
                                this.inlineClassUnderlyingPropertyName_ = codedInputStream.readInt32();
                                z3 = z3;
                                z = true;
                                break;
                            case 146:
                                ProtoBuf$Type.Builder builder = (this.bitField0_ & 16) == 16 ? this.inlineClassUnderlyingType_.toBuilder() : null;
                                ProtoBuf$Type protoBuf$Type = (ProtoBuf$Type) codedInputStream.readMessage(ProtoBuf$Type.PARSER, extensionRegistryLite);
                                this.inlineClassUnderlyingType_ = protoBuf$Type;
                                if (builder != null) {
                                    builder.mergeFrom(protoBuf$Type);
                                    this.inlineClassUnderlyingType_ = builder.buildPartial();
                                }
                                this.bitField0_ |= 16;
                                z3 = z3;
                                z = true;
                                break;
                            case 152:
                                this.bitField0_ |= 32;
                                this.inlineClassUnderlyingTypeId_ = codedInputStream.readInt32();
                                z3 = z3;
                                z = true;
                                break;
                            case 162:
                                boolean z30 = (z3 ? 1 : 0) & true;
                                boolean z31 = z3;
                                if (!z30) {
                                    this.contextReceiverType_ = new ArrayList();
                                    z31 = (z3 ? 1 : 0) | true;
                                }
                                this.contextReceiverType_.add(codedInputStream.readMessage(ProtoBuf$Type.PARSER, extensionRegistryLite));
                                z3 = z31;
                                z = true;
                                break;
                            case 168:
                                boolean z32 = (z3 ? 1 : 0) & true;
                                boolean z33 = z3;
                                if (!z32) {
                                    this.contextReceiverTypeId_ = new ArrayList();
                                    z33 = (z3 ? 1 : 0) | true;
                                }
                                this.contextReceiverTypeId_.add(Integer.valueOf(codedInputStream.readInt32()));
                                z3 = z33;
                                z = true;
                                break;
                            case 170:
                                int pushLimit4 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                boolean z34 = (z3 ? 1 : 0) & true;
                                boolean z35 = z3;
                                if (!z34) {
                                    z35 = z3;
                                    if (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.contextReceiverTypeId_ = new ArrayList();
                                        z35 = (z3 ? 1 : 0) | true;
                                    }
                                }
                                while (codedInputStream.getBytesUntilLimit() > 0) {
                                    this.contextReceiverTypeId_.add(Integer.valueOf(codedInputStream.readInt32()));
                                }
                                codedInputStream.popLimit(pushLimit4);
                                z3 = z35;
                                z = true;
                                break;
                            case 176:
                                boolean z36 = (z3 ? 1 : 0) & true;
                                boolean z37 = z3;
                                if (!z36) {
                                    this.multiFieldValueClassUnderlyingName_ = new ArrayList();
                                    z37 = (z3 ? 1 : 0) | true;
                                }
                                this.multiFieldValueClassUnderlyingName_.add(Integer.valueOf(codedInputStream.readInt32()));
                                z3 = z37;
                                z = true;
                                break;
                            case 178:
                                int pushLimit5 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                boolean z38 = (z3 ? 1 : 0) & true;
                                boolean z39 = z3;
                                if (!z38) {
                                    z39 = z3;
                                    if (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.multiFieldValueClassUnderlyingName_ = new ArrayList();
                                        z39 = (z3 ? 1 : 0) | true;
                                    }
                                }
                                while (codedInputStream.getBytesUntilLimit() > 0) {
                                    this.multiFieldValueClassUnderlyingName_.add(Integer.valueOf(codedInputStream.readInt32()));
                                }
                                codedInputStream.popLimit(pushLimit5);
                                z3 = z39;
                                z = true;
                                break;
                            case 186:
                                boolean z40 = (z3 ? 1 : 0) & true;
                                boolean z41 = z3;
                                if (!z40) {
                                    this.multiFieldValueClassUnderlyingType_ = new ArrayList();
                                    z41 = (z3 ? 1 : 0) | true;
                                }
                                this.multiFieldValueClassUnderlyingType_.add(codedInputStream.readMessage(ProtoBuf$Type.PARSER, extensionRegistryLite));
                                z3 = z41;
                                z = true;
                                break;
                            case PsExtractor.AUDIO_STREAM /* 192 */:
                                boolean z42 = (z3 ? 1 : 0) & true;
                                boolean z43 = z3;
                                if (!z42) {
                                    this.multiFieldValueClassUnderlyingTypeId_ = new ArrayList();
                                    z43 = (z3 ? 1 : 0) | true;
                                }
                                this.multiFieldValueClassUnderlyingTypeId_.add(Integer.valueOf(codedInputStream.readInt32()));
                                z3 = z43;
                                z = true;
                                break;
                            case 194:
                                int pushLimit6 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                boolean z44 = (z3 ? 1 : 0) & true;
                                boolean z45 = z3;
                                if (!z44) {
                                    z45 = z3;
                                    if (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.multiFieldValueClassUnderlyingTypeId_ = new ArrayList();
                                        z45 = (z3 ? 1 : 0) | true;
                                    }
                                }
                                while (codedInputStream.getBytesUntilLimit() > 0) {
                                    this.multiFieldValueClassUnderlyingTypeId_.add(Integer.valueOf(codedInputStream.readInt32()));
                                }
                                codedInputStream.popLimit(pushLimit6);
                                z3 = z45;
                                z = true;
                                break;
                            case 242:
                                ProtoBuf$TypeTable.Builder builder2 = (this.bitField0_ & 64) == 64 ? this.typeTable_.toBuilder() : null;
                                ProtoBuf$TypeTable protoBuf$TypeTable = (ProtoBuf$TypeTable) codedInputStream.readMessage(ProtoBuf$TypeTable.PARSER, extensionRegistryLite);
                                this.typeTable_ = protoBuf$TypeTable;
                                if (builder2 != null) {
                                    builder2.mergeFrom(protoBuf$TypeTable);
                                    this.typeTable_ = builder2.buildPartial();
                                }
                                this.bitField0_ |= 64;
                                z3 = z3;
                                z = true;
                                break;
                            case 248:
                                boolean z46 = (z3 ? 1 : 0) & true;
                                boolean z47 = z3;
                                if (!z46) {
                                    this.versionRequirement_ = new ArrayList();
                                    z47 = (z3 ? 1 : 0) | true;
                                }
                                this.versionRequirement_.add(Integer.valueOf(codedInputStream.readInt32()));
                                z3 = z47;
                                z = true;
                                break;
                            case 250:
                                int pushLimit7 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                boolean z48 = (z3 ? 1 : 0) & true;
                                boolean z49 = z3;
                                if (!z48) {
                                    z49 = z3;
                                    if (codedInputStream.getBytesUntilLimit() > 0) {
                                        this.versionRequirement_ = new ArrayList();
                                        z49 = (z3 ? 1 : 0) | true;
                                    }
                                }
                                while (codedInputStream.getBytesUntilLimit() > 0) {
                                    this.versionRequirement_.add(Integer.valueOf(codedInputStream.readInt32()));
                                }
                                codedInputStream.popLimit(pushLimit7);
                                z3 = z49;
                                z = true;
                                break;
                            case 258:
                                ProtoBuf$VersionRequirementTable.Builder builder3 = (this.bitField0_ & 128) == 128 ? this.versionRequirementTable_.toBuilder() : null;
                                ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable = (ProtoBuf$VersionRequirementTable) codedInputStream.readMessage(ProtoBuf$VersionRequirementTable.PARSER, extensionRegistryLite);
                                this.versionRequirementTable_ = protoBuf$VersionRequirementTable;
                                if (builder3 != null) {
                                    builder3.mergeFrom(protoBuf$VersionRequirementTable);
                                    this.versionRequirementTable_ = builder3.buildPartial();
                                }
                                this.bitField0_ |= 128;
                                z3 = z3;
                                z = true;
                                break;
                            default:
                                z = true;
                                r5 = parseUnknownField(codedInputStream, newInstance, extensionRegistryLite, readTag);
                                if (r5 != 0) {
                                    break;
                                }
                                z2 = z;
                                break;
                        }
                        z3 = z3;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    if ((z3 ? 1 : 0) & true) {
                        this.supertypeId_ = Collections.unmodifiableList(this.supertypeId_);
                    }
                    if ((z3 ? 1 : 0) & true) {
                        this.typeParameter_ = Collections.unmodifiableList(this.typeParameter_);
                    }
                    if ((z3 ? 1 : 0) & true) {
                        this.supertype_ = Collections.unmodifiableList(this.supertype_);
                    }
                    if ((z3 ? 1 : 0) & true) {
                        this.nestedClassName_ = Collections.unmodifiableList(this.nestedClassName_);
                    }
                    if ((z3 ? 1 : 0) & true) {
                        this.constructor_ = Collections.unmodifiableList(this.constructor_);
                    }
                    if ((z3 ? 1 : 0) & true) {
                        this.function_ = Collections.unmodifiableList(this.function_);
                    }
                    if ((z3 ? 1 : 0) & true) {
                        this.property_ = Collections.unmodifiableList(this.property_);
                    }
                    if ((z3 ? 1 : 0) & true) {
                        this.typeAlias_ = Collections.unmodifiableList(this.typeAlias_);
                    }
                    if ((z3 ? 1 : 0) & true) {
                        this.enumEntry_ = Collections.unmodifiableList(this.enumEntry_);
                    }
                    if ((z3 ? 1 : 0) & true) {
                        this.sealedSubclassFqName_ = Collections.unmodifiableList(this.sealedSubclassFqName_);
                    }
                    if ((z3 ? 1 : 0) & true) {
                        this.contextReceiverType_ = Collections.unmodifiableList(this.contextReceiverType_);
                    }
                    if ((z3 ? 1 : 0) & true) {
                        this.contextReceiverTypeId_ = Collections.unmodifiableList(this.contextReceiverTypeId_);
                    }
                    if ((z3 ? 1 : 0) & true) {
                        this.multiFieldValueClassUnderlyingName_ = Collections.unmodifiableList(this.multiFieldValueClassUnderlyingName_);
                    }
                    if ((z3 ? 1 : 0) & true) {
                        this.multiFieldValueClassUnderlyingType_ = Collections.unmodifiableList(this.multiFieldValueClassUnderlyingType_);
                    }
                    if ((z3 ? 1 : 0) & true) {
                        this.multiFieldValueClassUnderlyingTypeId_ = Collections.unmodifiableList(this.multiFieldValueClassUnderlyingTypeId_);
                    }
                    if (((z3 ? 1 : 0) & r5) == r5) {
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
                if ((z3 ? 1 : 0) & true) {
                    this.supertypeId_ = Collections.unmodifiableList(this.supertypeId_);
                }
                if ((z3 ? 1 : 0) & true) {
                    this.typeParameter_ = Collections.unmodifiableList(this.typeParameter_);
                }
                if ((z3 ? 1 : 0) & true) {
                    this.supertype_ = Collections.unmodifiableList(this.supertype_);
                }
                if ((z3 ? 1 : 0) & true) {
                    this.nestedClassName_ = Collections.unmodifiableList(this.nestedClassName_);
                }
                if ((z3 ? 1 : 0) & true) {
                    this.constructor_ = Collections.unmodifiableList(this.constructor_);
                }
                if ((z3 ? 1 : 0) & true) {
                    this.function_ = Collections.unmodifiableList(this.function_);
                }
                if ((z3 ? 1 : 0) & true) {
                    this.property_ = Collections.unmodifiableList(this.property_);
                }
                if ((z3 ? 1 : 0) & true) {
                    this.typeAlias_ = Collections.unmodifiableList(this.typeAlias_);
                }
                if ((z3 ? 1 : 0) & true) {
                    this.enumEntry_ = Collections.unmodifiableList(this.enumEntry_);
                }
                if ((z3 ? 1 : 0) & true) {
                    this.sealedSubclassFqName_ = Collections.unmodifiableList(this.sealedSubclassFqName_);
                }
                if ((z3 ? 1 : 0) & true) {
                    this.contextReceiverType_ = Collections.unmodifiableList(this.contextReceiverType_);
                }
                if ((z3 ? 1 : 0) & true) {
                    this.contextReceiverTypeId_ = Collections.unmodifiableList(this.contextReceiverTypeId_);
                }
                if ((z3 ? 1 : 0) & true) {
                    this.multiFieldValueClassUnderlyingName_ = Collections.unmodifiableList(this.multiFieldValueClassUnderlyingName_);
                }
                if ((z3 ? 1 : 0) & true) {
                    this.multiFieldValueClassUnderlyingType_ = Collections.unmodifiableList(this.multiFieldValueClassUnderlyingType_);
                }
                if ((z3 ? 1 : 0) & true) {
                    this.multiFieldValueClassUnderlyingTypeId_ = Collections.unmodifiableList(this.multiFieldValueClassUnderlyingTypeId_);
                }
                if ((z3 ? 1 : 0) & true) {
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
        ProtoBuf$Class protoBuf$Class = new ProtoBuf$Class(true);
        defaultInstance = protoBuf$Class;
        protoBuf$Class.initFields();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite, kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public Parser<ProtoBuf$Class> getParserForType() {
        return PARSER;
    }

    /* loaded from: classes4.dex */
    public enum Kind implements Internal.EnumLite {
        CLASS(0, 0),
        INTERFACE(1, 1),
        ENUM_CLASS(2, 2),
        ENUM_ENTRY(3, 3),
        ANNOTATION_CLASS(4, 4),
        OBJECT(5, 5),
        COMPANION_OBJECT(6, 6);
        
        private static Internal.EnumLiteMap<Kind> internalValueMap = new Internal.EnumLiteMap<Kind>() { // from class: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf.Class.Kind.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLiteMap
            public Kind findValueByNumber(int i) {
                return Kind.valueOf(i);
            }
        };
        private final int value;

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }

        public static Kind valueOf(int i) {
            switch (i) {
                case 0:
                    return CLASS;
                case 1:
                    return INTERFACE;
                case 2:
                    return ENUM_CLASS;
                case 3:
                    return ENUM_ENTRY;
                case 4:
                    return ANNOTATION_CLASS;
                case 5:
                    return OBJECT;
                case 6:
                    return COMPANION_OBJECT;
                default:
                    return null;
            }
        }

        Kind(int i, int i2) {
            this.value = i2;
        }
    }

    public boolean hasFlags() {
        return (this.bitField0_ & 1) == 1;
    }

    public int getFlags() {
        return this.flags_;
    }

    public boolean hasFqName() {
        return (this.bitField0_ & 2) == 2;
    }

    public int getFqName() {
        return this.fqName_;
    }

    public boolean hasCompanionObjectName() {
        return (this.bitField0_ & 4) == 4;
    }

    public int getCompanionObjectName() {
        return this.companionObjectName_;
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

    public List<ProtoBuf$Type> getSupertypeList() {
        return this.supertype_;
    }

    public int getSupertypeCount() {
        return this.supertype_.size();
    }

    public ProtoBuf$Type getSupertype(int i) {
        return this.supertype_.get(i);
    }

    public List<Integer> getSupertypeIdList() {
        return this.supertypeId_;
    }

    public List<Integer> getNestedClassNameList() {
        return this.nestedClassName_;
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

    public List<ProtoBuf$Constructor> getConstructorList() {
        return this.constructor_;
    }

    public int getConstructorCount() {
        return this.constructor_.size();
    }

    public ProtoBuf$Constructor getConstructor(int i) {
        return this.constructor_.get(i);
    }

    public List<ProtoBuf$Function> getFunctionList() {
        return this.function_;
    }

    public int getFunctionCount() {
        return this.function_.size();
    }

    public ProtoBuf$Function getFunction(int i) {
        return this.function_.get(i);
    }

    public List<ProtoBuf$Property> getPropertyList() {
        return this.property_;
    }

    public int getPropertyCount() {
        return this.property_.size();
    }

    public ProtoBuf$Property getProperty(int i) {
        return this.property_.get(i);
    }

    public List<ProtoBuf$TypeAlias> getTypeAliasList() {
        return this.typeAlias_;
    }

    public int getTypeAliasCount() {
        return this.typeAlias_.size();
    }

    public ProtoBuf$TypeAlias getTypeAlias(int i) {
        return this.typeAlias_.get(i);
    }

    public List<ProtoBuf$EnumEntry> getEnumEntryList() {
        return this.enumEntry_;
    }

    public int getEnumEntryCount() {
        return this.enumEntry_.size();
    }

    public ProtoBuf$EnumEntry getEnumEntry(int i) {
        return this.enumEntry_.get(i);
    }

    public List<Integer> getSealedSubclassFqNameList() {
        return this.sealedSubclassFqName_;
    }

    public boolean hasInlineClassUnderlyingPropertyName() {
        return (this.bitField0_ & 8) == 8;
    }

    public int getInlineClassUnderlyingPropertyName() {
        return this.inlineClassUnderlyingPropertyName_;
    }

    public boolean hasInlineClassUnderlyingType() {
        return (this.bitField0_ & 16) == 16;
    }

    public ProtoBuf$Type getInlineClassUnderlyingType() {
        return this.inlineClassUnderlyingType_;
    }

    public boolean hasInlineClassUnderlyingTypeId() {
        return (this.bitField0_ & 32) == 32;
    }

    public int getInlineClassUnderlyingTypeId() {
        return this.inlineClassUnderlyingTypeId_;
    }

    public List<Integer> getMultiFieldValueClassUnderlyingNameList() {
        return this.multiFieldValueClassUnderlyingName_;
    }

    public int getMultiFieldValueClassUnderlyingNameCount() {
        return this.multiFieldValueClassUnderlyingName_.size();
    }

    public List<ProtoBuf$Type> getMultiFieldValueClassUnderlyingTypeList() {
        return this.multiFieldValueClassUnderlyingType_;
    }

    public int getMultiFieldValueClassUnderlyingTypeCount() {
        return this.multiFieldValueClassUnderlyingType_.size();
    }

    public ProtoBuf$Type getMultiFieldValueClassUnderlyingType(int i) {
        return this.multiFieldValueClassUnderlyingType_.get(i);
    }

    public List<Integer> getMultiFieldValueClassUnderlyingTypeIdList() {
        return this.multiFieldValueClassUnderlyingTypeId_;
    }

    public int getMultiFieldValueClassUnderlyingTypeIdCount() {
        return this.multiFieldValueClassUnderlyingTypeId_.size();
    }

    public boolean hasTypeTable() {
        return (this.bitField0_ & 64) == 64;
    }

    public ProtoBuf$TypeTable getTypeTable() {
        return this.typeTable_;
    }

    public List<Integer> getVersionRequirementList() {
        return this.versionRequirement_;
    }

    public boolean hasVersionRequirementTable() {
        return (this.bitField0_ & 128) == 128;
    }

    public ProtoBuf$VersionRequirementTable getVersionRequirementTable() {
        return this.versionRequirementTable_;
    }

    private void initFields() {
        this.flags_ = 6;
        this.fqName_ = 0;
        this.companionObjectName_ = 0;
        this.typeParameter_ = Collections.emptyList();
        this.supertype_ = Collections.emptyList();
        this.supertypeId_ = Collections.emptyList();
        this.nestedClassName_ = Collections.emptyList();
        this.contextReceiverType_ = Collections.emptyList();
        this.contextReceiverTypeId_ = Collections.emptyList();
        this.constructor_ = Collections.emptyList();
        this.function_ = Collections.emptyList();
        this.property_ = Collections.emptyList();
        this.typeAlias_ = Collections.emptyList();
        this.enumEntry_ = Collections.emptyList();
        this.sealedSubclassFqName_ = Collections.emptyList();
        this.inlineClassUnderlyingPropertyName_ = 0;
        this.inlineClassUnderlyingType_ = ProtoBuf$Type.getDefaultInstance();
        this.inlineClassUnderlyingTypeId_ = 0;
        this.multiFieldValueClassUnderlyingName_ = Collections.emptyList();
        this.multiFieldValueClassUnderlyingType_ = Collections.emptyList();
        this.multiFieldValueClassUnderlyingTypeId_ = Collections.emptyList();
        this.typeTable_ = ProtoBuf$TypeTable.getDefaultInstance();
        this.versionRequirement_ = Collections.emptyList();
        this.versionRequirementTable_ = ProtoBuf$VersionRequirementTable.getDefaultInstance();
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
        if (!hasFqName()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        for (int i = 0; i < getTypeParameterCount(); i++) {
            if (!getTypeParameter(i).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i2 = 0; i2 < getSupertypeCount(); i2++) {
            if (!getSupertype(i2).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i3 = 0; i3 < getContextReceiverTypeCount(); i3++) {
            if (!getContextReceiverType(i3).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i4 = 0; i4 < getConstructorCount(); i4++) {
            if (!getConstructor(i4).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i5 = 0; i5 < getFunctionCount(); i5++) {
            if (!getFunction(i5).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i6 = 0; i6 < getPropertyCount(); i6++) {
            if (!getProperty(i6).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i7 = 0; i7 < getTypeAliasCount(); i7++) {
            if (!getTypeAlias(i7).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i8 = 0; i8 < getEnumEntryCount(); i8++) {
            if (!getEnumEntry(i8).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        if (hasInlineClassUnderlyingType() && !getInlineClassUnderlyingType().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        for (int i9 = 0; i9 < getMultiFieldValueClassUnderlyingTypeCount(); i9++) {
            if (!getMultiFieldValueClassUnderlyingType(i9).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        if (hasTypeTable() && !getTypeTable().isInitialized()) {
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
        if ((this.bitField0_ & 1) == 1) {
            codedOutputStream.writeInt32(1, this.flags_);
        }
        if (getSupertypeIdList().size() > 0) {
            codedOutputStream.writeRawVarint32(18);
            codedOutputStream.writeRawVarint32(this.supertypeIdMemoizedSerializedSize);
        }
        for (int i = 0; i < this.supertypeId_.size(); i++) {
            codedOutputStream.writeInt32NoTag(this.supertypeId_.get(i).intValue());
        }
        if ((this.bitField0_ & 2) == 2) {
            codedOutputStream.writeInt32(3, this.fqName_);
        }
        if ((this.bitField0_ & 4) == 4) {
            codedOutputStream.writeInt32(4, this.companionObjectName_);
        }
        for (int i2 = 0; i2 < this.typeParameter_.size(); i2++) {
            codedOutputStream.writeMessage(5, this.typeParameter_.get(i2));
        }
        for (int i3 = 0; i3 < this.supertype_.size(); i3++) {
            codedOutputStream.writeMessage(6, this.supertype_.get(i3));
        }
        if (getNestedClassNameList().size() > 0) {
            codedOutputStream.writeRawVarint32(58);
            codedOutputStream.writeRawVarint32(this.nestedClassNameMemoizedSerializedSize);
        }
        for (int i4 = 0; i4 < this.nestedClassName_.size(); i4++) {
            codedOutputStream.writeInt32NoTag(this.nestedClassName_.get(i4).intValue());
        }
        for (int i5 = 0; i5 < this.constructor_.size(); i5++) {
            codedOutputStream.writeMessage(8, this.constructor_.get(i5));
        }
        for (int i6 = 0; i6 < this.function_.size(); i6++) {
            codedOutputStream.writeMessage(9, this.function_.get(i6));
        }
        for (int i7 = 0; i7 < this.property_.size(); i7++) {
            codedOutputStream.writeMessage(10, this.property_.get(i7));
        }
        for (int i8 = 0; i8 < this.typeAlias_.size(); i8++) {
            codedOutputStream.writeMessage(11, this.typeAlias_.get(i8));
        }
        for (int i9 = 0; i9 < this.enumEntry_.size(); i9++) {
            codedOutputStream.writeMessage(13, this.enumEntry_.get(i9));
        }
        if (getSealedSubclassFqNameList().size() > 0) {
            codedOutputStream.writeRawVarint32(TsExtractor.TS_STREAM_TYPE_HDMV_DTS);
            codedOutputStream.writeRawVarint32(this.sealedSubclassFqNameMemoizedSerializedSize);
        }
        for (int i10 = 0; i10 < this.sealedSubclassFqName_.size(); i10++) {
            codedOutputStream.writeInt32NoTag(this.sealedSubclassFqName_.get(i10).intValue());
        }
        if ((this.bitField0_ & 8) == 8) {
            codedOutputStream.writeInt32(17, this.inlineClassUnderlyingPropertyName_);
        }
        if ((this.bitField0_ & 16) == 16) {
            codedOutputStream.writeMessage(18, this.inlineClassUnderlyingType_);
        }
        if ((this.bitField0_ & 32) == 32) {
            codedOutputStream.writeInt32(19, this.inlineClassUnderlyingTypeId_);
        }
        for (int i11 = 0; i11 < this.contextReceiverType_.size(); i11++) {
            codedOutputStream.writeMessage(20, this.contextReceiverType_.get(i11));
        }
        if (getContextReceiverTypeIdList().size() > 0) {
            codedOutputStream.writeRawVarint32(170);
            codedOutputStream.writeRawVarint32(this.contextReceiverTypeIdMemoizedSerializedSize);
        }
        for (int i12 = 0; i12 < this.contextReceiverTypeId_.size(); i12++) {
            codedOutputStream.writeInt32NoTag(this.contextReceiverTypeId_.get(i12).intValue());
        }
        if (getMultiFieldValueClassUnderlyingNameList().size() > 0) {
            codedOutputStream.writeRawVarint32(178);
            codedOutputStream.writeRawVarint32(this.multiFieldValueClassUnderlyingNameMemoizedSerializedSize);
        }
        for (int i13 = 0; i13 < this.multiFieldValueClassUnderlyingName_.size(); i13++) {
            codedOutputStream.writeInt32NoTag(this.multiFieldValueClassUnderlyingName_.get(i13).intValue());
        }
        for (int i14 = 0; i14 < this.multiFieldValueClassUnderlyingType_.size(); i14++) {
            codedOutputStream.writeMessage(23, this.multiFieldValueClassUnderlyingType_.get(i14));
        }
        if (getMultiFieldValueClassUnderlyingTypeIdList().size() > 0) {
            codedOutputStream.writeRawVarint32(194);
            codedOutputStream.writeRawVarint32(this.multiFieldValueClassUnderlyingTypeIdMemoizedSerializedSize);
        }
        for (int i15 = 0; i15 < this.multiFieldValueClassUnderlyingTypeId_.size(); i15++) {
            codedOutputStream.writeInt32NoTag(this.multiFieldValueClassUnderlyingTypeId_.get(i15).intValue());
        }
        if ((this.bitField0_ & 64) == 64) {
            codedOutputStream.writeMessage(30, this.typeTable_);
        }
        for (int i16 = 0; i16 < this.versionRequirement_.size(); i16++) {
            codedOutputStream.writeInt32(31, this.versionRequirement_.get(i16).intValue());
        }
        if ((this.bitField0_ & 128) == 128) {
            codedOutputStream.writeMessage(32, this.versionRequirementTable_);
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
        int computeInt32Size = (this.bitField0_ & 1) == 1 ? CodedOutputStream.computeInt32Size(1, this.flags_) + 0 : 0;
        int i2 = 0;
        for (int i3 = 0; i3 < this.supertypeId_.size(); i3++) {
            i2 += CodedOutputStream.computeInt32SizeNoTag(this.supertypeId_.get(i3).intValue());
        }
        int i4 = computeInt32Size + i2;
        if (!getSupertypeIdList().isEmpty()) {
            i4 = i4 + 1 + CodedOutputStream.computeInt32SizeNoTag(i2);
        }
        this.supertypeIdMemoizedSerializedSize = i2;
        if ((this.bitField0_ & 2) == 2) {
            i4 += CodedOutputStream.computeInt32Size(3, this.fqName_);
        }
        if ((this.bitField0_ & 4) == 4) {
            i4 += CodedOutputStream.computeInt32Size(4, this.companionObjectName_);
        }
        for (int i5 = 0; i5 < this.typeParameter_.size(); i5++) {
            i4 += CodedOutputStream.computeMessageSize(5, this.typeParameter_.get(i5));
        }
        for (int i6 = 0; i6 < this.supertype_.size(); i6++) {
            i4 += CodedOutputStream.computeMessageSize(6, this.supertype_.get(i6));
        }
        int i7 = 0;
        for (int i8 = 0; i8 < this.nestedClassName_.size(); i8++) {
            i7 += CodedOutputStream.computeInt32SizeNoTag(this.nestedClassName_.get(i8).intValue());
        }
        int i9 = i4 + i7;
        if (!getNestedClassNameList().isEmpty()) {
            i9 = i9 + 1 + CodedOutputStream.computeInt32SizeNoTag(i7);
        }
        this.nestedClassNameMemoizedSerializedSize = i7;
        for (int i10 = 0; i10 < this.constructor_.size(); i10++) {
            i9 += CodedOutputStream.computeMessageSize(8, this.constructor_.get(i10));
        }
        for (int i11 = 0; i11 < this.function_.size(); i11++) {
            i9 += CodedOutputStream.computeMessageSize(9, this.function_.get(i11));
        }
        for (int i12 = 0; i12 < this.property_.size(); i12++) {
            i9 += CodedOutputStream.computeMessageSize(10, this.property_.get(i12));
        }
        for (int i13 = 0; i13 < this.typeAlias_.size(); i13++) {
            i9 += CodedOutputStream.computeMessageSize(11, this.typeAlias_.get(i13));
        }
        for (int i14 = 0; i14 < this.enumEntry_.size(); i14++) {
            i9 += CodedOutputStream.computeMessageSize(13, this.enumEntry_.get(i14));
        }
        int i15 = 0;
        for (int i16 = 0; i16 < this.sealedSubclassFqName_.size(); i16++) {
            i15 += CodedOutputStream.computeInt32SizeNoTag(this.sealedSubclassFqName_.get(i16).intValue());
        }
        int i17 = i9 + i15;
        if (!getSealedSubclassFqNameList().isEmpty()) {
            i17 = i17 + 2 + CodedOutputStream.computeInt32SizeNoTag(i15);
        }
        this.sealedSubclassFqNameMemoizedSerializedSize = i15;
        if ((this.bitField0_ & 8) == 8) {
            i17 += CodedOutputStream.computeInt32Size(17, this.inlineClassUnderlyingPropertyName_);
        }
        if ((this.bitField0_ & 16) == 16) {
            i17 += CodedOutputStream.computeMessageSize(18, this.inlineClassUnderlyingType_);
        }
        if ((this.bitField0_ & 32) == 32) {
            i17 += CodedOutputStream.computeInt32Size(19, this.inlineClassUnderlyingTypeId_);
        }
        for (int i18 = 0; i18 < this.contextReceiverType_.size(); i18++) {
            i17 += CodedOutputStream.computeMessageSize(20, this.contextReceiverType_.get(i18));
        }
        int i19 = 0;
        for (int i20 = 0; i20 < this.contextReceiverTypeId_.size(); i20++) {
            i19 += CodedOutputStream.computeInt32SizeNoTag(this.contextReceiverTypeId_.get(i20).intValue());
        }
        int i21 = i17 + i19;
        if (!getContextReceiverTypeIdList().isEmpty()) {
            i21 = i21 + 2 + CodedOutputStream.computeInt32SizeNoTag(i19);
        }
        this.contextReceiverTypeIdMemoizedSerializedSize = i19;
        int i22 = 0;
        for (int i23 = 0; i23 < this.multiFieldValueClassUnderlyingName_.size(); i23++) {
            i22 += CodedOutputStream.computeInt32SizeNoTag(this.multiFieldValueClassUnderlyingName_.get(i23).intValue());
        }
        int i24 = i21 + i22;
        if (!getMultiFieldValueClassUnderlyingNameList().isEmpty()) {
            i24 = i24 + 2 + CodedOutputStream.computeInt32SizeNoTag(i22);
        }
        this.multiFieldValueClassUnderlyingNameMemoizedSerializedSize = i22;
        for (int i25 = 0; i25 < this.multiFieldValueClassUnderlyingType_.size(); i25++) {
            i24 += CodedOutputStream.computeMessageSize(23, this.multiFieldValueClassUnderlyingType_.get(i25));
        }
        int i26 = 0;
        for (int i27 = 0; i27 < this.multiFieldValueClassUnderlyingTypeId_.size(); i27++) {
            i26 += CodedOutputStream.computeInt32SizeNoTag(this.multiFieldValueClassUnderlyingTypeId_.get(i27).intValue());
        }
        int i28 = i24 + i26;
        if (!getMultiFieldValueClassUnderlyingTypeIdList().isEmpty()) {
            i28 = i28 + 2 + CodedOutputStream.computeInt32SizeNoTag(i26);
        }
        this.multiFieldValueClassUnderlyingTypeIdMemoizedSerializedSize = i26;
        if ((this.bitField0_ & 64) == 64) {
            i28 += CodedOutputStream.computeMessageSize(30, this.typeTable_);
        }
        int i29 = 0;
        for (int i30 = 0; i30 < this.versionRequirement_.size(); i30++) {
            i29 += CodedOutputStream.computeInt32SizeNoTag(this.versionRequirement_.get(i30).intValue());
        }
        int size = i28 + i29 + (getVersionRequirementList().size() * 2);
        if ((this.bitField0_ & 128) == 128) {
            size += CodedOutputStream.computeMessageSize(32, this.versionRequirementTable_);
        }
        int extensionsSerializedSize = size + extensionsSerializedSize() + this.unknownFields.size();
        this.memoizedSerializedSize = extensionsSerializedSize;
        return extensionsSerializedSize;
    }

    public static ProtoBuf$Class parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return PARSER.parseFrom(inputStream, extensionRegistryLite);
    }

    public static Builder newBuilder() {
        return Builder.access$8700();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public Builder newBuilderForType() {
        return newBuilder();
    }

    public static Builder newBuilder(ProtoBuf$Class protoBuf$Class) {
        return newBuilder().mergeFrom(protoBuf$Class);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite
    public Builder toBuilder() {
        return newBuilder(this);
    }

    /* loaded from: classes4.dex */
    public static final class Builder extends GeneratedMessageLite.ExtendableBuilder<ProtoBuf$Class, Builder> {
        private int bitField0_;
        private int companionObjectName_;
        private int fqName_;
        private int inlineClassUnderlyingPropertyName_;
        private int inlineClassUnderlyingTypeId_;
        private int flags_ = 6;
        private List<ProtoBuf$TypeParameter> typeParameter_ = Collections.emptyList();
        private List<ProtoBuf$Type> supertype_ = Collections.emptyList();
        private List<Integer> supertypeId_ = Collections.emptyList();
        private List<Integer> nestedClassName_ = Collections.emptyList();
        private List<ProtoBuf$Type> contextReceiverType_ = Collections.emptyList();
        private List<Integer> contextReceiverTypeId_ = Collections.emptyList();
        private List<ProtoBuf$Constructor> constructor_ = Collections.emptyList();
        private List<ProtoBuf$Function> function_ = Collections.emptyList();
        private List<ProtoBuf$Property> property_ = Collections.emptyList();
        private List<ProtoBuf$TypeAlias> typeAlias_ = Collections.emptyList();
        private List<ProtoBuf$EnumEntry> enumEntry_ = Collections.emptyList();
        private List<Integer> sealedSubclassFqName_ = Collections.emptyList();
        private ProtoBuf$Type inlineClassUnderlyingType_ = ProtoBuf$Type.getDefaultInstance();
        private List<Integer> multiFieldValueClassUnderlyingName_ = Collections.emptyList();
        private List<ProtoBuf$Type> multiFieldValueClassUnderlyingType_ = Collections.emptyList();
        private List<Integer> multiFieldValueClassUnderlyingTypeId_ = Collections.emptyList();
        private ProtoBuf$TypeTable typeTable_ = ProtoBuf$TypeTable.getDefaultInstance();
        private List<Integer> versionRequirement_ = Collections.emptyList();
        private ProtoBuf$VersionRequirementTable versionRequirementTable_ = ProtoBuf$VersionRequirementTable.getDefaultInstance();

        private void maybeForceBuilderInitialization() {
        }

        static /* synthetic */ Builder access$8700() {
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
        public Builder mo2049clone() {
            return create().mergeFrom(buildPartial());
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        public ProtoBuf$Class build() {
            ProtoBuf$Class buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw AbstractMessageLite.Builder.newUninitializedMessageException(buildPartial);
        }

        public ProtoBuf$Class buildPartial() {
            ProtoBuf$Class protoBuf$Class = new ProtoBuf$Class(this);
            int i = this.bitField0_;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$Class.flags_ = this.flags_;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$Class.fqName_ = this.fqName_;
            if ((i & 4) == 4) {
                i2 |= 4;
            }
            protoBuf$Class.companionObjectName_ = this.companionObjectName_;
            if ((this.bitField0_ & 8) == 8) {
                this.typeParameter_ = Collections.unmodifiableList(this.typeParameter_);
                this.bitField0_ &= -9;
            }
            protoBuf$Class.typeParameter_ = this.typeParameter_;
            if ((this.bitField0_ & 16) == 16) {
                this.supertype_ = Collections.unmodifiableList(this.supertype_);
                this.bitField0_ &= -17;
            }
            protoBuf$Class.supertype_ = this.supertype_;
            if ((this.bitField0_ & 32) == 32) {
                this.supertypeId_ = Collections.unmodifiableList(this.supertypeId_);
                this.bitField0_ &= -33;
            }
            protoBuf$Class.supertypeId_ = this.supertypeId_;
            if ((this.bitField0_ & 64) == 64) {
                this.nestedClassName_ = Collections.unmodifiableList(this.nestedClassName_);
                this.bitField0_ &= -65;
            }
            protoBuf$Class.nestedClassName_ = this.nestedClassName_;
            if ((this.bitField0_ & 128) == 128) {
                this.contextReceiverType_ = Collections.unmodifiableList(this.contextReceiverType_);
                this.bitField0_ &= -129;
            }
            protoBuf$Class.contextReceiverType_ = this.contextReceiverType_;
            if ((this.bitField0_ & 256) == 256) {
                this.contextReceiverTypeId_ = Collections.unmodifiableList(this.contextReceiverTypeId_);
                this.bitField0_ &= -257;
            }
            protoBuf$Class.contextReceiverTypeId_ = this.contextReceiverTypeId_;
            if ((this.bitField0_ & 512) == 512) {
                this.constructor_ = Collections.unmodifiableList(this.constructor_);
                this.bitField0_ &= -513;
            }
            protoBuf$Class.constructor_ = this.constructor_;
            if ((this.bitField0_ & 1024) == 1024) {
                this.function_ = Collections.unmodifiableList(this.function_);
                this.bitField0_ &= -1025;
            }
            protoBuf$Class.function_ = this.function_;
            if ((this.bitField0_ & 2048) == 2048) {
                this.property_ = Collections.unmodifiableList(this.property_);
                this.bitField0_ &= -2049;
            }
            protoBuf$Class.property_ = this.property_;
            if ((this.bitField0_ & 4096) == 4096) {
                this.typeAlias_ = Collections.unmodifiableList(this.typeAlias_);
                this.bitField0_ &= -4097;
            }
            protoBuf$Class.typeAlias_ = this.typeAlias_;
            if ((this.bitField0_ & 8192) == 8192) {
                this.enumEntry_ = Collections.unmodifiableList(this.enumEntry_);
                this.bitField0_ &= -8193;
            }
            protoBuf$Class.enumEntry_ = this.enumEntry_;
            if ((this.bitField0_ & 16384) == 16384) {
                this.sealedSubclassFqName_ = Collections.unmodifiableList(this.sealedSubclassFqName_);
                this.bitField0_ &= -16385;
            }
            protoBuf$Class.sealedSubclassFqName_ = this.sealedSubclassFqName_;
            if ((i & LiteMode.FLAG_CHAT_SCALE) == 32768) {
                i2 |= 8;
            }
            protoBuf$Class.inlineClassUnderlyingPropertyName_ = this.inlineClassUnderlyingPropertyName_;
            if ((i & 65536) == 65536) {
                i2 |= 16;
            }
            protoBuf$Class.inlineClassUnderlyingType_ = this.inlineClassUnderlyingType_;
            if ((i & 131072) == 131072) {
                i2 |= 32;
            }
            protoBuf$Class.inlineClassUnderlyingTypeId_ = this.inlineClassUnderlyingTypeId_;
            if ((this.bitField0_ & 262144) == 262144) {
                this.multiFieldValueClassUnderlyingName_ = Collections.unmodifiableList(this.multiFieldValueClassUnderlyingName_);
                this.bitField0_ &= -262145;
            }
            protoBuf$Class.multiFieldValueClassUnderlyingName_ = this.multiFieldValueClassUnderlyingName_;
            if ((this.bitField0_ & 524288) == 524288) {
                this.multiFieldValueClassUnderlyingType_ = Collections.unmodifiableList(this.multiFieldValueClassUnderlyingType_);
                this.bitField0_ &= -524289;
            }
            protoBuf$Class.multiFieldValueClassUnderlyingType_ = this.multiFieldValueClassUnderlyingType_;
            if ((this.bitField0_ & 1048576) == 1048576) {
                this.multiFieldValueClassUnderlyingTypeId_ = Collections.unmodifiableList(this.multiFieldValueClassUnderlyingTypeId_);
                this.bitField0_ &= -1048577;
            }
            protoBuf$Class.multiFieldValueClassUnderlyingTypeId_ = this.multiFieldValueClassUnderlyingTypeId_;
            if ((i & 2097152) == 2097152) {
                i2 |= 64;
            }
            protoBuf$Class.typeTable_ = this.typeTable_;
            if ((this.bitField0_ & 4194304) == 4194304) {
                this.versionRequirement_ = Collections.unmodifiableList(this.versionRequirement_);
                this.bitField0_ &= -4194305;
            }
            protoBuf$Class.versionRequirement_ = this.versionRequirement_;
            if ((i & 8388608) == 8388608) {
                i2 |= 128;
            }
            protoBuf$Class.versionRequirementTable_ = this.versionRequirementTable_;
            protoBuf$Class.bitField0_ = i2;
            return protoBuf$Class;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite.Builder
        public Builder mergeFrom(ProtoBuf$Class protoBuf$Class) {
            if (protoBuf$Class == ProtoBuf$Class.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$Class.hasFlags()) {
                setFlags(protoBuf$Class.getFlags());
            }
            if (protoBuf$Class.hasFqName()) {
                setFqName(protoBuf$Class.getFqName());
            }
            if (protoBuf$Class.hasCompanionObjectName()) {
                setCompanionObjectName(protoBuf$Class.getCompanionObjectName());
            }
            if (!protoBuf$Class.typeParameter_.isEmpty()) {
                if (this.typeParameter_.isEmpty()) {
                    this.typeParameter_ = protoBuf$Class.typeParameter_;
                    this.bitField0_ &= -9;
                } else {
                    ensureTypeParameterIsMutable();
                    this.typeParameter_.addAll(protoBuf$Class.typeParameter_);
                }
            }
            if (!protoBuf$Class.supertype_.isEmpty()) {
                if (this.supertype_.isEmpty()) {
                    this.supertype_ = protoBuf$Class.supertype_;
                    this.bitField0_ &= -17;
                } else {
                    ensureSupertypeIsMutable();
                    this.supertype_.addAll(protoBuf$Class.supertype_);
                }
            }
            if (!protoBuf$Class.supertypeId_.isEmpty()) {
                if (this.supertypeId_.isEmpty()) {
                    this.supertypeId_ = protoBuf$Class.supertypeId_;
                    this.bitField0_ &= -33;
                } else {
                    ensureSupertypeIdIsMutable();
                    this.supertypeId_.addAll(protoBuf$Class.supertypeId_);
                }
            }
            if (!protoBuf$Class.nestedClassName_.isEmpty()) {
                if (this.nestedClassName_.isEmpty()) {
                    this.nestedClassName_ = protoBuf$Class.nestedClassName_;
                    this.bitField0_ &= -65;
                } else {
                    ensureNestedClassNameIsMutable();
                    this.nestedClassName_.addAll(protoBuf$Class.nestedClassName_);
                }
            }
            if (!protoBuf$Class.contextReceiverType_.isEmpty()) {
                if (this.contextReceiverType_.isEmpty()) {
                    this.contextReceiverType_ = protoBuf$Class.contextReceiverType_;
                    this.bitField0_ &= -129;
                } else {
                    ensureContextReceiverTypeIsMutable();
                    this.contextReceiverType_.addAll(protoBuf$Class.contextReceiverType_);
                }
            }
            if (!protoBuf$Class.contextReceiverTypeId_.isEmpty()) {
                if (this.contextReceiverTypeId_.isEmpty()) {
                    this.contextReceiverTypeId_ = protoBuf$Class.contextReceiverTypeId_;
                    this.bitField0_ &= -257;
                } else {
                    ensureContextReceiverTypeIdIsMutable();
                    this.contextReceiverTypeId_.addAll(protoBuf$Class.contextReceiverTypeId_);
                }
            }
            if (!protoBuf$Class.constructor_.isEmpty()) {
                if (this.constructor_.isEmpty()) {
                    this.constructor_ = protoBuf$Class.constructor_;
                    this.bitField0_ &= -513;
                } else {
                    ensureConstructorIsMutable();
                    this.constructor_.addAll(protoBuf$Class.constructor_);
                }
            }
            if (!protoBuf$Class.function_.isEmpty()) {
                if (this.function_.isEmpty()) {
                    this.function_ = protoBuf$Class.function_;
                    this.bitField0_ &= -1025;
                } else {
                    ensureFunctionIsMutable();
                    this.function_.addAll(protoBuf$Class.function_);
                }
            }
            if (!protoBuf$Class.property_.isEmpty()) {
                if (this.property_.isEmpty()) {
                    this.property_ = protoBuf$Class.property_;
                    this.bitField0_ &= -2049;
                } else {
                    ensurePropertyIsMutable();
                    this.property_.addAll(protoBuf$Class.property_);
                }
            }
            if (!protoBuf$Class.typeAlias_.isEmpty()) {
                if (this.typeAlias_.isEmpty()) {
                    this.typeAlias_ = protoBuf$Class.typeAlias_;
                    this.bitField0_ &= -4097;
                } else {
                    ensureTypeAliasIsMutable();
                    this.typeAlias_.addAll(protoBuf$Class.typeAlias_);
                }
            }
            if (!protoBuf$Class.enumEntry_.isEmpty()) {
                if (this.enumEntry_.isEmpty()) {
                    this.enumEntry_ = protoBuf$Class.enumEntry_;
                    this.bitField0_ &= -8193;
                } else {
                    ensureEnumEntryIsMutable();
                    this.enumEntry_.addAll(protoBuf$Class.enumEntry_);
                }
            }
            if (!protoBuf$Class.sealedSubclassFqName_.isEmpty()) {
                if (this.sealedSubclassFqName_.isEmpty()) {
                    this.sealedSubclassFqName_ = protoBuf$Class.sealedSubclassFqName_;
                    this.bitField0_ &= -16385;
                } else {
                    ensureSealedSubclassFqNameIsMutable();
                    this.sealedSubclassFqName_.addAll(protoBuf$Class.sealedSubclassFqName_);
                }
            }
            if (protoBuf$Class.hasInlineClassUnderlyingPropertyName()) {
                setInlineClassUnderlyingPropertyName(protoBuf$Class.getInlineClassUnderlyingPropertyName());
            }
            if (protoBuf$Class.hasInlineClassUnderlyingType()) {
                mergeInlineClassUnderlyingType(protoBuf$Class.getInlineClassUnderlyingType());
            }
            if (protoBuf$Class.hasInlineClassUnderlyingTypeId()) {
                setInlineClassUnderlyingTypeId(protoBuf$Class.getInlineClassUnderlyingTypeId());
            }
            if (!protoBuf$Class.multiFieldValueClassUnderlyingName_.isEmpty()) {
                if (this.multiFieldValueClassUnderlyingName_.isEmpty()) {
                    this.multiFieldValueClassUnderlyingName_ = protoBuf$Class.multiFieldValueClassUnderlyingName_;
                    this.bitField0_ &= -262145;
                } else {
                    ensureMultiFieldValueClassUnderlyingNameIsMutable();
                    this.multiFieldValueClassUnderlyingName_.addAll(protoBuf$Class.multiFieldValueClassUnderlyingName_);
                }
            }
            if (!protoBuf$Class.multiFieldValueClassUnderlyingType_.isEmpty()) {
                if (this.multiFieldValueClassUnderlyingType_.isEmpty()) {
                    this.multiFieldValueClassUnderlyingType_ = protoBuf$Class.multiFieldValueClassUnderlyingType_;
                    this.bitField0_ &= -524289;
                } else {
                    ensureMultiFieldValueClassUnderlyingTypeIsMutable();
                    this.multiFieldValueClassUnderlyingType_.addAll(protoBuf$Class.multiFieldValueClassUnderlyingType_);
                }
            }
            if (!protoBuf$Class.multiFieldValueClassUnderlyingTypeId_.isEmpty()) {
                if (this.multiFieldValueClassUnderlyingTypeId_.isEmpty()) {
                    this.multiFieldValueClassUnderlyingTypeId_ = protoBuf$Class.multiFieldValueClassUnderlyingTypeId_;
                    this.bitField0_ &= -1048577;
                } else {
                    ensureMultiFieldValueClassUnderlyingTypeIdIsMutable();
                    this.multiFieldValueClassUnderlyingTypeId_.addAll(protoBuf$Class.multiFieldValueClassUnderlyingTypeId_);
                }
            }
            if (protoBuf$Class.hasTypeTable()) {
                mergeTypeTable(protoBuf$Class.getTypeTable());
            }
            if (!protoBuf$Class.versionRequirement_.isEmpty()) {
                if (this.versionRequirement_.isEmpty()) {
                    this.versionRequirement_ = protoBuf$Class.versionRequirement_;
                    this.bitField0_ &= -4194305;
                } else {
                    ensureVersionRequirementIsMutable();
                    this.versionRequirement_.addAll(protoBuf$Class.versionRequirement_);
                }
            }
            if (protoBuf$Class.hasVersionRequirementTable()) {
                mergeVersionRequirementTable(protoBuf$Class.getVersionRequirementTable());
            }
            mergeExtensionFields(protoBuf$Class);
            setUnknownFields(getUnknownFields().concat(protoBuf$Class.unknownFields));
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x001d  */
        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite.Builder, kotlin.reflect.jvm.internal.impl.protobuf.MessageLite.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class.Builder mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream r3, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r4) throws java.io.IOException {
            /*
                r2 = this;
                r0 = 0
                kotlin.reflect.jvm.internal.impl.protobuf.Parser<kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class> r1 = kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class.PARSER     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class r3 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class) r3     // Catch: java.lang.Throwable -> Lf kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L11
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
                kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class) r4     // Catch: java.lang.Throwable -> Lf
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
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class.Builder.mergeFrom(kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite):kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class$Builder");
        }

        public Builder setFlags(int i) {
            this.bitField0_ |= 1;
            this.flags_ = i;
            return this;
        }

        public Builder setFqName(int i) {
            this.bitField0_ |= 2;
            this.fqName_ = i;
            return this;
        }

        public Builder setCompanionObjectName(int i) {
            this.bitField0_ |= 4;
            this.companionObjectName_ = i;
            return this;
        }

        private void ensureTypeParameterIsMutable() {
            if ((this.bitField0_ & 8) != 8) {
                this.typeParameter_ = new ArrayList(this.typeParameter_);
                this.bitField0_ |= 8;
            }
        }

        private void ensureSupertypeIsMutable() {
            if ((this.bitField0_ & 16) != 16) {
                this.supertype_ = new ArrayList(this.supertype_);
                this.bitField0_ |= 16;
            }
        }

        private void ensureSupertypeIdIsMutable() {
            if ((this.bitField0_ & 32) != 32) {
                this.supertypeId_ = new ArrayList(this.supertypeId_);
                this.bitField0_ |= 32;
            }
        }

        private void ensureNestedClassNameIsMutable() {
            if ((this.bitField0_ & 64) != 64) {
                this.nestedClassName_ = new ArrayList(this.nestedClassName_);
                this.bitField0_ |= 64;
            }
        }

        private void ensureContextReceiverTypeIsMutable() {
            if ((this.bitField0_ & 128) != 128) {
                this.contextReceiverType_ = new ArrayList(this.contextReceiverType_);
                this.bitField0_ |= 128;
            }
        }

        private void ensureContextReceiverTypeIdIsMutable() {
            if ((this.bitField0_ & 256) != 256) {
                this.contextReceiverTypeId_ = new ArrayList(this.contextReceiverTypeId_);
                this.bitField0_ |= 256;
            }
        }

        private void ensureConstructorIsMutable() {
            if ((this.bitField0_ & 512) != 512) {
                this.constructor_ = new ArrayList(this.constructor_);
                this.bitField0_ |= 512;
            }
        }

        private void ensureFunctionIsMutable() {
            if ((this.bitField0_ & 1024) != 1024) {
                this.function_ = new ArrayList(this.function_);
                this.bitField0_ |= 1024;
            }
        }

        private void ensurePropertyIsMutable() {
            if ((this.bitField0_ & 2048) != 2048) {
                this.property_ = new ArrayList(this.property_);
                this.bitField0_ |= 2048;
            }
        }

        private void ensureTypeAliasIsMutable() {
            if ((this.bitField0_ & 4096) != 4096) {
                this.typeAlias_ = new ArrayList(this.typeAlias_);
                this.bitField0_ |= 4096;
            }
        }

        private void ensureEnumEntryIsMutable() {
            if ((this.bitField0_ & 8192) != 8192) {
                this.enumEntry_ = new ArrayList(this.enumEntry_);
                this.bitField0_ |= 8192;
            }
        }

        private void ensureSealedSubclassFqNameIsMutable() {
            if ((this.bitField0_ & 16384) != 16384) {
                this.sealedSubclassFqName_ = new ArrayList(this.sealedSubclassFqName_);
                this.bitField0_ |= 16384;
            }
        }

        public Builder setInlineClassUnderlyingPropertyName(int i) {
            this.bitField0_ |= LiteMode.FLAG_CHAT_SCALE;
            this.inlineClassUnderlyingPropertyName_ = i;
            return this;
        }

        public Builder mergeInlineClassUnderlyingType(ProtoBuf$Type protoBuf$Type) {
            if ((this.bitField0_ & 65536) == 65536 && this.inlineClassUnderlyingType_ != ProtoBuf$Type.getDefaultInstance()) {
                this.inlineClassUnderlyingType_ = ProtoBuf$Type.newBuilder(this.inlineClassUnderlyingType_).mergeFrom(protoBuf$Type).buildPartial();
            } else {
                this.inlineClassUnderlyingType_ = protoBuf$Type;
            }
            this.bitField0_ |= 65536;
            return this;
        }

        public Builder setInlineClassUnderlyingTypeId(int i) {
            this.bitField0_ |= 131072;
            this.inlineClassUnderlyingTypeId_ = i;
            return this;
        }

        private void ensureMultiFieldValueClassUnderlyingNameIsMutable() {
            if ((this.bitField0_ & 262144) != 262144) {
                this.multiFieldValueClassUnderlyingName_ = new ArrayList(this.multiFieldValueClassUnderlyingName_);
                this.bitField0_ |= 262144;
            }
        }

        private void ensureMultiFieldValueClassUnderlyingTypeIsMutable() {
            if ((this.bitField0_ & 524288) != 524288) {
                this.multiFieldValueClassUnderlyingType_ = new ArrayList(this.multiFieldValueClassUnderlyingType_);
                this.bitField0_ |= 524288;
            }
        }

        private void ensureMultiFieldValueClassUnderlyingTypeIdIsMutable() {
            if ((this.bitField0_ & 1048576) != 1048576) {
                this.multiFieldValueClassUnderlyingTypeId_ = new ArrayList(this.multiFieldValueClassUnderlyingTypeId_);
                this.bitField0_ |= 1048576;
            }
        }

        public Builder mergeTypeTable(ProtoBuf$TypeTable protoBuf$TypeTable) {
            if ((this.bitField0_ & 2097152) == 2097152 && this.typeTable_ != ProtoBuf$TypeTable.getDefaultInstance()) {
                this.typeTable_ = ProtoBuf$TypeTable.newBuilder(this.typeTable_).mergeFrom(protoBuf$TypeTable).buildPartial();
            } else {
                this.typeTable_ = protoBuf$TypeTable;
            }
            this.bitField0_ |= 2097152;
            return this;
        }

        private void ensureVersionRequirementIsMutable() {
            if ((this.bitField0_ & 4194304) != 4194304) {
                this.versionRequirement_ = new ArrayList(this.versionRequirement_);
                this.bitField0_ |= 4194304;
            }
        }

        public Builder mergeVersionRequirementTable(ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable) {
            if ((this.bitField0_ & 8388608) == 8388608 && this.versionRequirementTable_ != ProtoBuf$VersionRequirementTable.getDefaultInstance()) {
                this.versionRequirementTable_ = ProtoBuf$VersionRequirementTable.newBuilder(this.versionRequirementTable_).mergeFrom(protoBuf$VersionRequirementTable).buildPartial();
            } else {
                this.versionRequirementTable_ = protoBuf$VersionRequirementTable;
            }
            this.bitField0_ |= 8388608;
            return this;
        }
    }
}
