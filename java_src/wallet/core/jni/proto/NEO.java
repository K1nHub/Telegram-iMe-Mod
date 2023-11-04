package wallet.core.jni.proto;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MessageLite;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
import wallet.core.jni.proto.Common;
/* loaded from: classes7.dex */
public final class NEO {

    /* loaded from: classes7.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        long getFee();

        String getGasAssetId();

        ByteString getGasAssetIdBytes();

        String getGasChangeAddress();

        ByteString getGasChangeAddressBytes();

        TransactionInput getInputs(int index);

        int getInputsCount();

        List<TransactionInput> getInputsList();

        TransactionOutput getOutputs(int index);

        int getOutputsCount();

        List<TransactionOutput> getOutputsList();

        TransactionPlan getPlan();

        ByteString getPrivateKey();

        boolean hasPlan();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface SigningOutputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getEncoded();

        Common.SigningError getError();

        int getErrorValue();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface TransactionInputOrBuilder extends MessageLiteOrBuilder {
        String getAssetId();

        ByteString getAssetIdBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getPrevHash();

        int getPrevIndex();

        long getValue();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface TransactionOutputOrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        String getAssetId();

        ByteString getAssetIdBytes();

        String getChangeAddress();

        ByteString getChangeAddressBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getToAddress();

        ByteString getToAddressBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface TransactionOutputPlanOrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        String getAssetId();

        ByteString getAssetIdBytes();

        long getAvailableAmount();

        long getChange();

        String getChangeAddress();

        ByteString getChangeAddressBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getToAddress();

        ByteString getToAddressBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface TransactionPlanOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        Common.SigningError getError();

        int getErrorValue();

        long getFee();

        TransactionInput getInputs(int index);

        int getInputsCount();

        List<TransactionInput> getInputsList();

        TransactionOutputPlan getOutputs(int index);

        int getOutputsCount();

        List<TransactionOutputPlan> getOutputsList();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private NEO() {
    }

    /* loaded from: classes7.dex */
    public static final class TransactionInput extends GeneratedMessageLite<TransactionInput, Builder> implements TransactionInputOrBuilder {
        public static final int ASSET_ID_FIELD_NUMBER = 4;
        private static final TransactionInput DEFAULT_INSTANCE;
        private static volatile Parser<TransactionInput> PARSER = null;
        public static final int PREV_HASH_FIELD_NUMBER = 1;
        public static final int PREV_INDEX_FIELD_NUMBER = 2;
        public static final int VALUE_FIELD_NUMBER = 3;
        private int prevIndex_;
        private long value_;
        private ByteString prevHash_ = ByteString.EMPTY;
        private String assetId_ = "";

        private TransactionInput() {
        }

