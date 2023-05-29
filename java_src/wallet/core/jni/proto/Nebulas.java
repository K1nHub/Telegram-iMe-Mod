package wallet.core.jni.proto;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MessageLite;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes6.dex */
public final class Nebulas {

    /* loaded from: classes6.dex */
    public interface DataOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getPayload();

        String getType();

        ByteString getTypeBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface RawTransactionOrBuilder extends MessageLiteOrBuilder {
        int getAlg();

        int getChainId();

        Data getData();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getFrom();

        ByteString getGasLimit();

        ByteString getGasPrice();

        ByteString getHash();

        long getNonce();

        ByteString getSign();

        long getTimestamp();

        ByteString getTo();

        ByteString getValue();

        boolean hasData();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        ByteString getAmount();

        ByteString getChainId();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getFromAddress();

        ByteString getFromAddressBytes();

        ByteString getGasLimit();

        ByteString getGasPrice();

        ByteString getNonce();

        String getPayload();

        ByteString getPayloadBytes();

        ByteString getPrivateKey();

        ByteString getTimestamp();

        String getToAddress();

        ByteString getToAddressBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SigningOutputOrBuilder extends MessageLiteOrBuilder {
        int getAlgorithm();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getRaw();

        ByteString getRawBytes();

        ByteString getSignature();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private Nebulas() {
    }

    /* loaded from: classes6.dex */
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 7;
        public static final int CHAIN_ID_FIELD_NUMBER = 2;
        private static final SigningInput DEFAULT_INSTANCE;
        public static final int FROM_ADDRESS_FIELD_NUMBER = 1;
        public static final int GAS_LIMIT_FIELD_NUMBER = 5;
        public static final int GAS_PRICE_FIELD_NUMBER = 4;
        public static final int NONCE_FIELD_NUMBER = 3;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PAYLOAD_FIELD_NUMBER = 9;
        public static final int PRIVATE_KEY_FIELD_NUMBER = 10;
        public static final int TIMESTAMP_FIELD_NUMBER = 8;
        public static final int TO_ADDRESS_FIELD_NUMBER = 6;
        private ByteString amount_;
        private ByteString chainId_;
        private String fromAddress_ = "";
        private ByteString gasLimit_;
        private ByteString gasPrice_;
        private ByteString nonce_;
        private String payload_;
        private ByteString privateKey_;
        private ByteString timestamp_;
        private String toAddress_;

        private SigningInput() {
            ByteString byteString = ByteString.EMPTY;
            this.chainId_ = byteString;
            this.nonce_ = byteString;
            this.gasPrice_ = byteString;
            this.gasLimit_ = byteString;
            this.toAddress_ = "";
            this.amount_ = byteString;
            this.timestamp_ = byteString;
            this.payload_ = "";
            this.privateKey_ = byteString;
        }

        @Override // wallet.core.jni.proto.Nebulas.SigningInputOrBuilder
        public String getFromAddress() {
            return this.fromAddress_;
        }

        @Override // wallet.core.jni.proto.Nebulas.SigningInputOrBuilder
        public ByteString getFromAddressBytes() {
            return ByteString.copyFromUtf8(this.fromAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFromAddress(String value) {
            value.getClass();
            this.fromAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFromAddress() {
            this.fromAddress_ = getDefaultInstance().getFromAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFromAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.fromAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Nebulas.SigningInputOrBuilder
        public ByteString getChainId() {
            return this.chainId_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChainId(ByteString value) {
            value.getClass();
            this.chainId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearChainId() {
            this.chainId_ = getDefaultInstance().getChainId();
        }

        @Override // wallet.core.jni.proto.Nebulas.SigningInputOrBuilder
        public ByteString getNonce() {
            return this.nonce_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setNonce(ByteString value) {
            value.getClass();
            this.nonce_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearNonce() {
            this.nonce_ = getDefaultInstance().getNonce();
        }

        @Override // wallet.core.jni.proto.Nebulas.SigningInputOrBuilder
        public ByteString getGasPrice() {
            return this.gasPrice_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setGasPrice(ByteString value) {
            value.getClass();
            this.gasPrice_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearGasPrice() {
            this.gasPrice_ = getDefaultInstance().getGasPrice();
        }

        @Override // wallet.core.jni.proto.Nebulas.SigningInputOrBuilder
        public ByteString getGasLimit() {
            return this.gasLimit_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setGasLimit(ByteString value) {
            value.getClass();
            this.gasLimit_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearGasLimit() {
            this.gasLimit_ = getDefaultInstance().getGasLimit();
        }

        @Override // wallet.core.jni.proto.Nebulas.SigningInputOrBuilder
        public String getToAddress() {
            return this.toAddress_;
        }

        @Override // wallet.core.jni.proto.Nebulas.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Nebulas.SigningInputOrBuilder
        public ByteString getAmount() {
            return this.amount_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAmount(ByteString value) {
            value.getClass();
            this.amount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAmount() {
            this.amount_ = getDefaultInstance().getAmount();
        }

        @Override // wallet.core.jni.proto.Nebulas.SigningInputOrBuilder
        public ByteString getTimestamp() {
            return this.timestamp_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTimestamp(ByteString value) {
            value.getClass();
            this.timestamp_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTimestamp() {
            this.timestamp_ = getDefaultInstance().getTimestamp();
        }

        @Override // wallet.core.jni.proto.Nebulas.SigningInputOrBuilder
        public String getPayload() {
            return this.payload_;
        }

        @Override // wallet.core.jni.proto.Nebulas.SigningInputOrBuilder
        public ByteString getPayloadBytes() {
            return ByteString.copyFromUtf8(this.payload_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPayload(String value) {
            value.getClass();
            this.payload_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPayload() {
            this.payload_ = getDefaultInstance().getPayload();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPayloadBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.payload_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Nebulas.SigningInputOrBuilder
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

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<SigningInput, Builder> implements SigningInputOrBuilder {
            /* synthetic */ Builder(C68391 c68391) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Nebulas.SigningInputOrBuilder
            public String getFromAddress() {
                return ((SigningInput) this.instance).getFromAddress();
            }

            @Override // wallet.core.jni.proto.Nebulas.SigningInputOrBuilder
            public ByteString getFromAddressBytes() {
                return ((SigningInput) this.instance).getFromAddressBytes();
            }

            public Builder setFromAddress(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setFromAddress(value);
                return this;
            }

            public Builder clearFromAddress() {
                copyOnWrite();
                ((SigningInput) this.instance).clearFromAddress();
                return this;
            }

            public Builder setFromAddressBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setFromAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Nebulas.SigningInputOrBuilder
            public ByteString getChainId() {
                return ((SigningInput) this.instance).getChainId();
            }

            public Builder setChainId(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setChainId(value);
                return this;
            }

            public Builder clearChainId() {
                copyOnWrite();
                ((SigningInput) this.instance).clearChainId();
                return this;
            }

            @Override // wallet.core.jni.proto.Nebulas.SigningInputOrBuilder
            public ByteString getNonce() {
                return ((SigningInput) this.instance).getNonce();
            }

            public Builder setNonce(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setNonce(value);
                return this;
            }

            public Builder clearNonce() {
                copyOnWrite();
                ((SigningInput) this.instance).clearNonce();
                return this;
            }

            @Override // wallet.core.jni.proto.Nebulas.SigningInputOrBuilder
            public ByteString getGasPrice() {
                return ((SigningInput) this.instance).getGasPrice();
            }

            public Builder setGasPrice(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setGasPrice(value);
                return this;
            }

            public Builder clearGasPrice() {
                copyOnWrite();
                ((SigningInput) this.instance).clearGasPrice();
                return this;
            }

            @Override // wallet.core.jni.proto.Nebulas.SigningInputOrBuilder
            public ByteString getGasLimit() {
                return ((SigningInput) this.instance).getGasLimit();
            }

            public Builder setGasLimit(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setGasLimit(value);
                return this;
            }

            public Builder clearGasLimit() {
                copyOnWrite();
                ((SigningInput) this.instance).clearGasLimit();
                return this;
            }

            @Override // wallet.core.jni.proto.Nebulas.SigningInputOrBuilder
            public String getToAddress() {
                return ((SigningInput) this.instance).getToAddress();
            }

            @Override // wallet.core.jni.proto.Nebulas.SigningInputOrBuilder
            public ByteString getToAddressBytes() {
                return ((SigningInput) this.instance).getToAddressBytes();
            }

            public Builder setToAddress(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setToAddress(value);
                return this;
            }

            public Builder clearToAddress() {
                copyOnWrite();
                ((SigningInput) this.instance).clearToAddress();
                return this;
            }

            public Builder setToAddressBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setToAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Nebulas.SigningInputOrBuilder
            public ByteString getAmount() {
                return ((SigningInput) this.instance).getAmount();
            }

            public Builder setAmount(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((SigningInput) this.instance).clearAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.Nebulas.SigningInputOrBuilder
            public ByteString getTimestamp() {
                return ((SigningInput) this.instance).getTimestamp();
            }

            public Builder setTimestamp(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setTimestamp(value);
                return this;
            }

            public Builder clearTimestamp() {
                copyOnWrite();
                ((SigningInput) this.instance).clearTimestamp();
                return this;
            }

            @Override // wallet.core.jni.proto.Nebulas.SigningInputOrBuilder
            public String getPayload() {
                return ((SigningInput) this.instance).getPayload();
            }

            @Override // wallet.core.jni.proto.Nebulas.SigningInputOrBuilder
            public ByteString getPayloadBytes() {
                return ((SigningInput) this.instance).getPayloadBytes();
            }

            public Builder setPayload(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setPayload(value);
                return this;
            }

            public Builder clearPayload() {
                copyOnWrite();
                ((SigningInput) this.instance).clearPayload();
                return this;
            }

            public Builder setPayloadBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setPayloadBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Nebulas.SigningInputOrBuilder
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
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68391.f1815xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\n\u0000\u0000\u0001\n\n\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\n\u0004\n\u0005\n\u0006Ȉ\u0007\n\b\n\tȈ\n\n", new Object[]{"fromAddress_", "chainId_", "nonce_", "gasPrice_", "gasLimit_", "toAddress_", "amount_", "timestamp_", "payload_", "privateKey_"});
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

    /* renamed from: wallet.core.jni.proto.Nebulas$1 */
    /* loaded from: classes6.dex */
    static /* synthetic */ class C68391 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f1815xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f1815xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1815xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1815xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1815xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1815xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1815xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1815xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class SigningOutput extends GeneratedMessageLite<SigningOutput, Builder> implements SigningOutputOrBuilder {
        public static final int ALGORITHM_FIELD_NUMBER = 1;
        private static final SigningOutput DEFAULT_INSTANCE;
        private static volatile Parser<SigningOutput> PARSER = null;
        public static final int RAW_FIELD_NUMBER = 3;
        public static final int SIGNATURE_FIELD_NUMBER = 2;
        private int algorithm_;
        private ByteString signature_ = ByteString.EMPTY;
        private String raw_ = "";

        private SigningOutput() {
        }

        @Override // wallet.core.jni.proto.Nebulas.SigningOutputOrBuilder
        public int getAlgorithm() {
            return this.algorithm_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAlgorithm(int value) {
            this.algorithm_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAlgorithm() {
            this.algorithm_ = 0;
        }

        @Override // wallet.core.jni.proto.Nebulas.SigningOutputOrBuilder
        public ByteString getSignature() {
            return this.signature_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSignature(ByteString value) {
            value.getClass();
            this.signature_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSignature() {
            this.signature_ = getDefaultInstance().getSignature();
        }

        @Override // wallet.core.jni.proto.Nebulas.SigningOutputOrBuilder
        public String getRaw() {
            return this.raw_;
        }

        @Override // wallet.core.jni.proto.Nebulas.SigningOutputOrBuilder
        public ByteString getRawBytes() {
            return ByteString.copyFromUtf8(this.raw_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRaw(String value) {
            value.getClass();
            this.raw_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearRaw() {
            this.raw_ = getDefaultInstance().getRaw();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRawBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.raw_ = value.toStringUtf8();
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

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<SigningOutput, Builder> implements SigningOutputOrBuilder {
            /* synthetic */ Builder(C68391 c68391) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Nebulas.SigningOutputOrBuilder
            public int getAlgorithm() {
                return ((SigningOutput) this.instance).getAlgorithm();
            }

            public Builder setAlgorithm(int value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setAlgorithm(value);
                return this;
            }

            public Builder clearAlgorithm() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearAlgorithm();
                return this;
            }

            @Override // wallet.core.jni.proto.Nebulas.SigningOutputOrBuilder
            public ByteString getSignature() {
                return ((SigningOutput) this.instance).getSignature();
            }

            public Builder setSignature(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setSignature(value);
                return this;
            }

            public Builder clearSignature() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearSignature();
                return this;
            }

            @Override // wallet.core.jni.proto.Nebulas.SigningOutputOrBuilder
            public String getRaw() {
                return ((SigningOutput) this.instance).getRaw();
            }

            @Override // wallet.core.jni.proto.Nebulas.SigningOutputOrBuilder
            public ByteString getRawBytes() {
                return ((SigningOutput) this.instance).getRawBytes();
            }

            public Builder setRaw(String value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setRaw(value);
                return this;
            }

            public Builder clearRaw() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearRaw();
                return this;
            }

            public Builder setRawBytes(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setRawBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68391.f1815xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\n\u0003Ȉ", new Object[]{"algorithm_", "signature_", "raw_"});
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

    /* loaded from: classes6.dex */
    public static final class Data extends GeneratedMessageLite<Data, Builder> implements DataOrBuilder {
        private static final Data DEFAULT_INSTANCE;
        private static volatile Parser<Data> PARSER = null;
        public static final int PAYLOAD_FIELD_NUMBER = 2;
        public static final int TYPE_FIELD_NUMBER = 1;
        private String type_ = "";
        private ByteString payload_ = ByteString.EMPTY;

        private Data() {
        }

        @Override // wallet.core.jni.proto.Nebulas.DataOrBuilder
        public String getType() {
            return this.type_;
        }

        @Override // wallet.core.jni.proto.Nebulas.DataOrBuilder
        public ByteString getTypeBytes() {
            return ByteString.copyFromUtf8(this.type_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setType(String value) {
            value.getClass();
            this.type_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearType() {
            this.type_ = getDefaultInstance().getType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTypeBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.type_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Nebulas.DataOrBuilder
        public ByteString getPayload() {
            return this.payload_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPayload(ByteString value) {
            value.getClass();
            this.payload_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPayload() {
            this.payload_ = getDefaultInstance().getPayload();
        }

        public static Data parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (Data) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Data parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Data) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Data parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (Data) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Data parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Data) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Data parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (Data) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Data parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Data) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Data parseFrom(InputStream input) throws IOException {
            return (Data) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Data parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Data) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Data parseDelimitedFrom(InputStream input) throws IOException {
            return (Data) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static Data parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Data) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Data parseFrom(CodedInputStream input) throws IOException {
            return (Data) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Data parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Data) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(Data prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Data, Builder> implements DataOrBuilder {
            /* synthetic */ Builder(C68391 c68391) {
                this();
            }

            private Builder() {
                super(Data.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Nebulas.DataOrBuilder
            public String getType() {
                return ((Data) this.instance).getType();
            }

            @Override // wallet.core.jni.proto.Nebulas.DataOrBuilder
            public ByteString getTypeBytes() {
                return ((Data) this.instance).getTypeBytes();
            }

            public Builder setType(String value) {
                copyOnWrite();
                ((Data) this.instance).setType(value);
                return this;
            }

            public Builder clearType() {
                copyOnWrite();
                ((Data) this.instance).clearType();
                return this;
            }

            public Builder setTypeBytes(ByteString value) {
                copyOnWrite();
                ((Data) this.instance).setTypeBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Nebulas.DataOrBuilder
            public ByteString getPayload() {
                return ((Data) this.instance).getPayload();
            }

            public Builder setPayload(ByteString value) {
                copyOnWrite();
                ((Data) this.instance).setPayload(value);
                return this;
            }

            public Builder clearPayload() {
                copyOnWrite();
                ((Data) this.instance).clearPayload();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68391.f1815xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Data();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\n", new Object[]{"type_", "payload_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Data> parser = PARSER;
                    if (parser == null) {
                        synchronized (Data.class) {
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
            Data data = new Data();
            DEFAULT_INSTANCE = data;
            GeneratedMessageLite.registerDefaultInstance(Data.class, data);
        }

        public static Data getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Data> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class RawTransaction extends GeneratedMessageLite<RawTransaction, Builder> implements RawTransactionOrBuilder {
        public static final int ALG_FIELD_NUMBER = 11;
        public static final int CHAIN_ID_FIELD_NUMBER = 8;
        public static final int DATA_FIELD_NUMBER = 7;
        private static final RawTransaction DEFAULT_INSTANCE;
        public static final int FROM_FIELD_NUMBER = 2;
        public static final int GAS_LIMIT_FIELD_NUMBER = 10;
        public static final int GAS_PRICE_FIELD_NUMBER = 9;
        public static final int HASH_FIELD_NUMBER = 1;
        public static final int NONCE_FIELD_NUMBER = 5;
        private static volatile Parser<RawTransaction> PARSER = null;
        public static final int SIGN_FIELD_NUMBER = 12;
        public static final int TIMESTAMP_FIELD_NUMBER = 6;
        public static final int TO_FIELD_NUMBER = 3;
        public static final int VALUE_FIELD_NUMBER = 4;
        private int alg_;
        private int chainId_;
        private Data data_;
        private ByteString from_;
        private ByteString gasLimit_;
        private ByteString gasPrice_;
        private ByteString hash_;
        private long nonce_;
        private ByteString sign_;
        private long timestamp_;
        private ByteString to_;
        private ByteString value_;

        private RawTransaction() {
            ByteString byteString = ByteString.EMPTY;
            this.hash_ = byteString;
            this.from_ = byteString;
            this.to_ = byteString;
            this.value_ = byteString;
            this.gasPrice_ = byteString;
            this.gasLimit_ = byteString;
            this.sign_ = byteString;
        }

        @Override // wallet.core.jni.proto.Nebulas.RawTransactionOrBuilder
        public ByteString getHash() {
            return this.hash_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setHash(ByteString value) {
            value.getClass();
            this.hash_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearHash() {
            this.hash_ = getDefaultInstance().getHash();
        }

        @Override // wallet.core.jni.proto.Nebulas.RawTransactionOrBuilder
        public ByteString getFrom() {
            return this.from_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFrom(ByteString value) {
            value.getClass();
            this.from_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFrom() {
            this.from_ = getDefaultInstance().getFrom();
        }

        @Override // wallet.core.jni.proto.Nebulas.RawTransactionOrBuilder
        public ByteString getTo() {
            return this.to_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTo(ByteString value) {
            value.getClass();
            this.to_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTo() {
            this.to_ = getDefaultInstance().getTo();
        }

        @Override // wallet.core.jni.proto.Nebulas.RawTransactionOrBuilder
        public ByteString getValue() {
            return this.value_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setValue(ByteString value) {
            value.getClass();
            this.value_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearValue() {
            this.value_ = getDefaultInstance().getValue();
        }

        @Override // wallet.core.jni.proto.Nebulas.RawTransactionOrBuilder
        public long getNonce() {
            return this.nonce_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setNonce(long value) {
            this.nonce_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearNonce() {
            this.nonce_ = 0L;
        }

        @Override // wallet.core.jni.proto.Nebulas.RawTransactionOrBuilder
        public long getTimestamp() {
            return this.timestamp_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTimestamp(long value) {
            this.timestamp_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTimestamp() {
            this.timestamp_ = 0L;
        }

        @Override // wallet.core.jni.proto.Nebulas.RawTransactionOrBuilder
        public boolean hasData() {
            return this.data_ != null;
        }

        @Override // wallet.core.jni.proto.Nebulas.RawTransactionOrBuilder
        public Data getData() {
            Data data = this.data_;
            return data == null ? Data.getDefaultInstance() : data;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setData(Data value) {
            value.getClass();
            this.data_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeData(Data value) {
            value.getClass();
            Data data = this.data_;
            if (data != null && data != Data.getDefaultInstance()) {
                this.data_ = Data.newBuilder(this.data_).mergeFrom((Data.Builder) value).buildPartial();
            } else {
                this.data_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearData() {
            this.data_ = null;
        }

        @Override // wallet.core.jni.proto.Nebulas.RawTransactionOrBuilder
        public int getChainId() {
            return this.chainId_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChainId(int value) {
            this.chainId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearChainId() {
            this.chainId_ = 0;
        }

        @Override // wallet.core.jni.proto.Nebulas.RawTransactionOrBuilder
        public ByteString getGasPrice() {
            return this.gasPrice_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setGasPrice(ByteString value) {
            value.getClass();
            this.gasPrice_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearGasPrice() {
            this.gasPrice_ = getDefaultInstance().getGasPrice();
        }

        @Override // wallet.core.jni.proto.Nebulas.RawTransactionOrBuilder
        public ByteString getGasLimit() {
            return this.gasLimit_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setGasLimit(ByteString value) {
            value.getClass();
            this.gasLimit_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearGasLimit() {
            this.gasLimit_ = getDefaultInstance().getGasLimit();
        }

        @Override // wallet.core.jni.proto.Nebulas.RawTransactionOrBuilder
        public int getAlg() {
            return this.alg_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAlg(int value) {
            this.alg_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAlg() {
            this.alg_ = 0;
        }

        @Override // wallet.core.jni.proto.Nebulas.RawTransactionOrBuilder
        public ByteString getSign() {
            return this.sign_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSign(ByteString value) {
            value.getClass();
            this.sign_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSign() {
            this.sign_ = getDefaultInstance().getSign();
        }

        public static RawTransaction parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (RawTransaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static RawTransaction parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (RawTransaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static RawTransaction parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (RawTransaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static RawTransaction parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (RawTransaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static RawTransaction parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (RawTransaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static RawTransaction parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (RawTransaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static RawTransaction parseFrom(InputStream input) throws IOException {
            return (RawTransaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static RawTransaction parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (RawTransaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static RawTransaction parseDelimitedFrom(InputStream input) throws IOException {
            return (RawTransaction) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static RawTransaction parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (RawTransaction) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static RawTransaction parseFrom(CodedInputStream input) throws IOException {
            return (RawTransaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static RawTransaction parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (RawTransaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(RawTransaction prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<RawTransaction, Builder> implements RawTransactionOrBuilder {
            /* synthetic */ Builder(C68391 c68391) {
                this();
            }

            private Builder() {
                super(RawTransaction.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Nebulas.RawTransactionOrBuilder
            public ByteString getHash() {
                return ((RawTransaction) this.instance).getHash();
            }

            public Builder setHash(ByteString value) {
                copyOnWrite();
                ((RawTransaction) this.instance).setHash(value);
                return this;
            }

            public Builder clearHash() {
                copyOnWrite();
                ((RawTransaction) this.instance).clearHash();
                return this;
            }

            @Override // wallet.core.jni.proto.Nebulas.RawTransactionOrBuilder
            public ByteString getFrom() {
                return ((RawTransaction) this.instance).getFrom();
            }

            public Builder setFrom(ByteString value) {
                copyOnWrite();
                ((RawTransaction) this.instance).setFrom(value);
                return this;
            }

            public Builder clearFrom() {
                copyOnWrite();
                ((RawTransaction) this.instance).clearFrom();
                return this;
            }

            @Override // wallet.core.jni.proto.Nebulas.RawTransactionOrBuilder
            public ByteString getTo() {
                return ((RawTransaction) this.instance).getTo();
            }

            public Builder setTo(ByteString value) {
                copyOnWrite();
                ((RawTransaction) this.instance).setTo(value);
                return this;
            }

            public Builder clearTo() {
                copyOnWrite();
                ((RawTransaction) this.instance).clearTo();
                return this;
            }

            @Override // wallet.core.jni.proto.Nebulas.RawTransactionOrBuilder
            public ByteString getValue() {
                return ((RawTransaction) this.instance).getValue();
            }

            public Builder setValue(ByteString value) {
                copyOnWrite();
                ((RawTransaction) this.instance).setValue(value);
                return this;
            }

            public Builder clearValue() {
                copyOnWrite();
                ((RawTransaction) this.instance).clearValue();
                return this;
            }

            @Override // wallet.core.jni.proto.Nebulas.RawTransactionOrBuilder
            public long getNonce() {
                return ((RawTransaction) this.instance).getNonce();
            }

            public Builder setNonce(long value) {
                copyOnWrite();
                ((RawTransaction) this.instance).setNonce(value);
                return this;
            }

            public Builder clearNonce() {
                copyOnWrite();
                ((RawTransaction) this.instance).clearNonce();
                return this;
            }

            @Override // wallet.core.jni.proto.Nebulas.RawTransactionOrBuilder
            public long getTimestamp() {
                return ((RawTransaction) this.instance).getTimestamp();
            }

            public Builder setTimestamp(long value) {
                copyOnWrite();
                ((RawTransaction) this.instance).setTimestamp(value);
                return this;
            }

            public Builder clearTimestamp() {
                copyOnWrite();
                ((RawTransaction) this.instance).clearTimestamp();
                return this;
            }

            @Override // wallet.core.jni.proto.Nebulas.RawTransactionOrBuilder
            public boolean hasData() {
                return ((RawTransaction) this.instance).hasData();
            }

            @Override // wallet.core.jni.proto.Nebulas.RawTransactionOrBuilder
            public Data getData() {
                return ((RawTransaction) this.instance).getData();
            }

            public Builder setData(Data value) {
                copyOnWrite();
                ((RawTransaction) this.instance).setData(value);
                return this;
            }

            public Builder setData(Data.Builder builderForValue) {
                copyOnWrite();
                ((RawTransaction) this.instance).setData(builderForValue.build());
                return this;
            }

            public Builder mergeData(Data value) {
                copyOnWrite();
                ((RawTransaction) this.instance).mergeData(value);
                return this;
            }

            public Builder clearData() {
                copyOnWrite();
                ((RawTransaction) this.instance).clearData();
                return this;
            }

            @Override // wallet.core.jni.proto.Nebulas.RawTransactionOrBuilder
            public int getChainId() {
                return ((RawTransaction) this.instance).getChainId();
            }

            public Builder setChainId(int value) {
                copyOnWrite();
                ((RawTransaction) this.instance).setChainId(value);
                return this;
            }

            public Builder clearChainId() {
                copyOnWrite();
                ((RawTransaction) this.instance).clearChainId();
                return this;
            }

            @Override // wallet.core.jni.proto.Nebulas.RawTransactionOrBuilder
            public ByteString getGasPrice() {
                return ((RawTransaction) this.instance).getGasPrice();
            }

            public Builder setGasPrice(ByteString value) {
                copyOnWrite();
                ((RawTransaction) this.instance).setGasPrice(value);
                return this;
            }

            public Builder clearGasPrice() {
                copyOnWrite();
                ((RawTransaction) this.instance).clearGasPrice();
                return this;
            }

            @Override // wallet.core.jni.proto.Nebulas.RawTransactionOrBuilder
            public ByteString getGasLimit() {
                return ((RawTransaction) this.instance).getGasLimit();
            }

            public Builder setGasLimit(ByteString value) {
                copyOnWrite();
                ((RawTransaction) this.instance).setGasLimit(value);
                return this;
            }

            public Builder clearGasLimit() {
                copyOnWrite();
                ((RawTransaction) this.instance).clearGasLimit();
                return this;
            }

            @Override // wallet.core.jni.proto.Nebulas.RawTransactionOrBuilder
            public int getAlg() {
                return ((RawTransaction) this.instance).getAlg();
            }

            public Builder setAlg(int value) {
                copyOnWrite();
                ((RawTransaction) this.instance).setAlg(value);
                return this;
            }

            public Builder clearAlg() {
                copyOnWrite();
                ((RawTransaction) this.instance).clearAlg();
                return this;
            }

            @Override // wallet.core.jni.proto.Nebulas.RawTransactionOrBuilder
            public ByteString getSign() {
                return ((RawTransaction) this.instance).getSign();
            }

            public Builder setSign(ByteString value) {
                copyOnWrite();
                ((RawTransaction) this.instance).setSign(value);
                return this;
            }

            public Builder clearSign() {
                copyOnWrite();
                ((RawTransaction) this.instance).clearSign();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68391.f1815xa1df5c61[method.ordinal()]) {
                case 1:
                    return new RawTransaction();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\f\u0000\u0000\u0001\f\f\u0000\u0000\u0000\u0001\n\u0002\n\u0003\n\u0004\n\u0005\u0003\u0006\u0002\u0007\t\b\u000b\t\n\n\n\u000b\u000b\f\n", new Object[]{"hash_", "from_", "to_", "value_", "nonce_", "timestamp_", "data_", "chainId_", "gasPrice_", "gasLimit_", "alg_", "sign_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<RawTransaction> parser = PARSER;
                    if (parser == null) {
                        synchronized (RawTransaction.class) {
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
            RawTransaction rawTransaction = new RawTransaction();
            DEFAULT_INSTANCE = rawTransaction;
            GeneratedMessageLite.registerDefaultInstance(RawTransaction.class, rawTransaction);
        }

        public static RawTransaction getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<RawTransaction> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }
}
