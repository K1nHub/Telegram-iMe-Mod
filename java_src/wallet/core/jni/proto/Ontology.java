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
public final class Ontology {

    /* loaded from: classes6.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        String getContract();

        ByteString getContractBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        long getGasLimit();

        long getGasPrice();

        String getMethod();

        ByteString getMethodBytes();

        int getNonce();

        ByteString getOwnerPrivateKey();

        ByteString getPayerPrivateKey();

        String getQueryAddress();

        ByteString getQueryAddressBytes();

        String getToAddress();

        ByteString getToAddressBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SigningOutputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getEncoded();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private Ontology() {
    }

    /* loaded from: classes6.dex */
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 5;
        public static final int CONTRACT_FIELD_NUMBER = 1;
        private static final SigningInput DEFAULT_INSTANCE;
        public static final int GAS_LIMIT_FIELD_NUMBER = 8;
        public static final int GAS_PRICE_FIELD_NUMBER = 7;
        public static final int METHOD_FIELD_NUMBER = 2;
        public static final int NONCE_FIELD_NUMBER = 10;
        public static final int OWNER_PRIVATE_KEY_FIELD_NUMBER = 3;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PAYER_PRIVATE_KEY_FIELD_NUMBER = 6;
        public static final int QUERY_ADDRESS_FIELD_NUMBER = 9;
        public static final int TO_ADDRESS_FIELD_NUMBER = 4;
        private long amount_;
        private long gasLimit_;
        private long gasPrice_;
        private int nonce_;
        private ByteString ownerPrivateKey_;
        private ByteString payerPrivateKey_;
        private String queryAddress_;
        private String toAddress_;
        private String contract_ = "";
        private String method_ = "";

        private SigningInput() {
            ByteString byteString = ByteString.EMPTY;
            this.ownerPrivateKey_ = byteString;
            this.toAddress_ = "";
            this.payerPrivateKey_ = byteString;
            this.queryAddress_ = "";
        }

        @Override // wallet.core.jni.proto.Ontology.SigningInputOrBuilder
        public String getContract() {
            return this.contract_;
        }

