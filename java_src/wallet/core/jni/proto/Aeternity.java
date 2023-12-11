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
/* loaded from: classes7.dex */
public final class Aeternity {

    /* loaded from: classes7.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        ByteString getAmount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getFee();

        String getFromAddress();

        ByteString getFromAddressBytes();

        long getNonce();

        String getPayload();

        ByteString getPayloadBytes();

        ByteString getPrivateKey();

        String getToAddress();

        ByteString getToAddressBytes();

        long getTtl();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface SigningOutputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getEncoded();

        ByteString getEncodedBytes();

        String getSignature();

        ByteString getSignatureBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private Aeternity() {
    }

    /* loaded from: classes7.dex */
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 3;
        private static final SigningInput DEFAULT_INSTANCE;
        public static final int FEE_FIELD_NUMBER = 4;
        public static final int FROM_ADDRESS_FIELD_NUMBER = 1;
        public static final int NONCE_FIELD_NUMBER = 7;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PAYLOAD_FIELD_NUMBER = 5;
        public static final int PRIVATE_KEY_FIELD_NUMBER = 8;
        public static final int TO_ADDRESS_FIELD_NUMBER = 2;
        public static final int TTL_FIELD_NUMBER = 6;
        private ByteString amount_;
        private ByteString fee_;
        private long nonce_;
        private String payload_;
        private ByteString privateKey_;
        private long ttl_;
        private String fromAddress_ = "";
        private String toAddress_ = "";

        private SigningInput() {
            ByteString byteString = ByteString.EMPTY;
            this.amount_ = byteString;
            this.fee_ = byteString;
            this.payload_ = "";
            this.privateKey_ = byteString;
        }

        @Override // wallet.core.jni.proto.Aeternity.SigningInputOrBuilder
        public String getFromAddress() {
            return this.fromAddress_;
        }

        @Override // wallet.core.jni.proto.Aeternity.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Aeternity.SigningInputOrBuilder
        public String getToAddress() {
            return this.toAddress_;
        }

