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
public final class Sui {

    /* loaded from: classes7.dex */
    public interface SignDirectOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getUnsignedTxMsg();

        ByteString getUnsignedTxMsgBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getPrivateKey();

        SignDirect getSignDirectMessage();

        SigningInput.TransactionPayloadCase getTransactionPayloadCase();

        boolean hasSignDirectMessage();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface SigningOutputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getSignature();

        ByteString getSignatureBytes();

        String getUnsignedTx();

        ByteString getUnsignedTxBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private Sui() {
    }

    /* loaded from: classes7.dex */
    public static final class SignDirect extends GeneratedMessageLite<SignDirect, Builder> implements SignDirectOrBuilder {
        private static final SignDirect DEFAULT_INSTANCE;
        private static volatile Parser<SignDirect> PARSER = null;
        public static final int UNSIGNED_TX_MSG_FIELD_NUMBER = 1;
        private String unsignedTxMsg_ = "";

        private SignDirect() {
        }

        @Override // wallet.core.jni.proto.Sui.SignDirectOrBuilder
        public String getUnsignedTxMsg() {
            return this.unsignedTxMsg_;
        }

        @Override // wallet.core.jni.proto.Sui.SignDirectOrBuilder
        public ByteString getUnsignedTxMsgBytes() {
            return ByteString.copyFromUtf8(this.unsignedTxMsg_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setUnsignedTxMsg(String value) {
            value.getClass();
            this.unsignedTxMsg_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearUnsignedTxMsg() {
            this.unsignedTxMsg_ = getDefaultInstance().getUnsignedTxMsg();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setUnsignedTxMsgBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.unsignedTxMsg_ = value.toStringUtf8();
        }

        public static SignDirect parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (SignDirect) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SignDirect parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SignDirect) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SignDirect parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (SignDirect) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SignDirect parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SignDirect) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SignDirect parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (SignDirect) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SignDirect parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SignDirect) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SignDirect parseFrom(InputStream input) throws IOException {
            return (SignDirect) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static SignDirect parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SignDirect) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static SignDirect parseDelimitedFrom(InputStream input) throws IOException {
            return (SignDirect) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static SignDirect parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SignDirect) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static SignDirect parseFrom(CodedInputStream input) throws IOException {
            return (SignDirect) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static SignDirect parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SignDirect) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(SignDirect prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<SignDirect, Builder> implements SignDirectOrBuilder {
            /* synthetic */ Builder(C77641 c77641) {
                this();
            }

            private Builder() {
                super(SignDirect.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Sui.SignDirectOrBuilder
            public String getUnsignedTxMsg() {
                return ((SignDirect) this.instance).getUnsignedTxMsg();
            }

            @Override // wallet.core.jni.proto.Sui.SignDirectOrBuilder
            public ByteString getUnsignedTxMsgBytes() {
                return ((SignDirect) this.instance).getUnsignedTxMsgBytes();
            }

            public Builder setUnsignedTxMsg(String value) {
                copyOnWrite();
                ((SignDirect) this.instance).setUnsignedTxMsg(value);
                return this;
            }

            public Builder clearUnsignedTxMsg() {
                copyOnWrite();
                ((SignDirect) this.instance).clearUnsignedTxMsg();
                return this;
            }

            public Builder setUnsignedTxMsgBytes(ByteString value) {
                copyOnWrite();
                ((SignDirect) this.instance).setUnsignedTxMsgBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77641.f2158xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SignDirect();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"unsignedTxMsg_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<SignDirect> parser = PARSER;
                    if (parser == null) {
                        synchronized (SignDirect.class) {
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
            SignDirect signDirect = new SignDirect();
            DEFAULT_INSTANCE = signDirect;
            GeneratedMessageLite.registerDefaultInstance(SignDirect.class, signDirect);
        }

        public static SignDirect getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<SignDirect> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* renamed from: wallet.core.jni.proto.Sui$1 */
    /* loaded from: classes7.dex */
    static /* synthetic */ class C77641 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f2158xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f2158xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2158xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2158xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2158xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2158xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2158xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2158xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes7.dex */
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        private static final SigningInput DEFAULT_INSTANCE;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PRIVATE_KEY_FIELD_NUMBER = 1;
        public static final int SIGN_DIRECT_MESSAGE_FIELD_NUMBER = 2;
        private Object transactionPayload_;
        private int transactionPayloadCase_ = 0;
        private ByteString privateKey_ = ByteString.EMPTY;

        private SigningInput() {
        }

        /* loaded from: classes7.dex */
        public enum TransactionPayloadCase {
            SIGN_DIRECT_MESSAGE(2),
            TRANSACTIONPAYLOAD_NOT_SET(0);
            
            private final int value;

            TransactionPayloadCase(int value) {
                this.value = value;
            }

            @Deprecated
            public static TransactionPayloadCase valueOf(int value) {
                return forNumber(value);
            }

            public static TransactionPayloadCase forNumber(int value) {
                if (value != 0) {
                    if (value != 2) {
                        return null;
                    }
                    return SIGN_DIRECT_MESSAGE;
                }
                return TRANSACTIONPAYLOAD_NOT_SET;
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.Sui.SigningInputOrBuilder
        public TransactionPayloadCase getTransactionPayloadCase() {
            return TransactionPayloadCase.forNumber(this.transactionPayloadCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransactionPayload() {
            this.transactionPayloadCase_ = 0;
            this.transactionPayload_ = null;
        }

        @Override // wallet.core.jni.proto.Sui.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Sui.SigningInputOrBuilder
        public boolean hasSignDirectMessage() {
            return this.transactionPayloadCase_ == 2;
        }

        @Override // wallet.core.jni.proto.Sui.SigningInputOrBuilder
        public SignDirect getSignDirectMessage() {
            if (this.transactionPayloadCase_ == 2) {
                return (SignDirect) this.transactionPayload_;
            }
            return SignDirect.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSignDirectMessage(SignDirect value) {
            value.getClass();
            this.transactionPayload_ = value;
            this.transactionPayloadCase_ = 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeSignDirectMessage(SignDirect value) {
            value.getClass();
            if (this.transactionPayloadCase_ == 2 && this.transactionPayload_ != SignDirect.getDefaultInstance()) {
                this.transactionPayload_ = SignDirect.newBuilder((SignDirect) this.transactionPayload_).mergeFrom((SignDirect.Builder) value).buildPartial();
            } else {
                this.transactionPayload_ = value;
            }
            this.transactionPayloadCase_ = 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSignDirectMessage() {
            if (this.transactionPayloadCase_ == 2) {
                this.transactionPayloadCase_ = 0;
                this.transactionPayload_ = null;
            }
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
            /* synthetic */ Builder(C77641 c77641) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Sui.SigningInputOrBuilder
            public TransactionPayloadCase getTransactionPayloadCase() {
                return ((SigningInput) this.instance).getTransactionPayloadCase();
            }

            public Builder clearTransactionPayload() {
                copyOnWrite();
                ((SigningInput) this.instance).clearTransactionPayload();
                return this;
            }

            @Override // wallet.core.jni.proto.Sui.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.Sui.SigningInputOrBuilder
            public boolean hasSignDirectMessage() {
                return ((SigningInput) this.instance).hasSignDirectMessage();
            }

            @Override // wallet.core.jni.proto.Sui.SigningInputOrBuilder
            public SignDirect getSignDirectMessage() {
                return ((SigningInput) this.instance).getSignDirectMessage();
            }

            public Builder setSignDirectMessage(SignDirect value) {
                copyOnWrite();
                ((SigningInput) this.instance).setSignDirectMessage(value);
                return this;
            }

            public Builder setSignDirectMessage(SignDirect.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setSignDirectMessage(builderForValue.build());
                return this;
            }

            public Builder mergeSignDirectMessage(SignDirect value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeSignDirectMessage(value);
                return this;
            }

            public Builder clearSignDirectMessage() {
                copyOnWrite();
                ((SigningInput) this.instance).clearSignDirectMessage();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77641.f2158xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002<\u0000", new Object[]{"transactionPayload_", "transactionPayloadCase_", "privateKey_", SignDirect.class});
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
        private static volatile Parser<SigningOutput> PARSER = null;
        public static final int SIGNATURE_FIELD_NUMBER = 2;
        public static final int UNSIGNED_TX_FIELD_NUMBER = 1;
        private String unsignedTx_ = "";
        private String signature_ = "";

        private SigningOutput() {
        }

        @Override // wallet.core.jni.proto.Sui.SigningOutputOrBuilder
        public String getUnsignedTx() {
            return this.unsignedTx_;
        }

        @Override // wallet.core.jni.proto.Sui.SigningOutputOrBuilder
        public ByteString getUnsignedTxBytes() {
            return ByteString.copyFromUtf8(this.unsignedTx_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setUnsignedTx(String value) {
            value.getClass();
            this.unsignedTx_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearUnsignedTx() {
            this.unsignedTx_ = getDefaultInstance().getUnsignedTx();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setUnsignedTxBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.unsignedTx_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Sui.SigningOutputOrBuilder
        public String getSignature() {
            return this.signature_;
        }

        @Override // wallet.core.jni.proto.Sui.SigningOutputOrBuilder
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
            /* synthetic */ Builder(C77641 c77641) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Sui.SigningOutputOrBuilder
            public String getUnsignedTx() {
                return ((SigningOutput) this.instance).getUnsignedTx();
            }

            @Override // wallet.core.jni.proto.Sui.SigningOutputOrBuilder
            public ByteString getUnsignedTxBytes() {
                return ((SigningOutput) this.instance).getUnsignedTxBytes();
            }

            public Builder setUnsignedTx(String value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setUnsignedTx(value);
                return this;
            }

            public Builder clearUnsignedTx() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearUnsignedTx();
                return this;
            }

            public Builder setUnsignedTxBytes(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setUnsignedTxBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Sui.SigningOutputOrBuilder
            public String getSignature() {
                return ((SigningOutput) this.instance).getSignature();
            }

            @Override // wallet.core.jni.proto.Sui.SigningOutputOrBuilder
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
            switch (C77641.f2158xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ", new Object[]{"unsignedTx_", "signature_"});
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