        @Override // wallet.core.jni.proto.Ontology.SigningInputOrBuilder
        public ByteString getContractBytes() {
            return ByteString.copyFromUtf8(this.contract_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setContract(String value) {
            value.getClass();
            this.contract_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearContract() {
            this.contract_ = getDefaultInstance().getContract();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setContractBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.contract_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Ontology.SigningInputOrBuilder
        public String getMethod() {
            return this.method_;
        }

        @Override // wallet.core.jni.proto.Ontology.SigningInputOrBuilder
        public ByteString getMethodBytes() {
            return ByteString.copyFromUtf8(this.method_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMethod(String value) {
            value.getClass();
            this.method_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMethod() {
            this.method_ = getDefaultInstance().getMethod();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMethodBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.method_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Ontology.SigningInputOrBuilder
        public ByteString getOwnerPrivateKey() {
            return this.ownerPrivateKey_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOwnerPrivateKey(ByteString value) {
            value.getClass();
            this.ownerPrivateKey_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOwnerPrivateKey() {
            this.ownerPrivateKey_ = getDefaultInstance().getOwnerPrivateKey();
        }

        @Override // wallet.core.jni.proto.Ontology.SigningInputOrBuilder
        public String getToAddress() {
            return this.toAddress_;
        }

        @Override // wallet.core.jni.proto.Ontology.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Ontology.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Ontology.SigningInputOrBuilder
        public ByteString getPayerPrivateKey() {
            return this.payerPrivateKey_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPayerPrivateKey(ByteString value) {
            value.getClass();
            this.payerPrivateKey_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPayerPrivateKey() {
            this.payerPrivateKey_ = getDefaultInstance().getPayerPrivateKey();
        }

        @Override // wallet.core.jni.proto.Ontology.SigningInputOrBuilder
        public long getGasPrice() {
            return this.gasPrice_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setGasPrice(long value) {
            this.gasPrice_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearGasPrice() {
            this.gasPrice_ = 0L;
        }

        @Override // wallet.core.jni.proto.Ontology.SigningInputOrBuilder
        public long getGasLimit() {
            return this.gasLimit_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setGasLimit(long value) {
            this.gasLimit_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearGasLimit() {
            this.gasLimit_ = 0L;
        }

        @Override // wallet.core.jni.proto.Ontology.SigningInputOrBuilder
        public String getQueryAddress() {
            return this.queryAddress_;
        }

        @Override // wallet.core.jni.proto.Ontology.SigningInputOrBuilder
        public ByteString getQueryAddressBytes() {
            return ByteString.copyFromUtf8(this.queryAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setQueryAddress(String value) {
            value.getClass();
            this.queryAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearQueryAddress() {
            this.queryAddress_ = getDefaultInstance().getQueryAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setQueryAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.queryAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Ontology.SigningInputOrBuilder
        public int getNonce() {
            return this.nonce_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setNonce(int value) {
            this.nonce_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearNonce() {
            this.nonce_ = 0;
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
            /* synthetic */ Builder(C68011 c68011) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Ontology.SigningInputOrBuilder
            public String getContract() {
                return ((SigningInput) this.instance).getContract();
            }

            @Override // wallet.core.jni.proto.Ontology.SigningInputOrBuilder
            public ByteString getContractBytes() {
                return ((SigningInput) this.instance).getContractBytes();
            }

            public Builder setContract(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setContract(value);
                return this;
            }

            public Builder clearContract() {
                copyOnWrite();
                ((SigningInput) this.instance).clearContract();
                return this;
            }

            public Builder setContractBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setContractBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Ontology.SigningInputOrBuilder
            public String getMethod() {
                return ((SigningInput) this.instance).getMethod();
            }

            @Override // wallet.core.jni.proto.Ontology.SigningInputOrBuilder
            public ByteString getMethodBytes() {
                return ((SigningInput) this.instance).getMethodBytes();
            }

            public Builder setMethod(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setMethod(value);
                return this;
            }

            public Builder clearMethod() {
                copyOnWrite();
                ((SigningInput) this.instance).clearMethod();
                return this;
            }

            public Builder setMethodBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setMethodBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Ontology.SigningInputOrBuilder
            public ByteString getOwnerPrivateKey() {
                return ((SigningInput) this.instance).getOwnerPrivateKey();
            }

            public Builder setOwnerPrivateKey(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setOwnerPrivateKey(value);
                return this;
            }

            public Builder clearOwnerPrivateKey() {
                copyOnWrite();
                ((SigningInput) this.instance).clearOwnerPrivateKey();
                return this;
            }

            @Override // wallet.core.jni.proto.Ontology.SigningInputOrBuilder
            public String getToAddress() {
                return ((SigningInput) this.instance).getToAddress();
            }

            @Override // wallet.core.jni.proto.Ontology.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.Ontology.SigningInputOrBuilder
            public long getAmount() {
                return ((SigningInput) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((SigningInput) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((SigningInput) this.instance).clearAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.Ontology.SigningInputOrBuilder
            public ByteString getPayerPrivateKey() {
                return ((SigningInput) this.instance).getPayerPrivateKey();
            }

            public Builder setPayerPrivateKey(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setPayerPrivateKey(value);
                return this;
            }

            public Builder clearPayerPrivateKey() {
                copyOnWrite();
                ((SigningInput) this.instance).clearPayerPrivateKey();
                return this;
            }

            @Override // wallet.core.jni.proto.Ontology.SigningInputOrBuilder
            public long getGasPrice() {
                return ((SigningInput) this.instance).getGasPrice();
            }

            public Builder setGasPrice(long value) {
                copyOnWrite();
                ((SigningInput) this.instance).setGasPrice(value);
                return this;
            }

            public Builder clearGasPrice() {
                copyOnWrite();
                ((SigningInput) this.instance).clearGasPrice();
                return this;
            }

            @Override // wallet.core.jni.proto.Ontology.SigningInputOrBuilder
            public long getGasLimit() {
                return ((SigningInput) this.instance).getGasLimit();
            }

            public Builder setGasLimit(long value) {
                copyOnWrite();
                ((SigningInput) this.instance).setGasLimit(value);
                return this;
            }

            public Builder clearGasLimit() {
                copyOnWrite();
                ((SigningInput) this.instance).clearGasLimit();
                return this;
            }

            @Override // wallet.core.jni.proto.Ontology.SigningInputOrBuilder
            public String getQueryAddress() {
                return ((SigningInput) this.instance).getQueryAddress();
            }

            @Override // wallet.core.jni.proto.Ontology.SigningInputOrBuilder
            public ByteString getQueryAddressBytes() {
                return ((SigningInput) this.instance).getQueryAddressBytes();
            }

            public Builder setQueryAddress(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setQueryAddress(value);
                return this;
            }

            public Builder clearQueryAddress() {
                copyOnWrite();
                ((SigningInput) this.instance).clearQueryAddress();
                return this;
            }

            public Builder setQueryAddressBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setQueryAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Ontology.SigningInputOrBuilder
            public int getNonce() {
                return ((SigningInput) this.instance).getNonce();
            }

            public Builder setNonce(int value) {
                copyOnWrite();
                ((SigningInput) this.instance).setNonce(value);
                return this;
            }

            public Builder clearNonce() {
                copyOnWrite();
                ((SigningInput) this.instance).clearNonce();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68011.f1889xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\n\u0000\u0000\u0001\n\n\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\n\u0004Ȉ\u0005\u0003\u0006\n\u0007\u0003\b\u0003\tȈ\n\u000b", new Object[]{"contract_", "method_", "ownerPrivateKey_", "toAddress_", "amount_", "payerPrivateKey_", "gasPrice_", "gasLimit_", "queryAddress_", "nonce_"});
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

    /* renamed from: wallet.core.jni.proto.Ontology$1 */
    /* loaded from: classes6.dex */
    static /* synthetic */ class C68011 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f1889xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f1889xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1889xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1889xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1889xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1889xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1889xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1889xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class SigningOutput extends GeneratedMessageLite<SigningOutput, Builder> implements SigningOutputOrBuilder {
        private static final SigningOutput DEFAULT_INSTANCE;
        public static final int ENCODED_FIELD_NUMBER = 1;
        private static volatile Parser<SigningOutput> PARSER;
        private ByteString encoded_ = ByteString.EMPTY;

        private SigningOutput() {
        }

        @Override // wallet.core.jni.proto.Ontology.SigningOutputOrBuilder
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
            /* synthetic */ Builder(C68011 c68011) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Ontology.SigningOutputOrBuilder
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
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68011.f1889xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\n", new Object[]{"encoded_"});
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
}
