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
public final class Oasis {

    /* loaded from: classes6.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        SigningInput.MessageCase getMessageCase();

        ByteString getPrivateKey();

        TransferMessage getTransfer();

        boolean hasTransfer();

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

    /* loaded from: classes6.dex */
    public interface TransferMessageOrBuilder extends MessageLiteOrBuilder {
        String getAmount();

        ByteString getAmountBytes();

        String getContext();

        ByteString getContextBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getGasAmount();

        ByteString getGasAmountBytes();

        long getGasPrice();

        long getNonce();

        String getTo();

        ByteString getToBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private Oasis() {
    }

    /* loaded from: classes6.dex */
    public static final class TransferMessage extends GeneratedMessageLite<TransferMessage, Builder> implements TransferMessageOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 4;
        public static final int CONTEXT_FIELD_NUMBER = 6;
        private static final TransferMessage DEFAULT_INSTANCE;
        public static final int GAS_AMOUNT_FIELD_NUMBER = 3;
        public static final int GAS_PRICE_FIELD_NUMBER = 2;
        public static final int NONCE_FIELD_NUMBER = 5;
        private static volatile Parser<TransferMessage> PARSER = null;
        public static final int TO_FIELD_NUMBER = 1;
        private long gasPrice_;
        private long nonce_;
        private String to_ = "";
        private String gasAmount_ = "";
        private String amount_ = "";
        private String context_ = "";

        private TransferMessage() {
        }

        @Override // wallet.core.jni.proto.Oasis.TransferMessageOrBuilder
        public String getTo() {
            return this.to_;
        }