        @Override // wallet.core.jni.proto.NEO.TransactionInputOrBuilder
        public ByteString getPrevHash() {
            return this.prevHash_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPrevHash(ByteString value) {
            value.getClass();
            this.prevHash_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPrevHash() {
            this.prevHash_ = getDefaultInstance().getPrevHash();
        }

        @Override // wallet.core.jni.proto.NEO.TransactionInputOrBuilder
        public int getPrevIndex() {
            return this.prevIndex_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPrevIndex(int value) {
            this.prevIndex_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPrevIndex() {
            this.prevIndex_ = 0;
        }

        @Override // wallet.core.jni.proto.NEO.TransactionInputOrBuilder
        public long getValue() {
            return this.value_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setValue(long value) {
            this.value_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearValue() {
            this.value_ = 0L;
        }

        @Override // wallet.core.jni.proto.NEO.TransactionInputOrBuilder
        public String getAssetId() {
            return this.assetId_;
        }

        @Override // wallet.core.jni.proto.NEO.TransactionInputOrBuilder
        public ByteString getAssetIdBytes() {
            return ByteString.copyFromUtf8(this.assetId_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAssetId(String value) {
            value.getClass();
            this.assetId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAssetId() {
            this.assetId_ = getDefaultInstance().getAssetId();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAssetIdBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.assetId_ = value.toStringUtf8();
        }

        public static TransactionInput parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TransactionInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionInput parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionInput parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TransactionInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionInput parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionInput parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TransactionInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionInput parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionInput parseFrom(InputStream input) throws IOException {
            return (TransactionInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionInput parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransactionInput parseDelimitedFrom(InputStream input) throws IOException {
            return (TransactionInput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionInput parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionInput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransactionInput parseFrom(CodedInputStream input) throws IOException {
            return (TransactionInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionInput parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TransactionInput prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TransactionInput, Builder> implements TransactionInputOrBuilder {
            /* synthetic */ Builder(C77521 c77521) {
                this();
            }

            private Builder() {
                super(TransactionInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.NEO.TransactionInputOrBuilder
            public ByteString getPrevHash() {
                return ((TransactionInput) this.instance).getPrevHash();
            }

            public Builder setPrevHash(ByteString value) {
                copyOnWrite();
                ((TransactionInput) this.instance).setPrevHash(value);
                return this;
            }

            public Builder clearPrevHash() {
                copyOnWrite();
                ((TransactionInput) this.instance).clearPrevHash();
                return this;
            }

            @Override // wallet.core.jni.proto.NEO.TransactionInputOrBuilder
            public int getPrevIndex() {
                return ((TransactionInput) this.instance).getPrevIndex();
            }

            public Builder setPrevIndex(int value) {
                copyOnWrite();
                ((TransactionInput) this.instance).setPrevIndex(value);
                return this;
            }

            public Builder clearPrevIndex() {
                copyOnWrite();
                ((TransactionInput) this.instance).clearPrevIndex();
                return this;
            }

            @Override // wallet.core.jni.proto.NEO.TransactionInputOrBuilder
            public long getValue() {
                return ((TransactionInput) this.instance).getValue();
            }

            public Builder setValue(long value) {
                copyOnWrite();
                ((TransactionInput) this.instance).setValue(value);
                return this;
            }

            public Builder clearValue() {
                copyOnWrite();
                ((TransactionInput) this.instance).clearValue();
                return this;
            }

            @Override // wallet.core.jni.proto.NEO.TransactionInputOrBuilder
            public String getAssetId() {
                return ((TransactionInput) this.instance).getAssetId();
            }

            @Override // wallet.core.jni.proto.NEO.TransactionInputOrBuilder
            public ByteString getAssetIdBytes() {
                return ((TransactionInput) this.instance).getAssetIdBytes();
            }

            public Builder setAssetId(String value) {
                copyOnWrite();
                ((TransactionInput) this.instance).setAssetId(value);
                return this;
            }

            public Builder clearAssetId() {
                copyOnWrite();
                ((TransactionInput) this.instance).clearAssetId();
                return this;
            }

            public Builder setAssetIdBytes(ByteString value) {
                copyOnWrite();
                ((TransactionInput) this.instance).setAssetIdBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77521.f2145xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TransactionInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\n\u0002\u0006\u0003\u0002\u0004Ȉ", new Object[]{"prevHash_", "prevIndex_", "value_", "assetId_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TransactionInput> parser = PARSER;
                    if (parser == null) {
                        synchronized (TransactionInput.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            TransactionInput transactionInput = new TransactionInput();
            DEFAULT_INSTANCE = transactionInput;
            GeneratedMessageLite.registerDefaultInstance(TransactionInput.class, transactionInput);
        }

        public static TransactionInput getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TransactionInput> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* renamed from: wallet.core.jni.proto.NEO$1 */
    /* loaded from: classes7.dex */
    static /* synthetic */ class C77521 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f2145xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f2145xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2145xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2145xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2145xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2145xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2145xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2145xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes7.dex */
    public static final class TransactionOutput extends GeneratedMessageLite<TransactionOutput, Builder> implements TransactionOutputOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 2;
        public static final int ASSET_ID_FIELD_NUMBER = 1;
        public static final int CHANGE_ADDRESS_FIELD_NUMBER = 4;
        private static final TransactionOutput DEFAULT_INSTANCE;
        private static volatile Parser<TransactionOutput> PARSER = null;
        public static final int TO_ADDRESS_FIELD_NUMBER = 3;
        private long amount_;
        private String assetId_ = "";
        private String toAddress_ = "";
        private String changeAddress_ = "";

        private TransactionOutput() {
        }

        @Override // wallet.core.jni.proto.NEO.TransactionOutputOrBuilder
        public String getAssetId() {
            return this.assetId_;
        }

        @Override // wallet.core.jni.proto.NEO.TransactionOutputOrBuilder
        public ByteString getAssetIdBytes() {
            return ByteString.copyFromUtf8(this.assetId_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAssetId(String value) {
            value.getClass();
            this.assetId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAssetId() {
            this.assetId_ = getDefaultInstance().getAssetId();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAssetIdBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.assetId_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.NEO.TransactionOutputOrBuilder
        public long getAmount() {
            return this.amount_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAmount(long value) {
            this.amount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAmount() {
            this.amount_ = 0L;
        }

        @Override // wallet.core.jni.proto.NEO.TransactionOutputOrBuilder
        public String getToAddress() {
            return this.toAddress_;
        }

        @Override // wallet.core.jni.proto.NEO.TransactionOutputOrBuilder
        public ByteString getToAddressBytes() {
            return ByteString.copyFromUtf8(this.toAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setToAddress(String value) {
            value.getClass();
            this.toAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearToAddress() {
            this.toAddress_ = getDefaultInstance().getToAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setToAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.toAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.NEO.TransactionOutputOrBuilder
        public String getChangeAddress() {
            return this.changeAddress_;
        }

        @Override // wallet.core.jni.proto.NEO.TransactionOutputOrBuilder
        public ByteString getChangeAddressBytes() {
            return ByteString.copyFromUtf8(this.changeAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChangeAddress(String value) {
            value.getClass();
            this.changeAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearChangeAddress() {
            this.changeAddress_ = getDefaultInstance().getChangeAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChangeAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.changeAddress_ = value.toStringUtf8();
        }

        public static TransactionOutput parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TransactionOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionOutput parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionOutput parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TransactionOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionOutput parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionOutput parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TransactionOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionOutput parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionOutput parseFrom(InputStream input) throws IOException {
            return (TransactionOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionOutput parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransactionOutput parseDelimitedFrom(InputStream input) throws IOException {
            return (TransactionOutput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionOutput parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionOutput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransactionOutput parseFrom(CodedInputStream input) throws IOException {
            return (TransactionOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionOutput parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TransactionOutput prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TransactionOutput, Builder> implements TransactionOutputOrBuilder {
            /* synthetic */ Builder(C77521 c77521) {
                this();
            }

            private Builder() {
                super(TransactionOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.NEO.TransactionOutputOrBuilder
            public String getAssetId() {
                return ((TransactionOutput) this.instance).getAssetId();
            }

            @Override // wallet.core.jni.proto.NEO.TransactionOutputOrBuilder
            public ByteString getAssetIdBytes() {
                return ((TransactionOutput) this.instance).getAssetIdBytes();
            }

            public Builder setAssetId(String value) {
                copyOnWrite();
                ((TransactionOutput) this.instance).setAssetId(value);
                return this;
            }

            public Builder clearAssetId() {
                copyOnWrite();
                ((TransactionOutput) this.instance).clearAssetId();
                return this;
            }

            public Builder setAssetIdBytes(ByteString value) {
                copyOnWrite();
                ((TransactionOutput) this.instance).setAssetIdBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.NEO.TransactionOutputOrBuilder
            public long getAmount() {
                return ((TransactionOutput) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((TransactionOutput) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((TransactionOutput) this.instance).clearAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.NEO.TransactionOutputOrBuilder
            public String getToAddress() {
                return ((TransactionOutput) this.instance).getToAddress();
            }

            @Override // wallet.core.jni.proto.NEO.TransactionOutputOrBuilder
            public ByteString getToAddressBytes() {
                return ((TransactionOutput) this.instance).getToAddressBytes();
            }

            public Builder setToAddress(String value) {
                copyOnWrite();
                ((TransactionOutput) this.instance).setToAddress(value);
                return this;
            }

            public Builder clearToAddress() {
                copyOnWrite();
                ((TransactionOutput) this.instance).clearToAddress();
                return this;
            }

            public Builder setToAddressBytes(ByteString value) {
                copyOnWrite();
                ((TransactionOutput) this.instance).setToAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.NEO.TransactionOutputOrBuilder
            public String getChangeAddress() {
                return ((TransactionOutput) this.instance).getChangeAddress();
            }

            @Override // wallet.core.jni.proto.NEO.TransactionOutputOrBuilder
            public ByteString getChangeAddressBytes() {
                return ((TransactionOutput) this.instance).getChangeAddressBytes();
            }

            public Builder setChangeAddress(String value) {
                copyOnWrite();
                ((TransactionOutput) this.instance).setChangeAddress(value);
                return this;
            }

            public Builder clearChangeAddress() {
                copyOnWrite();
                ((TransactionOutput) this.instance).clearChangeAddress();
                return this;
            }

            public Builder setChangeAddressBytes(ByteString value) {
                copyOnWrite();
                ((TransactionOutput) this.instance).setChangeAddressBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77521.f2145xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TransactionOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002\u0010\u0003Ȉ\u0004Ȉ", new Object[]{"assetId_", "amount_", "toAddress_", "changeAddress_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TransactionOutput> parser = PARSER;
                    if (parser == null) {
                        synchronized (TransactionOutput.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            TransactionOutput transactionOutput = new TransactionOutput();
            DEFAULT_INSTANCE = transactionOutput;
            GeneratedMessageLite.registerDefaultInstance(TransactionOutput.class, transactionOutput);
        }

        public static TransactionOutput getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TransactionOutput> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        private static final SigningInput DEFAULT_INSTANCE;
        public static final int FEE_FIELD_NUMBER = 4;
        public static final int GAS_ASSET_ID_FIELD_NUMBER = 5;
        public static final int GAS_CHANGE_ADDRESS_FIELD_NUMBER = 6;
        public static final int INPUTS_FIELD_NUMBER = 1;
        public static final int OUTPUTS_FIELD_NUMBER = 2;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PLAN_FIELD_NUMBER = 7;
        public static final int PRIVATE_KEY_FIELD_NUMBER = 3;
        private long fee_;
        private TransactionPlan plan_;
        private Internal.ProtobufList<TransactionInput> inputs_ = GeneratedMessageLite.emptyProtobufList();
        private Internal.ProtobufList<TransactionOutput> outputs_ = GeneratedMessageLite.emptyProtobufList();
        private ByteString privateKey_ = ByteString.EMPTY;
        private String gasAssetId_ = "";
        private String gasChangeAddress_ = "";

        private SigningInput() {
        }

        @Override // wallet.core.jni.proto.NEO.SigningInputOrBuilder
        public List<TransactionInput> getInputsList() {
            return this.inputs_;
        }

        public List<? extends TransactionInputOrBuilder> getInputsOrBuilderList() {
            return this.inputs_;
        }

        @Override // wallet.core.jni.proto.NEO.SigningInputOrBuilder
        public int getInputsCount() {
            return this.inputs_.size();
        }

        @Override // wallet.core.jni.proto.NEO.SigningInputOrBuilder
        public TransactionInput getInputs(int index) {
            return this.inputs_.get(index);
        }

        public TransactionInputOrBuilder getInputsOrBuilder(int index) {
            return this.inputs_.get(index);
        }

        private void ensureInputsIsMutable() {
            Internal.ProtobufList<TransactionInput> protobufList = this.inputs_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.inputs_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setInputs(int index, TransactionInput value) {
            value.getClass();
            ensureInputsIsMutable();
            this.inputs_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addInputs(TransactionInput value) {
            value.getClass();
            ensureInputsIsMutable();
            this.inputs_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addInputs(int index, TransactionInput value) {
            value.getClass();
            ensureInputsIsMutable();
            this.inputs_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllInputs(Iterable<? extends TransactionInput> values) {
            ensureInputsIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.inputs_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearInputs() {
            this.inputs_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeInputs(int index) {
            ensureInputsIsMutable();
            this.inputs_.remove(index);
        }

        @Override // wallet.core.jni.proto.NEO.SigningInputOrBuilder
        public List<TransactionOutput> getOutputsList() {
            return this.outputs_;
        }

        public List<? extends TransactionOutputOrBuilder> getOutputsOrBuilderList() {
            return this.outputs_;
        }

        @Override // wallet.core.jni.proto.NEO.SigningInputOrBuilder
        public int getOutputsCount() {
            return this.outputs_.size();
        }

        @Override // wallet.core.jni.proto.NEO.SigningInputOrBuilder
        public TransactionOutput getOutputs(int index) {
            return this.outputs_.get(index);
        }

        public TransactionOutputOrBuilder getOutputsOrBuilder(int index) {
            return this.outputs_.get(index);
        }

        private void ensureOutputsIsMutable() {
            Internal.ProtobufList<TransactionOutput> protobufList = this.outputs_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.outputs_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOutputs(int index, TransactionOutput value) {
            value.getClass();
            ensureOutputsIsMutable();
            this.outputs_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addOutputs(TransactionOutput value) {
            value.getClass();
            ensureOutputsIsMutable();
            this.outputs_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addOutputs(int index, TransactionOutput value) {
            value.getClass();
            ensureOutputsIsMutable();
            this.outputs_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllOutputs(Iterable<? extends TransactionOutput> values) {
            ensureOutputsIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.outputs_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOutputs() {
            this.outputs_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeOutputs(int index) {
            ensureOutputsIsMutable();
            this.outputs_.remove(index);
        }

        @Override // wallet.core.jni.proto.NEO.SigningInputOrBuilder
        public ByteString getPrivateKey() {
            return this.privateKey_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPrivateKey(ByteString value) {
            value.getClass();
            this.privateKey_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPrivateKey() {
            this.privateKey_ = getDefaultInstance().getPrivateKey();
        }

        @Override // wallet.core.jni.proto.NEO.SigningInputOrBuilder
        public long getFee() {
            return this.fee_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFee(long value) {
            this.fee_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFee() {
            this.fee_ = 0L;
        }

        @Override // wallet.core.jni.proto.NEO.SigningInputOrBuilder
        public String getGasAssetId() {
            return this.gasAssetId_;
        }

        @Override // wallet.core.jni.proto.NEO.SigningInputOrBuilder
        public ByteString getGasAssetIdBytes() {
            return ByteString.copyFromUtf8(this.gasAssetId_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setGasAssetId(String value) {
            value.getClass();
            this.gasAssetId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearGasAssetId() {
            this.gasAssetId_ = getDefaultInstance().getGasAssetId();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setGasAssetIdBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.gasAssetId_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.NEO.SigningInputOrBuilder
        public String getGasChangeAddress() {
            return this.gasChangeAddress_;
        }

        @Override // wallet.core.jni.proto.NEO.SigningInputOrBuilder
        public ByteString getGasChangeAddressBytes() {
            return ByteString.copyFromUtf8(this.gasChangeAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setGasChangeAddress(String value) {
            value.getClass();
            this.gasChangeAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearGasChangeAddress() {
            this.gasChangeAddress_ = getDefaultInstance().getGasChangeAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setGasChangeAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.gasChangeAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.NEO.SigningInputOrBuilder
        public boolean hasPlan() {
            return this.plan_ != null;
        }

        @Override // wallet.core.jni.proto.NEO.SigningInputOrBuilder
        public TransactionPlan getPlan() {
            TransactionPlan transactionPlan = this.plan_;
            return transactionPlan == null ? TransactionPlan.getDefaultInstance() : transactionPlan;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPlan(TransactionPlan value) {
            value.getClass();
            this.plan_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergePlan(TransactionPlan value) {
            value.getClass();
            TransactionPlan transactionPlan = this.plan_;
            if (transactionPlan != null && transactionPlan != TransactionPlan.getDefaultInstance()) {
                this.plan_ = TransactionPlan.newBuilder(this.plan_).mergeFrom((TransactionPlan.Builder) value).buildPartial();
            } else {
                this.plan_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPlan() {
            this.plan_ = null;
        }

        public static SigningInput parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SigningInput parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SigningInput parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SigningInput parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SigningInput parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SigningInput parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SigningInput parseFrom(InputStream input) throws IOException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static SigningInput parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static SigningInput parseDelimitedFrom(InputStream input) throws IOException {
            return (SigningInput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static SigningInput parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SigningInput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static SigningInput parseFrom(CodedInputStream input) throws IOException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static SigningInput parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SigningInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(SigningInput prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<SigningInput, Builder> implements SigningInputOrBuilder {
            /* synthetic */ Builder(C77521 c77521) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.NEO.SigningInputOrBuilder
            public List<TransactionInput> getInputsList() {
                return Collections.unmodifiableList(((SigningInput) this.instance).getInputsList());
            }

            @Override // wallet.core.jni.proto.NEO.SigningInputOrBuilder
            public int getInputsCount() {
                return ((SigningInput) this.instance).getInputsCount();
            }

            @Override // wallet.core.jni.proto.NEO.SigningInputOrBuilder
            public TransactionInput getInputs(int index) {
                return ((SigningInput) this.instance).getInputs(index);
            }

            public Builder setInputs(int index, TransactionInput value) {
                copyOnWrite();
                ((SigningInput) this.instance).setInputs(index, value);
                return this;
            }

            public Builder setInputs(int index, TransactionInput.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setInputs(index, builderForValue.build());
                return this;
            }

            public Builder addInputs(TransactionInput value) {
                copyOnWrite();
                ((SigningInput) this.instance).addInputs(value);
                return this;
            }

            public Builder addInputs(int index, TransactionInput value) {
                copyOnWrite();
                ((SigningInput) this.instance).addInputs(index, value);
                return this;
            }

            public Builder addInputs(TransactionInput.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).addInputs(builderForValue.build());
                return this;
            }

            public Builder addInputs(int index, TransactionInput.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).addInputs(index, builderForValue.build());
                return this;
            }

            public Builder addAllInputs(Iterable<? extends TransactionInput> values) {
                copyOnWrite();
                ((SigningInput) this.instance).addAllInputs(values);
                return this;
            }

            public Builder clearInputs() {
                copyOnWrite();
                ((SigningInput) this.instance).clearInputs();
                return this;
            }

            public Builder removeInputs(int index) {
                copyOnWrite();
                ((SigningInput) this.instance).removeInputs(index);
                return this;
            }

            @Override // wallet.core.jni.proto.NEO.SigningInputOrBuilder
            public List<TransactionOutput> getOutputsList() {
                return Collections.unmodifiableList(((SigningInput) this.instance).getOutputsList());
            }

            @Override // wallet.core.jni.proto.NEO.SigningInputOrBuilder
            public int getOutputsCount() {
                return ((SigningInput) this.instance).getOutputsCount();
            }

            @Override // wallet.core.jni.proto.NEO.SigningInputOrBuilder
            public TransactionOutput getOutputs(int index) {
                return ((SigningInput) this.instance).getOutputs(index);
            }

            public Builder setOutputs(int index, TransactionOutput value) {
                copyOnWrite();
                ((SigningInput) this.instance).setOutputs(index, value);
                return this;
            }

            public Builder setOutputs(int index, TransactionOutput.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setOutputs(index, builderForValue.build());
                return this;
            }

            public Builder addOutputs(TransactionOutput value) {
                copyOnWrite();
                ((SigningInput) this.instance).addOutputs(value);
                return this;
            }

            public Builder addOutputs(int index, TransactionOutput value) {
                copyOnWrite();
                ((SigningInput) this.instance).addOutputs(index, value);
                return this;
            }

            public Builder addOutputs(TransactionOutput.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).addOutputs(builderForValue.build());
                return this;
            }

            public Builder addOutputs(int index, TransactionOutput.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).addOutputs(index, builderForValue.build());
                return this;
            }

            public Builder addAllOutputs(Iterable<? extends TransactionOutput> values) {
                copyOnWrite();
                ((SigningInput) this.instance).addAllOutputs(values);
                return this;
            }

            public Builder clearOutputs() {
                copyOnWrite();
                ((SigningInput) this.instance).clearOutputs();
                return this;
            }

            public Builder removeOutputs(int index) {
                copyOnWrite();
                ((SigningInput) this.instance).removeOutputs(index);
                return this;
            }

            @Override // wallet.core.jni.proto.NEO.SigningInputOrBuilder
            public ByteString getPrivateKey() {
                return ((SigningInput) this.instance).getPrivateKey();
            }

            public Builder setPrivateKey(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setPrivateKey(value);
                return this;
            }

            public Builder clearPrivateKey() {
                copyOnWrite();
                ((SigningInput) this.instance).clearPrivateKey();
                return this;
            }

            @Override // wallet.core.jni.proto.NEO.SigningInputOrBuilder
            public long getFee() {
                return ((SigningInput) this.instance).getFee();
            }

            public Builder setFee(long value) {
                copyOnWrite();
                ((SigningInput) this.instance).setFee(value);
                return this;
            }

            public Builder clearFee() {
                copyOnWrite();
                ((SigningInput) this.instance).clearFee();
                return this;
            }

            @Override // wallet.core.jni.proto.NEO.SigningInputOrBuilder
            public String getGasAssetId() {
                return ((SigningInput) this.instance).getGasAssetId();
            }

            @Override // wallet.core.jni.proto.NEO.SigningInputOrBuilder
            public ByteString getGasAssetIdBytes() {
                return ((SigningInput) this.instance).getGasAssetIdBytes();
            }

            public Builder setGasAssetId(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setGasAssetId(value);
                return this;
            }

            public Builder clearGasAssetId() {
                copyOnWrite();
                ((SigningInput) this.instance).clearGasAssetId();
                return this;
            }

            public Builder setGasAssetIdBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setGasAssetIdBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.NEO.SigningInputOrBuilder
            public String getGasChangeAddress() {
                return ((SigningInput) this.instance).getGasChangeAddress();
            }

            @Override // wallet.core.jni.proto.NEO.SigningInputOrBuilder
            public ByteString getGasChangeAddressBytes() {
                return ((SigningInput) this.instance).getGasChangeAddressBytes();
            }

            public Builder setGasChangeAddress(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setGasChangeAddress(value);
                return this;
            }

            public Builder clearGasChangeAddress() {
                copyOnWrite();
                ((SigningInput) this.instance).clearGasChangeAddress();
                return this;
            }

            public Builder setGasChangeAddressBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setGasChangeAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.NEO.SigningInputOrBuilder
            public boolean hasPlan() {
                return ((SigningInput) this.instance).hasPlan();
            }

            @Override // wallet.core.jni.proto.NEO.SigningInputOrBuilder
            public TransactionPlan getPlan() {
                return ((SigningInput) this.instance).getPlan();
            }

            public Builder setPlan(TransactionPlan value) {
                copyOnWrite();
                ((SigningInput) this.instance).setPlan(value);
                return this;
            }

            public Builder setPlan(TransactionPlan.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setPlan(builderForValue.build());
                return this;
            }

            public Builder mergePlan(TransactionPlan value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergePlan(value);
                return this;
            }

            public Builder clearPlan() {
                copyOnWrite();
                ((SigningInput) this.instance).clearPlan();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77521.f2145xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0002\u0000\u0001\u001b\u0002\u001b\u0003\n\u0004\u0002\u0005Ȉ\u0006Ȉ\u0007\t", new Object[]{"inputs_", TransactionInput.class, "outputs_", TransactionOutput.class, "privateKey_", "fee_", "gasAssetId_", "gasChangeAddress_", "plan_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<SigningInput> parser = PARSER;
                    if (parser == null) {
                        synchronized (SigningInput.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            SigningInput signingInput = new SigningInput();
            DEFAULT_INSTANCE = signingInput;
            GeneratedMessageLite.registerDefaultInstance(SigningInput.class, signingInput);
        }

        public static SigningInput getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<SigningInput> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class SigningOutput extends GeneratedMessageLite<SigningOutput, Builder> implements SigningOutputOrBuilder {
        private static final SigningOutput DEFAULT_INSTANCE;
        public static final int ENCODED_FIELD_NUMBER = 1;
        public static final int ERROR_FIELD_NUMBER = 2;
        private static volatile Parser<SigningOutput> PARSER;
        private ByteString encoded_ = ByteString.EMPTY;
        private int error_;

        private SigningOutput() {
        }

        @Override // wallet.core.jni.proto.NEO.SigningOutputOrBuilder
        public ByteString getEncoded() {
            return this.encoded_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setEncoded(ByteString value) {
            value.getClass();
            this.encoded_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearEncoded() {
            this.encoded_ = getDefaultInstance().getEncoded();
        }

        @Override // wallet.core.jni.proto.NEO.SigningOutputOrBuilder
        public int getErrorValue() {
            return this.error_;
        }

        @Override // wallet.core.jni.proto.NEO.SigningOutputOrBuilder
        public Common.SigningError getError() {
            Common.SigningError forNumber = Common.SigningError.forNumber(this.error_);
            return forNumber == null ? Common.SigningError.UNRECOGNIZED : forNumber;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setErrorValue(int value) {
            this.error_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setError(Common.SigningError value) {
            this.error_ = value.getNumber();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearError() {
            this.error_ = 0;
        }

        public static SigningOutput parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SigningOutput parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SigningOutput parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SigningOutput parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SigningOutput parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SigningOutput parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SigningOutput parseFrom(InputStream input) throws IOException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static SigningOutput parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static SigningOutput parseDelimitedFrom(InputStream input) throws IOException {
            return (SigningOutput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static SigningOutput parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SigningOutput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static SigningOutput parseFrom(CodedInputStream input) throws IOException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static SigningOutput parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(SigningOutput prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<SigningOutput, Builder> implements SigningOutputOrBuilder {
            /* synthetic */ Builder(C77521 c77521) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.NEO.SigningOutputOrBuilder
            public ByteString getEncoded() {
                return ((SigningOutput) this.instance).getEncoded();
            }

            public Builder setEncoded(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setEncoded(value);
                return this;
            }

            public Builder clearEncoded() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearEncoded();
                return this;
            }

            @Override // wallet.core.jni.proto.NEO.SigningOutputOrBuilder
            public int getErrorValue() {
                return ((SigningOutput) this.instance).getErrorValue();
            }

            public Builder setErrorValue(int value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setErrorValue(value);
                return this;
            }

            @Override // wallet.core.jni.proto.NEO.SigningOutputOrBuilder
            public Common.SigningError getError() {
                return ((SigningOutput) this.instance).getError();
            }

            public Builder setError(Common.SigningError value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setError(value);
                return this;
            }

            public Builder clearError() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearError();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77521.f2145xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\f", new Object[]{"encoded_", "error_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<SigningOutput> parser = PARSER;
                    if (parser == null) {
                        synchronized (SigningOutput.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            SigningOutput signingOutput = new SigningOutput();
            DEFAULT_INSTANCE = signingOutput;
            GeneratedMessageLite.registerDefaultInstance(SigningOutput.class, signingOutput);
        }

        public static SigningOutput getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<SigningOutput> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class TransactionOutputPlan extends GeneratedMessageLite<TransactionOutputPlan, Builder> implements TransactionOutputPlanOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 1;
        public static final int ASSET_ID_FIELD_NUMBER = 4;
        public static final int AVAILABLE_AMOUNT_FIELD_NUMBER = 2;
        public static final int CHANGE_ADDRESS_FIELD_NUMBER = 6;
        public static final int CHANGE_FIELD_NUMBER = 3;
        private static final TransactionOutputPlan DEFAULT_INSTANCE;
        private static volatile Parser<TransactionOutputPlan> PARSER = null;
        public static final int TO_ADDRESS_FIELD_NUMBER = 5;
        private long amount_;
        private long availableAmount_;
        private long change_;
        private String assetId_ = "";
        private String toAddress_ = "";
        private String changeAddress_ = "";

        private TransactionOutputPlan() {
        }

        @Override // wallet.core.jni.proto.NEO.TransactionOutputPlanOrBuilder
        public long getAmount() {
            return this.amount_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAmount(long value) {
            this.amount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAmount() {
            this.amount_ = 0L;
        }

        @Override // wallet.core.jni.proto.NEO.TransactionOutputPlanOrBuilder
        public long getAvailableAmount() {
            return this.availableAmount_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAvailableAmount(long value) {
            this.availableAmount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAvailableAmount() {
            this.availableAmount_ = 0L;
        }

        @Override // wallet.core.jni.proto.NEO.TransactionOutputPlanOrBuilder
        public long getChange() {
            return this.change_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChange(long value) {
            this.change_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearChange() {
            this.change_ = 0L;
        }

        @Override // wallet.core.jni.proto.NEO.TransactionOutputPlanOrBuilder
        public String getAssetId() {
            return this.assetId_;
        }

        @Override // wallet.core.jni.proto.NEO.TransactionOutputPlanOrBuilder
        public ByteString getAssetIdBytes() {
            return ByteString.copyFromUtf8(this.assetId_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAssetId(String value) {
            value.getClass();
            this.assetId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAssetId() {
            this.assetId_ = getDefaultInstance().getAssetId();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAssetIdBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.assetId_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.NEO.TransactionOutputPlanOrBuilder
        public String getToAddress() {
            return this.toAddress_;
        }

        @Override // wallet.core.jni.proto.NEO.TransactionOutputPlanOrBuilder
        public ByteString getToAddressBytes() {
            return ByteString.copyFromUtf8(this.toAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setToAddress(String value) {
            value.getClass();
            this.toAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearToAddress() {
            this.toAddress_ = getDefaultInstance().getToAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setToAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.toAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.NEO.TransactionOutputPlanOrBuilder
        public String getChangeAddress() {
            return this.changeAddress_;
        }

        @Override // wallet.core.jni.proto.NEO.TransactionOutputPlanOrBuilder
        public ByteString getChangeAddressBytes() {
            return ByteString.copyFromUtf8(this.changeAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChangeAddress(String value) {
            value.getClass();
            this.changeAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearChangeAddress() {
            this.changeAddress_ = getDefaultInstance().getChangeAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChangeAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.changeAddress_ = value.toStringUtf8();
        }

        public static TransactionOutputPlan parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TransactionOutputPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionOutputPlan parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionOutputPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionOutputPlan parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TransactionOutputPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionOutputPlan parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionOutputPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionOutputPlan parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TransactionOutputPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionOutputPlan parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionOutputPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionOutputPlan parseFrom(InputStream input) throws IOException {
            return (TransactionOutputPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionOutputPlan parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionOutputPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransactionOutputPlan parseDelimitedFrom(InputStream input) throws IOException {
            return (TransactionOutputPlan) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionOutputPlan parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionOutputPlan) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransactionOutputPlan parseFrom(CodedInputStream input) throws IOException {
            return (TransactionOutputPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionOutputPlan parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionOutputPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TransactionOutputPlan prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TransactionOutputPlan, Builder> implements TransactionOutputPlanOrBuilder {
            /* synthetic */ Builder(C77521 c77521) {
                this();
            }

            private Builder() {
                super(TransactionOutputPlan.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.NEO.TransactionOutputPlanOrBuilder
            public long getAmount() {
                return ((TransactionOutputPlan) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((TransactionOutputPlan) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((TransactionOutputPlan) this.instance).clearAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.NEO.TransactionOutputPlanOrBuilder
            public long getAvailableAmount() {
                return ((TransactionOutputPlan) this.instance).getAvailableAmount();
            }

            public Builder setAvailableAmount(long value) {
                copyOnWrite();
                ((TransactionOutputPlan) this.instance).setAvailableAmount(value);
                return this;
            }

            public Builder clearAvailableAmount() {
                copyOnWrite();
                ((TransactionOutputPlan) this.instance).clearAvailableAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.NEO.TransactionOutputPlanOrBuilder
            public long getChange() {
                return ((TransactionOutputPlan) this.instance).getChange();
            }

            public Builder setChange(long value) {
                copyOnWrite();
                ((TransactionOutputPlan) this.instance).setChange(value);
                return this;
            }

            public Builder clearChange() {
                copyOnWrite();
                ((TransactionOutputPlan) this.instance).clearChange();
                return this;
            }

            @Override // wallet.core.jni.proto.NEO.TransactionOutputPlanOrBuilder
            public String getAssetId() {
                return ((TransactionOutputPlan) this.instance).getAssetId();
            }

            @Override // wallet.core.jni.proto.NEO.TransactionOutputPlanOrBuilder
            public ByteString getAssetIdBytes() {
                return ((TransactionOutputPlan) this.instance).getAssetIdBytes();
            }

            public Builder setAssetId(String value) {
                copyOnWrite();
                ((TransactionOutputPlan) this.instance).setAssetId(value);
                return this;
            }

            public Builder clearAssetId() {
                copyOnWrite();
                ((TransactionOutputPlan) this.instance).clearAssetId();
                return this;
            }

            public Builder setAssetIdBytes(ByteString value) {
                copyOnWrite();
                ((TransactionOutputPlan) this.instance).setAssetIdBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.NEO.TransactionOutputPlanOrBuilder
            public String getToAddress() {
                return ((TransactionOutputPlan) this.instance).getToAddress();
            }

            @Override // wallet.core.jni.proto.NEO.TransactionOutputPlanOrBuilder
            public ByteString getToAddressBytes() {
                return ((TransactionOutputPlan) this.instance).getToAddressBytes();
            }

            public Builder setToAddress(String value) {
                copyOnWrite();
                ((TransactionOutputPlan) this.instance).setToAddress(value);
                return this;
            }

            public Builder clearToAddress() {
                copyOnWrite();
                ((TransactionOutputPlan) this.instance).clearToAddress();
                return this;
            }

            public Builder setToAddressBytes(ByteString value) {
                copyOnWrite();
                ((TransactionOutputPlan) this.instance).setToAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.NEO.TransactionOutputPlanOrBuilder
            public String getChangeAddress() {
                return ((TransactionOutputPlan) this.instance).getChangeAddress();
            }

            @Override // wallet.core.jni.proto.NEO.TransactionOutputPlanOrBuilder
            public ByteString getChangeAddressBytes() {
                return ((TransactionOutputPlan) this.instance).getChangeAddressBytes();
            }

            public Builder setChangeAddress(String value) {
                copyOnWrite();
                ((TransactionOutputPlan) this.instance).setChangeAddress(value);
                return this;
            }

            public Builder clearChangeAddress() {
                copyOnWrite();
                ((TransactionOutputPlan) this.instance).clearChangeAddress();
                return this;
            }

            public Builder setChangeAddressBytes(ByteString value) {
                copyOnWrite();
                ((TransactionOutputPlan) this.instance).setChangeAddressBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77521.f2145xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TransactionOutputPlan();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0002\u0002\u0002\u0003\u0002\u0004Ȉ\u0005Ȉ\u0006Ȉ", new Object[]{"amount_", "availableAmount_", "change_", "assetId_", "toAddress_", "changeAddress_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TransactionOutputPlan> parser = PARSER;
                    if (parser == null) {
                        synchronized (TransactionOutputPlan.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            TransactionOutputPlan transactionOutputPlan = new TransactionOutputPlan();
            DEFAULT_INSTANCE = transactionOutputPlan;
            GeneratedMessageLite.registerDefaultInstance(TransactionOutputPlan.class, transactionOutputPlan);
        }

        public static TransactionOutputPlan getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TransactionOutputPlan> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class TransactionPlan extends GeneratedMessageLite<TransactionPlan, Builder> implements TransactionPlanOrBuilder {
        private static final TransactionPlan DEFAULT_INSTANCE;
        public static final int ERROR_FIELD_NUMBER = 4;
        public static final int FEE_FIELD_NUMBER = 3;
        public static final int INPUTS_FIELD_NUMBER = 2;
        public static final int OUTPUTS_FIELD_NUMBER = 1;
        private static volatile Parser<TransactionPlan> PARSER;
        private int error_;
        private long fee_;
        private Internal.ProtobufList<TransactionOutputPlan> outputs_ = GeneratedMessageLite.emptyProtobufList();
        private Internal.ProtobufList<TransactionInput> inputs_ = GeneratedMessageLite.emptyProtobufList();

        private TransactionPlan() {
        }

        @Override // wallet.core.jni.proto.NEO.TransactionPlanOrBuilder
        public List<TransactionOutputPlan> getOutputsList() {
            return this.outputs_;
        }

        public List<? extends TransactionOutputPlanOrBuilder> getOutputsOrBuilderList() {
            return this.outputs_;
        }

        @Override // wallet.core.jni.proto.NEO.TransactionPlanOrBuilder
        public int getOutputsCount() {
            return this.outputs_.size();
        }

        @Override // wallet.core.jni.proto.NEO.TransactionPlanOrBuilder
        public TransactionOutputPlan getOutputs(int index) {
            return this.outputs_.get(index);
        }

        public TransactionOutputPlanOrBuilder getOutputsOrBuilder(int index) {
            return this.outputs_.get(index);
        }

        private void ensureOutputsIsMutable() {
            Internal.ProtobufList<TransactionOutputPlan> protobufList = this.outputs_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.outputs_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOutputs(int index, TransactionOutputPlan value) {
            value.getClass();
            ensureOutputsIsMutable();
            this.outputs_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addOutputs(TransactionOutputPlan value) {
            value.getClass();
            ensureOutputsIsMutable();
            this.outputs_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addOutputs(int index, TransactionOutputPlan value) {
            value.getClass();
            ensureOutputsIsMutable();
            this.outputs_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllOutputs(Iterable<? extends TransactionOutputPlan> values) {
            ensureOutputsIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.outputs_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOutputs() {
            this.outputs_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeOutputs(int index) {
            ensureOutputsIsMutable();
            this.outputs_.remove(index);
        }

        @Override // wallet.core.jni.proto.NEO.TransactionPlanOrBuilder
        public List<TransactionInput> getInputsList() {
            return this.inputs_;
        }

        public List<? extends TransactionInputOrBuilder> getInputsOrBuilderList() {
            return this.inputs_;
        }

        @Override // wallet.core.jni.proto.NEO.TransactionPlanOrBuilder
        public int getInputsCount() {
            return this.inputs_.size();
        }

        @Override // wallet.core.jni.proto.NEO.TransactionPlanOrBuilder
        public TransactionInput getInputs(int index) {
            return this.inputs_.get(index);
        }

        public TransactionInputOrBuilder getInputsOrBuilder(int index) {
            return this.inputs_.get(index);
        }

        private void ensureInputsIsMutable() {
            Internal.ProtobufList<TransactionInput> protobufList = this.inputs_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.inputs_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setInputs(int index, TransactionInput value) {
            value.getClass();
            ensureInputsIsMutable();
            this.inputs_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addInputs(TransactionInput value) {
            value.getClass();
            ensureInputsIsMutable();
            this.inputs_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addInputs(int index, TransactionInput value) {
            value.getClass();
            ensureInputsIsMutable();
            this.inputs_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllInputs(Iterable<? extends TransactionInput> values) {
            ensureInputsIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.inputs_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearInputs() {
            this.inputs_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeInputs(int index) {
            ensureInputsIsMutable();
            this.inputs_.remove(index);
        }

        @Override // wallet.core.jni.proto.NEO.TransactionPlanOrBuilder
        public long getFee() {
            return this.fee_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFee(long value) {
            this.fee_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFee() {
            this.fee_ = 0L;
        }

        @Override // wallet.core.jni.proto.NEO.TransactionPlanOrBuilder
        public int getErrorValue() {
            return this.error_;
        }

        @Override // wallet.core.jni.proto.NEO.TransactionPlanOrBuilder
        public Common.SigningError getError() {
            Common.SigningError forNumber = Common.SigningError.forNumber(this.error_);
            return forNumber == null ? Common.SigningError.UNRECOGNIZED : forNumber;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setErrorValue(int value) {
            this.error_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setError(Common.SigningError value) {
            this.error_ = value.getNumber();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearError() {
            this.error_ = 0;
        }

        public static TransactionPlan parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionPlan parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionPlan parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionPlan parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionPlan parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionPlan parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionPlan parseFrom(InputStream input) throws IOException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionPlan parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransactionPlan parseDelimitedFrom(InputStream input) throws IOException {
            return (TransactionPlan) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionPlan parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionPlan) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransactionPlan parseFrom(CodedInputStream input) throws IOException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionPlan parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TransactionPlan prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TransactionPlan, Builder> implements TransactionPlanOrBuilder {
            /* synthetic */ Builder(C77521 c77521) {
                this();
            }

            private Builder() {
                super(TransactionPlan.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.NEO.TransactionPlanOrBuilder
            public List<TransactionOutputPlan> getOutputsList() {
                return Collections.unmodifiableList(((TransactionPlan) this.instance).getOutputsList());
            }

            @Override // wallet.core.jni.proto.NEO.TransactionPlanOrBuilder
            public int getOutputsCount() {
                return ((TransactionPlan) this.instance).getOutputsCount();
            }

            @Override // wallet.core.jni.proto.NEO.TransactionPlanOrBuilder
            public TransactionOutputPlan getOutputs(int index) {
                return ((TransactionPlan) this.instance).getOutputs(index);
            }

            public Builder setOutputs(int index, TransactionOutputPlan value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setOutputs(index, value);
                return this;
            }

            public Builder setOutputs(int index, TransactionOutputPlan.Builder builderForValue) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setOutputs(index, builderForValue.build());
                return this;
            }

            public Builder addOutputs(TransactionOutputPlan value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addOutputs(value);
                return this;
            }

            public Builder addOutputs(int index, TransactionOutputPlan value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addOutputs(index, value);
                return this;
            }

            public Builder addOutputs(TransactionOutputPlan.Builder builderForValue) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addOutputs(builderForValue.build());
                return this;
            }

            public Builder addOutputs(int index, TransactionOutputPlan.Builder builderForValue) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addOutputs(index, builderForValue.build());
                return this;
            }

            public Builder addAllOutputs(Iterable<? extends TransactionOutputPlan> values) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addAllOutputs(values);
                return this;
            }

            public Builder clearOutputs() {
                copyOnWrite();
                ((TransactionPlan) this.instance).clearOutputs();
                return this;
            }

            public Builder removeOutputs(int index) {
                copyOnWrite();
                ((TransactionPlan) this.instance).removeOutputs(index);
                return this;
            }

            @Override // wallet.core.jni.proto.NEO.TransactionPlanOrBuilder
            public List<TransactionInput> getInputsList() {
                return Collections.unmodifiableList(((TransactionPlan) this.instance).getInputsList());
            }

            @Override // wallet.core.jni.proto.NEO.TransactionPlanOrBuilder
            public int getInputsCount() {
                return ((TransactionPlan) this.instance).getInputsCount();
            }

            @Override // wallet.core.jni.proto.NEO.TransactionPlanOrBuilder
            public TransactionInput getInputs(int index) {
                return ((TransactionPlan) this.instance).getInputs(index);
            }

            public Builder setInputs(int index, TransactionInput value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setInputs(index, value);
                return this;
            }

            public Builder setInputs(int index, TransactionInput.Builder builderForValue) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setInputs(index, builderForValue.build());
                return this;
            }

            public Builder addInputs(TransactionInput value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addInputs(value);
                return this;
            }

            public Builder addInputs(int index, TransactionInput value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addInputs(index, value);
                return this;
            }

            public Builder addInputs(TransactionInput.Builder builderForValue) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addInputs(builderForValue.build());
                return this;
            }

            public Builder addInputs(int index, TransactionInput.Builder builderForValue) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addInputs(index, builderForValue.build());
                return this;
            }

            public Builder addAllInputs(Iterable<? extends TransactionInput> values) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addAllInputs(values);
                return this;
            }

            public Builder clearInputs() {
                copyOnWrite();
                ((TransactionPlan) this.instance).clearInputs();
                return this;
            }

            public Builder removeInputs(int index) {
                copyOnWrite();
                ((TransactionPlan) this.instance).removeInputs(index);
                return this;
            }

            @Override // wallet.core.jni.proto.NEO.TransactionPlanOrBuilder
            public long getFee() {
                return ((TransactionPlan) this.instance).getFee();
            }

            public Builder setFee(long value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setFee(value);
                return this;
            }

            public Builder clearFee() {
                copyOnWrite();
                ((TransactionPlan) this.instance).clearFee();
                return this;
            }

            @Override // wallet.core.jni.proto.NEO.TransactionPlanOrBuilder
            public int getErrorValue() {
                return ((TransactionPlan) this.instance).getErrorValue();
            }

            public Builder setErrorValue(int value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setErrorValue(value);
                return this;
            }

            @Override // wallet.core.jni.proto.NEO.TransactionPlanOrBuilder
            public Common.SigningError getError() {
                return ((TransactionPlan) this.instance).getError();
            }

            public Builder setError(Common.SigningError value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setError(value);
                return this;
            }

            public Builder clearError() {
                copyOnWrite();
                ((TransactionPlan) this.instance).clearError();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77521.f2145xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TransactionPlan();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u001b\u0002\u001b\u0003\u0002\u0004\f", new Object[]{"outputs_", TransactionOutputPlan.class, "inputs_", TransactionInput.class, "fee_", "error_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TransactionPlan> parser = PARSER;
                    if (parser == null) {
                        synchronized (TransactionPlan.class) {
                            parser = PARSER;
                            if (parser == null) {
                                parser = new GeneratedMessageLite.DefaultInstanceBasedParser<>(DEFAULT_INSTANCE);
                                PARSER = parser;
                            }
                        }
                    }
                    return parser;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            TransactionPlan transactionPlan = new TransactionPlan();
            DEFAULT_INSTANCE = transactionPlan;
            GeneratedMessageLite.registerDefaultInstance(TransactionPlan.class, transactionPlan);
        }

        public static TransactionPlan getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TransactionPlan> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }
}