        @Override // wallet.core.jni.proto.Aeternity.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Aeternity.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Aeternity.SigningInputOrBuilder
        public ByteString getFee() {
            return this.fee_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFee(ByteString value) {
            value.getClass();
            this.fee_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFee() {
            this.fee_ = getDefaultInstance().getFee();
        }

        @Override // wallet.core.jni.proto.Aeternity.SigningInputOrBuilder
        public String getPayload() {
            return this.payload_;
        }

        @Override // wallet.core.jni.proto.Aeternity.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Aeternity.SigningInputOrBuilder
        public long getTtl() {
            return this.ttl_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTtl(long value) {
            this.ttl_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTtl() {
            this.ttl_ = 0L;
        }

        @Override // wallet.core.jni.proto.Aeternity.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Aeternity.SigningInputOrBuilder
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

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<SigningInput, Builder> implements SigningInputOrBuilder {
            /* synthetic */ Builder(C77221 c77221) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Aeternity.SigningInputOrBuilder
            public String getFromAddress() {
                return ((SigningInput) this.instance).getFromAddress();
            }

            @Override // wallet.core.jni.proto.Aeternity.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.Aeternity.SigningInputOrBuilder
            public String getToAddress() {
                return ((SigningInput) this.instance).getToAddress();
            }

            @Override // wallet.core.jni.proto.Aeternity.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.Aeternity.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.Aeternity.SigningInputOrBuilder
            public ByteString getFee() {
                return ((SigningInput) this.instance).getFee();
            }

            public Builder setFee(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setFee(value);
                return this;
            }

            public Builder clearFee() {
                copyOnWrite();
                ((SigningInput) this.instance).clearFee();
                return this;
            }

            @Override // wallet.core.jni.proto.Aeternity.SigningInputOrBuilder
            public String getPayload() {
                return ((SigningInput) this.instance).getPayload();
            }

            @Override // wallet.core.jni.proto.Aeternity.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.Aeternity.SigningInputOrBuilder
            public long getTtl() {
                return ((SigningInput) this.instance).getTtl();
            }

            public Builder setTtl(long value) {
                copyOnWrite();
                ((SigningInput) this.instance).setTtl(value);
                return this;
            }

            public Builder clearTtl() {
                copyOnWrite();
                ((SigningInput) this.instance).clearTtl();
                return this;
            }

            @Override // wallet.core.jni.proto.Aeternity.SigningInputOrBuilder
            public long getNonce() {
                return ((SigningInput) this.instance).getNonce();
            }

            public Builder setNonce(long value) {
                copyOnWrite();
                ((SigningInput) this.instance).setNonce(value);
                return this;
            }

            public Builder clearNonce() {
                copyOnWrite();
                ((SigningInput) this.instance).clearNonce();
                return this;
            }

            @Override // wallet.core.jni.proto.Aeternity.SigningInputOrBuilder
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
            switch (C77221.f2118xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\b\u0000\u0000\u0001\b\b\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\n\u0004\n\u0005Ȉ\u0006\u0003\u0007\u0003\b\n", new Object[]{"fromAddress_", "toAddress_", "amount_", "fee_", "payload_", "ttl_", "nonce_", "privateKey_"});
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

    /* renamed from: wallet.core.jni.proto.Aeternity$1 */
    /* loaded from: classes7.dex */
    static /* synthetic */ class C77221 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f2118xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f2118xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2118xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2118xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2118xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2118xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2118xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2118xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes7.dex */
    public static final class SigningOutput extends GeneratedMessageLite<SigningOutput, Builder> implements SigningOutputOrBuilder {
        private static final SigningOutput DEFAULT_INSTANCE;
        public static final int ENCODED_FIELD_NUMBER = 1;
        private static volatile Parser<SigningOutput> PARSER = null;
        public static final int SIGNATURE_FIELD_NUMBER = 2;
        private String encoded_ = "";
        private String signature_ = "";

        private SigningOutput() {
        }

        @Override // wallet.core.jni.proto.Aeternity.SigningOutputOrBuilder
        public String getEncoded() {
            return this.encoded_;
        }

        @Override // wallet.core.jni.proto.Aeternity.SigningOutputOrBuilder
        public ByteString getEncodedBytes() {
            return ByteString.copyFromUtf8(this.encoded_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setEncoded(String value) {
            value.getClass();
            this.encoded_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearEncoded() {
            this.encoded_ = getDefaultInstance().getEncoded();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setEncodedBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.encoded_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Aeternity.SigningOutputOrBuilder
        public String getSignature() {
            return this.signature_;
        }

        @Override // wallet.core.jni.proto.Aeternity.SigningOutputOrBuilder
        public ByteString getSignatureBytes() {
            return ByteString.copyFromUtf8(this.signature_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSignature(String value) {
            value.getClass();
            this.signature_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSignature() {
            this.signature_ = getDefaultInstance().getSignature();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSignatureBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.signature_ = value.toStringUtf8();
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
            /* synthetic */ Builder(C77221 c77221) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Aeternity.SigningOutputOrBuilder
            public String getEncoded() {
                return ((SigningOutput) this.instance).getEncoded();
            }

            @Override // wallet.core.jni.proto.Aeternity.SigningOutputOrBuilder
            public ByteString getEncodedBytes() {
                return ((SigningOutput) this.instance).getEncodedBytes();
            }

            public Builder setEncoded(String value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setEncoded(value);
                return this;
            }

            public Builder clearEncoded() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearEncoded();
                return this;
            }

            public Builder setEncodedBytes(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setEncodedBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Aeternity.SigningOutputOrBuilder
            public String getSignature() {
                return ((SigningOutput) this.instance).getSignature();
            }

            @Override // wallet.core.jni.proto.Aeternity.SigningOutputOrBuilder
            public ByteString getSignatureBytes() {
                return ((SigningOutput) this.instance).getSignatureBytes();
            }

            public Builder setSignature(String value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setSignature(value);
                return this;
            }

            public Builder clearSignature() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearSignature();
                return this;
            }

            public Builder setSignatureBytes(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setSignatureBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77221.f2118xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ", new Object[]{"encoded_", "signature_"});
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
