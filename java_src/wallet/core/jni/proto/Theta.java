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
public final class Theta {

    /* loaded from: classes6.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        String getChainId();

        ByteString getChainIdBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getFee();

        ByteString getPrivateKey();

        long getSequence();

        ByteString getTfuelAmount();

        ByteString getThetaAmount();

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

        ByteString getSignature();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private Theta() {
    }

    /* loaded from: classes6.dex */
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        public static final int CHAIN_ID_FIELD_NUMBER = 1;
        private static final SigningInput DEFAULT_INSTANCE;
        public static final int FEE_FIELD_NUMBER = 6;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PRIVATE_KEY_FIELD_NUMBER = 7;
        public static final int SEQUENCE_FIELD_NUMBER = 5;
        public static final int TFUEL_AMOUNT_FIELD_NUMBER = 4;
        public static final int THETA_AMOUNT_FIELD_NUMBER = 3;
        public static final int TO_ADDRESS_FIELD_NUMBER = 2;
        private ByteString fee_;
        private ByteString privateKey_;
        private long sequence_;
        private ByteString tfuelAmount_;
        private ByteString thetaAmount_;
        private String chainId_ = "";
        private String toAddress_ = "";

        private SigningInput() {
            ByteString byteString = ByteString.EMPTY;
            this.thetaAmount_ = byteString;
            this.tfuelAmount_ = byteString;
            this.fee_ = byteString;
            this.privateKey_ = byteString;
        }

        @Override // wallet.core.jni.proto.Theta.SigningInputOrBuilder
        public String getChainId() {
            return this.chainId_;
        }

        @Override // wallet.core.jni.proto.Theta.SigningInputOrBuilder
        public ByteString getChainIdBytes() {
            return ByteString.copyFromUtf8(this.chainId_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChainId(String value) {
            value.getClass();
            this.chainId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearChainId() {
            this.chainId_ = getDefaultInstance().getChainId();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChainIdBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.chainId_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Theta.SigningInputOrBuilder
        public String getToAddress() {
            return this.toAddress_;
        }

        @Override // wallet.core.jni.proto.Theta.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Theta.SigningInputOrBuilder
        public ByteString getThetaAmount() {
            return this.thetaAmount_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setThetaAmount(ByteString value) {
            value.getClass();
            this.thetaAmount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearThetaAmount() {
            this.thetaAmount_ = getDefaultInstance().getThetaAmount();
        }

        @Override // wallet.core.jni.proto.Theta.SigningInputOrBuilder
        public ByteString getTfuelAmount() {
            return this.tfuelAmount_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTfuelAmount(ByteString value) {
            value.getClass();
            this.tfuelAmount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTfuelAmount() {
            this.tfuelAmount_ = getDefaultInstance().getTfuelAmount();
        }

        @Override // wallet.core.jni.proto.Theta.SigningInputOrBuilder
        public long getSequence() {
            return this.sequence_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSequence(long value) {
            this.sequence_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSequence() {
            this.sequence_ = 0L;
        }

        @Override // wallet.core.jni.proto.Theta.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Theta.SigningInputOrBuilder
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
            /* synthetic */ Builder(C68591 c68591) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Theta.SigningInputOrBuilder
            public String getChainId() {
                return ((SigningInput) this.instance).getChainId();
            }

            @Override // wallet.core.jni.proto.Theta.SigningInputOrBuilder
            public ByteString getChainIdBytes() {
                return ((SigningInput) this.instance).getChainIdBytes();
            }

            public Builder setChainId(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setChainId(value);
                return this;
            }

            public Builder clearChainId() {
                copyOnWrite();
                ((SigningInput) this.instance).clearChainId();
                return this;
            }

            public Builder setChainIdBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setChainIdBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Theta.SigningInputOrBuilder
            public String getToAddress() {
                return ((SigningInput) this.instance).getToAddress();
            }

            @Override // wallet.core.jni.proto.Theta.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.Theta.SigningInputOrBuilder
            public ByteString getThetaAmount() {
                return ((SigningInput) this.instance).getThetaAmount();
            }

            public Builder setThetaAmount(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setThetaAmount(value);
                return this;
            }

            public Builder clearThetaAmount() {
                copyOnWrite();
                ((SigningInput) this.instance).clearThetaAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.Theta.SigningInputOrBuilder
            public ByteString getTfuelAmount() {
                return ((SigningInput) this.instance).getTfuelAmount();
            }

            public Builder setTfuelAmount(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setTfuelAmount(value);
                return this;
            }

            public Builder clearTfuelAmount() {
                copyOnWrite();
                ((SigningInput) this.instance).clearTfuelAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.Theta.SigningInputOrBuilder
            public long getSequence() {
                return ((SigningInput) this.instance).getSequence();
            }

            public Builder setSequence(long value) {
                copyOnWrite();
                ((SigningInput) this.instance).setSequence(value);
                return this;
            }

            public Builder clearSequence() {
                copyOnWrite();
                ((SigningInput) this.instance).clearSequence();
                return this;
            }

            @Override // wallet.core.jni.proto.Theta.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.Theta.SigningInputOrBuilder
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
            switch (C68591.f1829xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\n\u0004\n\u0005\u0003\u0006\n\u0007\n", new Object[]{"chainId_", "toAddress_", "thetaAmount_", "tfuelAmount_", "sequence_", "fee_", "privateKey_"});
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

    /* renamed from: wallet.core.jni.proto.Theta$1 */
    /* loaded from: classes6.dex */
    static /* synthetic */ class C68591 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f1829xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f1829xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1829xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1829xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1829xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1829xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1829xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1829xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class SigningOutput extends GeneratedMessageLite<SigningOutput, Builder> implements SigningOutputOrBuilder {
        private static final SigningOutput DEFAULT_INSTANCE;
        public static final int ENCODED_FIELD_NUMBER = 1;
        private static volatile Parser<SigningOutput> PARSER = null;
        public static final int SIGNATURE_FIELD_NUMBER = 2;
        private ByteString encoded_;
        private ByteString signature_;

        private SigningOutput() {
            ByteString byteString = ByteString.EMPTY;
            this.encoded_ = byteString;
            this.signature_ = byteString;
        }

        @Override // wallet.core.jni.proto.Theta.SigningOutputOrBuilder
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

        @Override // wallet.core.jni.proto.Theta.SigningOutputOrBuilder
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
            /* synthetic */ Builder(C68591 c68591) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Theta.SigningOutputOrBuilder
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

            @Override // wallet.core.jni.proto.Theta.SigningOutputOrBuilder
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
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68591.f1829xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\n", new Object[]{"encoded_", "signature_"});
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