        @Override // wallet.core.jni.proto.Oasis.TransferMessageOrBuilder
        public ByteString getToBytes() {
            return ByteString.copyFromUtf8(this.to_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTo(String value) {
            value.getClass();
            this.to_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTo() {
            this.to_ = getDefaultInstance().getTo();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setToBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.to_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Oasis.TransferMessageOrBuilder
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

        @Override // wallet.core.jni.proto.Oasis.TransferMessageOrBuilder
        public String getGasAmount() {
            return this.gasAmount_;
        }

        @Override // wallet.core.jni.proto.Oasis.TransferMessageOrBuilder
        public ByteString getGasAmountBytes() {
            return ByteString.copyFromUtf8(this.gasAmount_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setGasAmount(String value) {
            value.getClass();
            this.gasAmount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearGasAmount() {
            this.gasAmount_ = getDefaultInstance().getGasAmount();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setGasAmountBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.gasAmount_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Oasis.TransferMessageOrBuilder
        public String getAmount() {
            return this.amount_;
        }

        @Override // wallet.core.jni.proto.Oasis.TransferMessageOrBuilder
        public ByteString getAmountBytes() {
            return ByteString.copyFromUtf8(this.amount_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAmount(String value) {
            value.getClass();
            this.amount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAmount() {
            this.amount_ = getDefaultInstance().getAmount();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAmountBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.amount_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Oasis.TransferMessageOrBuilder
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

        @Override // wallet.core.jni.proto.Oasis.TransferMessageOrBuilder
        public String getContext() {
            return this.context_;
        }

        @Override // wallet.core.jni.proto.Oasis.TransferMessageOrBuilder
        public ByteString getContextBytes() {
            return ByteString.copyFromUtf8(this.context_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setContext(String value) {
            value.getClass();
            this.context_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearContext() {
            this.context_ = getDefaultInstance().getContext();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setContextBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.context_ = value.toStringUtf8();
        }

        public static TransferMessage parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TransferMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransferMessage parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransferMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransferMessage parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TransferMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransferMessage parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransferMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransferMessage parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TransferMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransferMessage parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransferMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransferMessage parseFrom(InputStream input) throws IOException {
            return (TransferMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransferMessage parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransferMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransferMessage parseDelimitedFrom(InputStream input) throws IOException {
            return (TransferMessage) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TransferMessage parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransferMessage) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransferMessage parseFrom(CodedInputStream input) throws IOException {
            return (TransferMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransferMessage parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransferMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TransferMessage prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TransferMessage, Builder> implements TransferMessageOrBuilder {
            /* synthetic */ Builder(C68371 c68371) {
                this();
            }

            private Builder() {
                super(TransferMessage.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Oasis.TransferMessageOrBuilder
            public String getTo() {
                return ((TransferMessage) this.instance).getTo();
            }

            @Override // wallet.core.jni.proto.Oasis.TransferMessageOrBuilder
            public ByteString getToBytes() {
                return ((TransferMessage) this.instance).getToBytes();
            }

            public Builder setTo(String value) {
                copyOnWrite();
                ((TransferMessage) this.instance).setTo(value);
                return this;
            }

            public Builder clearTo() {
                copyOnWrite();
                ((TransferMessage) this.instance).clearTo();
                return this;
            }

            public Builder setToBytes(ByteString value) {
                copyOnWrite();
                ((TransferMessage) this.instance).setToBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Oasis.TransferMessageOrBuilder
            public long getGasPrice() {
                return ((TransferMessage) this.instance).getGasPrice();
            }

            public Builder setGasPrice(long value) {
                copyOnWrite();
                ((TransferMessage) this.instance).setGasPrice(value);
                return this;
            }

            public Builder clearGasPrice() {
                copyOnWrite();
                ((TransferMessage) this.instance).clearGasPrice();
                return this;
            }

            @Override // wallet.core.jni.proto.Oasis.TransferMessageOrBuilder
            public String getGasAmount() {
                return ((TransferMessage) this.instance).getGasAmount();
            }

            @Override // wallet.core.jni.proto.Oasis.TransferMessageOrBuilder
            public ByteString getGasAmountBytes() {
                return ((TransferMessage) this.instance).getGasAmountBytes();
            }

            public Builder setGasAmount(String value) {
                copyOnWrite();
                ((TransferMessage) this.instance).setGasAmount(value);
                return this;
            }

            public Builder clearGasAmount() {
                copyOnWrite();
                ((TransferMessage) this.instance).clearGasAmount();
                return this;
            }

            public Builder setGasAmountBytes(ByteString value) {
                copyOnWrite();
                ((TransferMessage) this.instance).setGasAmountBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Oasis.TransferMessageOrBuilder
            public String getAmount() {
                return ((TransferMessage) this.instance).getAmount();
            }

            @Override // wallet.core.jni.proto.Oasis.TransferMessageOrBuilder
            public ByteString getAmountBytes() {
                return ((TransferMessage) this.instance).getAmountBytes();
            }

            public Builder setAmount(String value) {
                copyOnWrite();
                ((TransferMessage) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((TransferMessage) this.instance).clearAmount();
                return this;
            }

            public Builder setAmountBytes(ByteString value) {
                copyOnWrite();
                ((TransferMessage) this.instance).setAmountBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Oasis.TransferMessageOrBuilder
            public long getNonce() {
                return ((TransferMessage) this.instance).getNonce();
            }

            public Builder setNonce(long value) {
                copyOnWrite();
                ((TransferMessage) this.instance).setNonce(value);
                return this;
            }

            public Builder clearNonce() {
                copyOnWrite();
                ((TransferMessage) this.instance).clearNonce();
                return this;
            }

            @Override // wallet.core.jni.proto.Oasis.TransferMessageOrBuilder
            public String getContext() {
                return ((TransferMessage) this.instance).getContext();
            }

            @Override // wallet.core.jni.proto.Oasis.TransferMessageOrBuilder
            public ByteString getContextBytes() {
                return ((TransferMessage) this.instance).getContextBytes();
            }

            public Builder setContext(String value) {
                copyOnWrite();
                ((TransferMessage) this.instance).setContext(value);
                return this;
            }

            public Builder clearContext() {
                copyOnWrite();
                ((TransferMessage) this.instance).clearContext();
                return this;
            }

            public Builder setContextBytes(ByteString value) {
                copyOnWrite();
                ((TransferMessage) this.instance).setContextBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68371.f1818xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TransferMessage();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001Ȉ\u0002\u0003\u0003Ȉ\u0004Ȉ\u0005\u0003\u0006Ȉ", new Object[]{"to_", "gasPrice_", "gasAmount_", "amount_", "nonce_", "context_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TransferMessage> parser = PARSER;
                    if (parser == null) {
                        synchronized (TransferMessage.class) {
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
            TransferMessage transferMessage = new TransferMessage();
            DEFAULT_INSTANCE = transferMessage;
            GeneratedMessageLite.registerDefaultInstance(TransferMessage.class, transferMessage);
        }

        public static TransferMessage getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TransferMessage> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* renamed from: wallet.core.jni.proto.Oasis$1 */
    /* loaded from: classes6.dex */
    static /* synthetic */ class C68371 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f1818xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f1818xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1818xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1818xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1818xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1818xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1818xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1818xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        private static final SigningInput DEFAULT_INSTANCE;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PRIVATE_KEY_FIELD_NUMBER = 1;
        public static final int TRANSFER_FIELD_NUMBER = 2;
        private Object message_;
        private int messageCase_ = 0;
        private ByteString privateKey_ = ByteString.EMPTY;

        private SigningInput() {
        }

        /* loaded from: classes6.dex */
        public enum MessageCase {
            TRANSFER(2),
            MESSAGE_NOT_SET(0);
            
            private final int value;

            MessageCase(int value) {
                this.value = value;
            }

            @Deprecated
            public static MessageCase valueOf(int value) {
                return forNumber(value);
            }

            public static MessageCase forNumber(int value) {
                if (value != 0) {
                    if (value != 2) {
                        return null;
                    }
                    return TRANSFER;
                }
                return MESSAGE_NOT_SET;
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.Oasis.SigningInputOrBuilder
        public MessageCase getMessageCase() {
            return MessageCase.forNumber(this.messageCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMessage() {
            this.messageCase_ = 0;
            this.message_ = null;
        }

        @Override // wallet.core.jni.proto.Oasis.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Oasis.SigningInputOrBuilder
        public boolean hasTransfer() {
            return this.messageCase_ == 2;
        }

        @Override // wallet.core.jni.proto.Oasis.SigningInputOrBuilder
        public TransferMessage getTransfer() {
            if (this.messageCase_ == 2) {
                return (TransferMessage) this.message_;
            }
            return TransferMessage.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransfer(TransferMessage value) {
            value.getClass();
            this.message_ = value;
            this.messageCase_ = 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTransfer(TransferMessage value) {
            value.getClass();
            if (this.messageCase_ == 2 && this.message_ != TransferMessage.getDefaultInstance()) {
                this.message_ = TransferMessage.newBuilder((TransferMessage) this.message_).mergeFrom((TransferMessage.Builder) value).buildPartial();
            } else {
                this.message_ = value;
            }
            this.messageCase_ = 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransfer() {
            if (this.messageCase_ == 2) {
                this.messageCase_ = 0;
                this.message_ = null;
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

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<SigningInput, Builder> implements SigningInputOrBuilder {
            /* synthetic */ Builder(C68371 c68371) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Oasis.SigningInputOrBuilder
            public MessageCase getMessageCase() {
                return ((SigningInput) this.instance).getMessageCase();
            }

            public Builder clearMessage() {
                copyOnWrite();
                ((SigningInput) this.instance).clearMessage();
                return this;
            }

            @Override // wallet.core.jni.proto.Oasis.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.Oasis.SigningInputOrBuilder
            public boolean hasTransfer() {
                return ((SigningInput) this.instance).hasTransfer();
            }

            @Override // wallet.core.jni.proto.Oasis.SigningInputOrBuilder
            public TransferMessage getTransfer() {
                return ((SigningInput) this.instance).getTransfer();
            }

            public Builder setTransfer(TransferMessage value) {
                copyOnWrite();
                ((SigningInput) this.instance).setTransfer(value);
                return this;
            }

            public Builder setTransfer(TransferMessage.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setTransfer(builderForValue.build());
                return this;
            }

            public Builder mergeTransfer(TransferMessage value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeTransfer(value);
                return this;
            }

            public Builder clearTransfer() {
                copyOnWrite();
                ((SigningInput) this.instance).clearTransfer();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68371.f1818xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002<\u0000", new Object[]{"message_", "messageCase_", "privateKey_", TransferMessage.class});
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

    /* loaded from: classes6.dex */
    public static final class SigningOutput extends GeneratedMessageLite<SigningOutput, Builder> implements SigningOutputOrBuilder {
        private static final SigningOutput DEFAULT_INSTANCE;
        public static final int ENCODED_FIELD_NUMBER = 1;
        private static volatile Parser<SigningOutput> PARSER;
        private ByteString encoded_ = ByteString.EMPTY;

        private SigningOutput() {
        }

        @Override // wallet.core.jni.proto.Oasis.SigningOutputOrBuilder
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
            /* synthetic */ Builder(C68371 c68371) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Oasis.SigningOutputOrBuilder
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
            switch (C68371.f1818xa1df5c61[method.ordinal()]) {
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
