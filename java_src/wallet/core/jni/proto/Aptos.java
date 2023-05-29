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
public final class Aptos {

    /* loaded from: classes6.dex */
    public interface CancelOfferNftMessageOrBuilder extends MessageLiteOrBuilder {
        String getCollectionName();

        ByteString getCollectionNameBytes();

        String getCreator();

        ByteString getCreatorBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getName();

        ByteString getNameBytes();

        long getPropertyVersion();

        String getReceiver();

        ByteString getReceiverBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface ClaimNftMessageOrBuilder extends MessageLiteOrBuilder {
        String getCollectionName();

        ByteString getCollectionNameBytes();

        String getCreator();

        ByteString getCreatorBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getName();

        ByteString getNameBytes();

        long getPropertyVersion();

        String getSender();

        ByteString getSenderBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface CreateAccountMessageOrBuilder extends MessageLiteOrBuilder {
        String getAuthKey();

        ByteString getAuthKeyBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface ManagedTokensRegisterMessageOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        StructTag getFunction();

        boolean hasFunction();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface NftMessageOrBuilder extends MessageLiteOrBuilder {
        CancelOfferNftMessage getCancelOfferNft();

        ClaimNftMessage getClaimNft();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        NftMessage.NftTransactionPayloadCase getNftTransactionPayloadCase();

        OfferNftMessage getOfferNft();

        boolean hasCancelOfferNft();

        boolean hasClaimNft();

        boolean hasOfferNft();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface OfferNftMessageOrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        String getCollectionName();

        ByteString getCollectionNameBytes();

        String getCreator();

        ByteString getCreatorBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getName();

        ByteString getNameBytes();

        long getPropertyVersion();

        String getReceiver();

        ByteString getReceiverBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        String getAnyEncoded();

        ByteString getAnyEncodedBytes();

        int getChainId();

        CreateAccountMessage getCreateAccount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        long getExpirationTimestampSecs();

        long getGasUnitPrice();

        long getMaxGasAmount();

        NftMessage getNftMessage();

        ByteString getPrivateKey();

        ManagedTokensRegisterMessage getRegisterToken();

        String getSender();

        ByteString getSenderBytes();

        long getSequenceNumber();

        TokenTransferMessage getTokenTransfer();

        SigningInput.TransactionPayloadCase getTransactionPayloadCase();

        TransferMessage getTransfer();

        boolean hasCreateAccount();

        boolean hasNftMessage();

        boolean hasRegisterToken();

        boolean hasTokenTransfer();

        boolean hasTransfer();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SigningOutputOrBuilder extends MessageLiteOrBuilder {
        TransactionAuthenticator getAuthenticator();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getEncoded();

        String getJson();

        ByteString getJsonBytes();

        ByteString getRawTxn();

        boolean hasAuthenticator();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface StructTagOrBuilder extends MessageLiteOrBuilder {
        String getAccountAddress();

        ByteString getAccountAddressBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getModule();

        ByteString getModuleBytes();

        String getName();

        ByteString getNameBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TokenTransferMessageOrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        StructTag getFunction();

        String getTo();

        ByteString getToBytes();

        boolean hasFunction();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TransactionAuthenticatorOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getPublicKey();

        ByteString getSignature();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TransferMessageOrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getTo();

        ByteString getToBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private Aptos() {
    }

    /* loaded from: classes6.dex */
    public static final class TransferMessage extends GeneratedMessageLite<TransferMessage, Builder> implements TransferMessageOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 2;
        private static final TransferMessage DEFAULT_INSTANCE;
        private static volatile Parser<TransferMessage> PARSER = null;
        public static final int TO_FIELD_NUMBER = 1;
        private long amount_;
        private String to_ = "";

        private TransferMessage() {
        }

        @Override // wallet.core.jni.proto.Aptos.TransferMessageOrBuilder
        public String getTo() {
            return this.to_;
        }

        @Override // wallet.core.jni.proto.Aptos.TransferMessageOrBuilder
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

        @Override // wallet.core.jni.proto.Aptos.TransferMessageOrBuilder
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
            /* synthetic */ Builder(C68061 c68061) {
                this();
            }

            private Builder() {
                super(TransferMessage.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Aptos.TransferMessageOrBuilder
            public String getTo() {
                return ((TransferMessage) this.instance).getTo();
            }

            @Override // wallet.core.jni.proto.Aptos.TransferMessageOrBuilder
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

            @Override // wallet.core.jni.proto.Aptos.TransferMessageOrBuilder
            public long getAmount() {
                return ((TransferMessage) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((TransferMessage) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((TransferMessage) this.instance).clearAmount();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68061.f1787xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TransferMessage();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\u0003", new Object[]{"to_", "amount_"});
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

    /* renamed from: wallet.core.jni.proto.Aptos$1 */
    /* loaded from: classes6.dex */
    static /* synthetic */ class C68061 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f1787xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f1787xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1787xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1787xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1787xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1787xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1787xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1787xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class StructTag extends GeneratedMessageLite<StructTag, Builder> implements StructTagOrBuilder {
        public static final int ACCOUNT_ADDRESS_FIELD_NUMBER = 1;
        private static final StructTag DEFAULT_INSTANCE;
        public static final int MODULE_FIELD_NUMBER = 2;
        public static final int NAME_FIELD_NUMBER = 3;
        private static volatile Parser<StructTag> PARSER;
        private String accountAddress_ = "";
        private String module_ = "";
        private String name_ = "";

        private StructTag() {
        }

        @Override // wallet.core.jni.proto.Aptos.StructTagOrBuilder
        public String getAccountAddress() {
            return this.accountAddress_;
        }

        @Override // wallet.core.jni.proto.Aptos.StructTagOrBuilder
        public ByteString getAccountAddressBytes() {
            return ByteString.copyFromUtf8(this.accountAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAccountAddress(String value) {
            value.getClass();
            this.accountAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAccountAddress() {
            this.accountAddress_ = getDefaultInstance().getAccountAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAccountAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.accountAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Aptos.StructTagOrBuilder
        public String getModule() {
            return this.module_;
        }

        @Override // wallet.core.jni.proto.Aptos.StructTagOrBuilder
        public ByteString getModuleBytes() {
            return ByteString.copyFromUtf8(this.module_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setModule(String value) {
            value.getClass();
            this.module_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearModule() {
            this.module_ = getDefaultInstance().getModule();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setModuleBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.module_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Aptos.StructTagOrBuilder
        public String getName() {
            return this.name_;
        }

        @Override // wallet.core.jni.proto.Aptos.StructTagOrBuilder
        public ByteString getNameBytes() {
            return ByteString.copyFromUtf8(this.name_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setName(String value) {
            value.getClass();
            this.name_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearName() {
            this.name_ = getDefaultInstance().getName();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setNameBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.name_ = value.toStringUtf8();
        }

        public static StructTag parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (StructTag) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static StructTag parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (StructTag) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static StructTag parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (StructTag) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static StructTag parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (StructTag) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static StructTag parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (StructTag) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static StructTag parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (StructTag) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static StructTag parseFrom(InputStream input) throws IOException {
            return (StructTag) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static StructTag parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (StructTag) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static StructTag parseDelimitedFrom(InputStream input) throws IOException {
            return (StructTag) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static StructTag parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (StructTag) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static StructTag parseFrom(CodedInputStream input) throws IOException {
            return (StructTag) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static StructTag parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (StructTag) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(StructTag prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<StructTag, Builder> implements StructTagOrBuilder {
            /* synthetic */ Builder(C68061 c68061) {
                this();
            }

            private Builder() {
                super(StructTag.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Aptos.StructTagOrBuilder
            public String getAccountAddress() {
                return ((StructTag) this.instance).getAccountAddress();
            }

            @Override // wallet.core.jni.proto.Aptos.StructTagOrBuilder
            public ByteString getAccountAddressBytes() {
                return ((StructTag) this.instance).getAccountAddressBytes();
            }

            public Builder setAccountAddress(String value) {
                copyOnWrite();
                ((StructTag) this.instance).setAccountAddress(value);
                return this;
            }

            public Builder clearAccountAddress() {
                copyOnWrite();
                ((StructTag) this.instance).clearAccountAddress();
                return this;
            }

            public Builder setAccountAddressBytes(ByteString value) {
                copyOnWrite();
                ((StructTag) this.instance).setAccountAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.StructTagOrBuilder
            public String getModule() {
                return ((StructTag) this.instance).getModule();
            }

            @Override // wallet.core.jni.proto.Aptos.StructTagOrBuilder
            public ByteString getModuleBytes() {
                return ((StructTag) this.instance).getModuleBytes();
            }

            public Builder setModule(String value) {
                copyOnWrite();
                ((StructTag) this.instance).setModule(value);
                return this;
            }

            public Builder clearModule() {
                copyOnWrite();
                ((StructTag) this.instance).clearModule();
                return this;
            }

            public Builder setModuleBytes(ByteString value) {
                copyOnWrite();
                ((StructTag) this.instance).setModuleBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.StructTagOrBuilder
            public String getName() {
                return ((StructTag) this.instance).getName();
            }

            @Override // wallet.core.jni.proto.Aptos.StructTagOrBuilder
            public ByteString getNameBytes() {
                return ((StructTag) this.instance).getNameBytes();
            }

            public Builder setName(String value) {
                copyOnWrite();
                ((StructTag) this.instance).setName(value);
                return this;
            }

            public Builder clearName() {
                copyOnWrite();
                ((StructTag) this.instance).clearName();
                return this;
            }

            public Builder setNameBytes(ByteString value) {
                copyOnWrite();
                ((StructTag) this.instance).setNameBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68061.f1787xa1df5c61[method.ordinal()]) {
                case 1:
                    return new StructTag();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ", new Object[]{"accountAddress_", "module_", "name_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<StructTag> parser = PARSER;
                    if (parser == null) {
                        synchronized (StructTag.class) {
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
            StructTag structTag = new StructTag();
            DEFAULT_INSTANCE = structTag;
            GeneratedMessageLite.registerDefaultInstance(StructTag.class, structTag);
        }

        public static StructTag getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<StructTag> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class TokenTransferMessage extends GeneratedMessageLite<TokenTransferMessage, Builder> implements TokenTransferMessageOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 2;
        private static final TokenTransferMessage DEFAULT_INSTANCE;
        public static final int FUNCTION_FIELD_NUMBER = 3;
        private static volatile Parser<TokenTransferMessage> PARSER = null;
        public static final int TO_FIELD_NUMBER = 1;
        private long amount_;
        private StructTag function_;
        private String to_ = "";

        private TokenTransferMessage() {
        }

        @Override // wallet.core.jni.proto.Aptos.TokenTransferMessageOrBuilder
        public String getTo() {
            return this.to_;
        }

        @Override // wallet.core.jni.proto.Aptos.TokenTransferMessageOrBuilder
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

        @Override // wallet.core.jni.proto.Aptos.TokenTransferMessageOrBuilder
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

        @Override // wallet.core.jni.proto.Aptos.TokenTransferMessageOrBuilder
        public boolean hasFunction() {
            return this.function_ != null;
        }

        @Override // wallet.core.jni.proto.Aptos.TokenTransferMessageOrBuilder
        public StructTag getFunction() {
            StructTag structTag = this.function_;
            return structTag == null ? StructTag.getDefaultInstance() : structTag;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFunction(StructTag value) {
            value.getClass();
            this.function_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeFunction(StructTag value) {
            value.getClass();
            StructTag structTag = this.function_;
            if (structTag != null && structTag != StructTag.getDefaultInstance()) {
                this.function_ = StructTag.newBuilder(this.function_).mergeFrom((StructTag.Builder) value).buildPartial();
            } else {
                this.function_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFunction() {
            this.function_ = null;
        }

        public static TokenTransferMessage parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TokenTransferMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TokenTransferMessage parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TokenTransferMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TokenTransferMessage parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TokenTransferMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TokenTransferMessage parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TokenTransferMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TokenTransferMessage parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TokenTransferMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TokenTransferMessage parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TokenTransferMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TokenTransferMessage parseFrom(InputStream input) throws IOException {
            return (TokenTransferMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TokenTransferMessage parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TokenTransferMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TokenTransferMessage parseDelimitedFrom(InputStream input) throws IOException {
            return (TokenTransferMessage) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TokenTransferMessage parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TokenTransferMessage) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TokenTransferMessage parseFrom(CodedInputStream input) throws IOException {
            return (TokenTransferMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TokenTransferMessage parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TokenTransferMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TokenTransferMessage prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TokenTransferMessage, Builder> implements TokenTransferMessageOrBuilder {
            /* synthetic */ Builder(C68061 c68061) {
                this();
            }

            private Builder() {
                super(TokenTransferMessage.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Aptos.TokenTransferMessageOrBuilder
            public String getTo() {
                return ((TokenTransferMessage) this.instance).getTo();
            }

            @Override // wallet.core.jni.proto.Aptos.TokenTransferMessageOrBuilder
            public ByteString getToBytes() {
                return ((TokenTransferMessage) this.instance).getToBytes();
            }

            public Builder setTo(String value) {
                copyOnWrite();
                ((TokenTransferMessage) this.instance).setTo(value);
                return this;
            }

            public Builder clearTo() {
                copyOnWrite();
                ((TokenTransferMessage) this.instance).clearTo();
                return this;
            }

            public Builder setToBytes(ByteString value) {
                copyOnWrite();
                ((TokenTransferMessage) this.instance).setToBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.TokenTransferMessageOrBuilder
            public long getAmount() {
                return ((TokenTransferMessage) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((TokenTransferMessage) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((TokenTransferMessage) this.instance).clearAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.TokenTransferMessageOrBuilder
            public boolean hasFunction() {
                return ((TokenTransferMessage) this.instance).hasFunction();
            }

            @Override // wallet.core.jni.proto.Aptos.TokenTransferMessageOrBuilder
            public StructTag getFunction() {
                return ((TokenTransferMessage) this.instance).getFunction();
            }

            public Builder setFunction(StructTag value) {
                copyOnWrite();
                ((TokenTransferMessage) this.instance).setFunction(value);
                return this;
            }

            public Builder setFunction(StructTag.Builder builderForValue) {
                copyOnWrite();
                ((TokenTransferMessage) this.instance).setFunction(builderForValue.build());
                return this;
            }

            public Builder mergeFunction(StructTag value) {
                copyOnWrite();
                ((TokenTransferMessage) this.instance).mergeFunction(value);
                return this;
            }

            public Builder clearFunction() {
                copyOnWrite();
                ((TokenTransferMessage) this.instance).clearFunction();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68061.f1787xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TokenTransferMessage();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\u0003\u0003\t", new Object[]{"to_", "amount_", "function_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TokenTransferMessage> parser = PARSER;
                    if (parser == null) {
                        synchronized (TokenTransferMessage.class) {
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
            TokenTransferMessage tokenTransferMessage = new TokenTransferMessage();
            DEFAULT_INSTANCE = tokenTransferMessage;
            GeneratedMessageLite.registerDefaultInstance(TokenTransferMessage.class, tokenTransferMessage);
        }

        public static TokenTransferMessage getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TokenTransferMessage> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class ManagedTokensRegisterMessage extends GeneratedMessageLite<ManagedTokensRegisterMessage, Builder> implements ManagedTokensRegisterMessageOrBuilder {
        private static final ManagedTokensRegisterMessage DEFAULT_INSTANCE;
        public static final int FUNCTION_FIELD_NUMBER = 1;
        private static volatile Parser<ManagedTokensRegisterMessage> PARSER;
        private StructTag function_;

        private ManagedTokensRegisterMessage() {
        }

        @Override // wallet.core.jni.proto.Aptos.ManagedTokensRegisterMessageOrBuilder
        public boolean hasFunction() {
            return this.function_ != null;
        }

        @Override // wallet.core.jni.proto.Aptos.ManagedTokensRegisterMessageOrBuilder
        public StructTag getFunction() {
            StructTag structTag = this.function_;
            return structTag == null ? StructTag.getDefaultInstance() : structTag;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFunction(StructTag value) {
            value.getClass();
            this.function_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeFunction(StructTag value) {
            value.getClass();
            StructTag structTag = this.function_;
            if (structTag != null && structTag != StructTag.getDefaultInstance()) {
                this.function_ = StructTag.newBuilder(this.function_).mergeFrom((StructTag.Builder) value).buildPartial();
            } else {
                this.function_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFunction() {
            this.function_ = null;
        }

        public static ManagedTokensRegisterMessage parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (ManagedTokensRegisterMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static ManagedTokensRegisterMessage parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (ManagedTokensRegisterMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static ManagedTokensRegisterMessage parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (ManagedTokensRegisterMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static ManagedTokensRegisterMessage parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (ManagedTokensRegisterMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static ManagedTokensRegisterMessage parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (ManagedTokensRegisterMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static ManagedTokensRegisterMessage parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (ManagedTokensRegisterMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static ManagedTokensRegisterMessage parseFrom(InputStream input) throws IOException {
            return (ManagedTokensRegisterMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static ManagedTokensRegisterMessage parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ManagedTokensRegisterMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static ManagedTokensRegisterMessage parseDelimitedFrom(InputStream input) throws IOException {
            return (ManagedTokensRegisterMessage) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static ManagedTokensRegisterMessage parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ManagedTokensRegisterMessage) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static ManagedTokensRegisterMessage parseFrom(CodedInputStream input) throws IOException {
            return (ManagedTokensRegisterMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static ManagedTokensRegisterMessage parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ManagedTokensRegisterMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(ManagedTokensRegisterMessage prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<ManagedTokensRegisterMessage, Builder> implements ManagedTokensRegisterMessageOrBuilder {
            /* synthetic */ Builder(C68061 c68061) {
                this();
            }

            private Builder() {
                super(ManagedTokensRegisterMessage.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Aptos.ManagedTokensRegisterMessageOrBuilder
            public boolean hasFunction() {
                return ((ManagedTokensRegisterMessage) this.instance).hasFunction();
            }

            @Override // wallet.core.jni.proto.Aptos.ManagedTokensRegisterMessageOrBuilder
            public StructTag getFunction() {
                return ((ManagedTokensRegisterMessage) this.instance).getFunction();
            }

            public Builder setFunction(StructTag value) {
                copyOnWrite();
                ((ManagedTokensRegisterMessage) this.instance).setFunction(value);
                return this;
            }

            public Builder setFunction(StructTag.Builder builderForValue) {
                copyOnWrite();
                ((ManagedTokensRegisterMessage) this.instance).setFunction(builderForValue.build());
                return this;
            }

            public Builder mergeFunction(StructTag value) {
                copyOnWrite();
                ((ManagedTokensRegisterMessage) this.instance).mergeFunction(value);
                return this;
            }

            public Builder clearFunction() {
                copyOnWrite();
                ((ManagedTokensRegisterMessage) this.instance).clearFunction();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68061.f1787xa1df5c61[method.ordinal()]) {
                case 1:
                    return new ManagedTokensRegisterMessage();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t", new Object[]{"function_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<ManagedTokensRegisterMessage> parser = PARSER;
                    if (parser == null) {
                        synchronized (ManagedTokensRegisterMessage.class) {
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
            ManagedTokensRegisterMessage managedTokensRegisterMessage = new ManagedTokensRegisterMessage();
            DEFAULT_INSTANCE = managedTokensRegisterMessage;
            GeneratedMessageLite.registerDefaultInstance(ManagedTokensRegisterMessage.class, managedTokensRegisterMessage);
        }

        public static ManagedTokensRegisterMessage getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<ManagedTokensRegisterMessage> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class CreateAccountMessage extends GeneratedMessageLite<CreateAccountMessage, Builder> implements CreateAccountMessageOrBuilder {
        public static final int AUTH_KEY_FIELD_NUMBER = 1;
        private static final CreateAccountMessage DEFAULT_INSTANCE;
        private static volatile Parser<CreateAccountMessage> PARSER;
        private String authKey_ = "";

        private CreateAccountMessage() {
        }

        @Override // wallet.core.jni.proto.Aptos.CreateAccountMessageOrBuilder
        public String getAuthKey() {
            return this.authKey_;
        }

        @Override // wallet.core.jni.proto.Aptos.CreateAccountMessageOrBuilder
        public ByteString getAuthKeyBytes() {
            return ByteString.copyFromUtf8(this.authKey_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAuthKey(String value) {
            value.getClass();
            this.authKey_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAuthKey() {
            this.authKey_ = getDefaultInstance().getAuthKey();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAuthKeyBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.authKey_ = value.toStringUtf8();
        }

        public static CreateAccountMessage parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (CreateAccountMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CreateAccountMessage parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CreateAccountMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CreateAccountMessage parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (CreateAccountMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CreateAccountMessage parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CreateAccountMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CreateAccountMessage parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (CreateAccountMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CreateAccountMessage parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CreateAccountMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CreateAccountMessage parseFrom(InputStream input) throws IOException {
            return (CreateAccountMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static CreateAccountMessage parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CreateAccountMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static CreateAccountMessage parseDelimitedFrom(InputStream input) throws IOException {
            return (CreateAccountMessage) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static CreateAccountMessage parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CreateAccountMessage) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static CreateAccountMessage parseFrom(CodedInputStream input) throws IOException {
            return (CreateAccountMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static CreateAccountMessage parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CreateAccountMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(CreateAccountMessage prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<CreateAccountMessage, Builder> implements CreateAccountMessageOrBuilder {
            /* synthetic */ Builder(C68061 c68061) {
                this();
            }

            private Builder() {
                super(CreateAccountMessage.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Aptos.CreateAccountMessageOrBuilder
            public String getAuthKey() {
                return ((CreateAccountMessage) this.instance).getAuthKey();
            }

            @Override // wallet.core.jni.proto.Aptos.CreateAccountMessageOrBuilder
            public ByteString getAuthKeyBytes() {
                return ((CreateAccountMessage) this.instance).getAuthKeyBytes();
            }

            public Builder setAuthKey(String value) {
                copyOnWrite();
                ((CreateAccountMessage) this.instance).setAuthKey(value);
                return this;
            }

            public Builder clearAuthKey() {
                copyOnWrite();
                ((CreateAccountMessage) this.instance).clearAuthKey();
                return this;
            }

            public Builder setAuthKeyBytes(ByteString value) {
                copyOnWrite();
                ((CreateAccountMessage) this.instance).setAuthKeyBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68061.f1787xa1df5c61[method.ordinal()]) {
                case 1:
                    return new CreateAccountMessage();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"authKey_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<CreateAccountMessage> parser = PARSER;
                    if (parser == null) {
                        synchronized (CreateAccountMessage.class) {
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
            CreateAccountMessage createAccountMessage = new CreateAccountMessage();
            DEFAULT_INSTANCE = createAccountMessage;
            GeneratedMessageLite.registerDefaultInstance(CreateAccountMessage.class, createAccountMessage);
        }

        public static CreateAccountMessage getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CreateAccountMessage> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class OfferNftMessage extends GeneratedMessageLite<OfferNftMessage, Builder> implements OfferNftMessageOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 6;
        public static final int COLLECTIONNAME_FIELD_NUMBER = 3;
        public static final int CREATOR_FIELD_NUMBER = 2;
        private static final OfferNftMessage DEFAULT_INSTANCE;
        public static final int NAME_FIELD_NUMBER = 4;
        private static volatile Parser<OfferNftMessage> PARSER = null;
        public static final int PROPERTY_VERSION_FIELD_NUMBER = 5;
        public static final int RECEIVER_FIELD_NUMBER = 1;
        private long amount_;
        private long propertyVersion_;
        private String receiver_ = "";
        private String creator_ = "";
        private String collectionName_ = "";
        private String name_ = "";

        private OfferNftMessage() {
        }

        @Override // wallet.core.jni.proto.Aptos.OfferNftMessageOrBuilder
        public String getReceiver() {
            return this.receiver_;
        }

        @Override // wallet.core.jni.proto.Aptos.OfferNftMessageOrBuilder
        public ByteString getReceiverBytes() {
            return ByteString.copyFromUtf8(this.receiver_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setReceiver(String value) {
            value.getClass();
            this.receiver_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearReceiver() {
            this.receiver_ = getDefaultInstance().getReceiver();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setReceiverBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.receiver_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Aptos.OfferNftMessageOrBuilder
        public String getCreator() {
            return this.creator_;
        }

        @Override // wallet.core.jni.proto.Aptos.OfferNftMessageOrBuilder
        public ByteString getCreatorBytes() {
            return ByteString.copyFromUtf8(this.creator_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCreator(String value) {
            value.getClass();
            this.creator_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCreator() {
            this.creator_ = getDefaultInstance().getCreator();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCreatorBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.creator_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Aptos.OfferNftMessageOrBuilder
        public String getCollectionName() {
            return this.collectionName_;
        }

        @Override // wallet.core.jni.proto.Aptos.OfferNftMessageOrBuilder
        public ByteString getCollectionNameBytes() {
            return ByteString.copyFromUtf8(this.collectionName_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCollectionName(String value) {
            value.getClass();
            this.collectionName_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCollectionName() {
            this.collectionName_ = getDefaultInstance().getCollectionName();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCollectionNameBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.collectionName_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Aptos.OfferNftMessageOrBuilder
        public String getName() {
            return this.name_;
        }

        @Override // wallet.core.jni.proto.Aptos.OfferNftMessageOrBuilder
        public ByteString getNameBytes() {
            return ByteString.copyFromUtf8(this.name_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setName(String value) {
            value.getClass();
            this.name_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearName() {
            this.name_ = getDefaultInstance().getName();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setNameBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.name_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Aptos.OfferNftMessageOrBuilder
        public long getPropertyVersion() {
            return this.propertyVersion_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPropertyVersion(long value) {
            this.propertyVersion_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPropertyVersion() {
            this.propertyVersion_ = 0L;
        }

        @Override // wallet.core.jni.proto.Aptos.OfferNftMessageOrBuilder
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

        public static OfferNftMessage parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (OfferNftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OfferNftMessage parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OfferNftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OfferNftMessage parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (OfferNftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OfferNftMessage parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OfferNftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OfferNftMessage parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (OfferNftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OfferNftMessage parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OfferNftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OfferNftMessage parseFrom(InputStream input) throws IOException {
            return (OfferNftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OfferNftMessage parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OfferNftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OfferNftMessage parseDelimitedFrom(InputStream input) throws IOException {
            return (OfferNftMessage) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static OfferNftMessage parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OfferNftMessage) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OfferNftMessage parseFrom(CodedInputStream input) throws IOException {
            return (OfferNftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OfferNftMessage parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OfferNftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(OfferNftMessage prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<OfferNftMessage, Builder> implements OfferNftMessageOrBuilder {
            /* synthetic */ Builder(C68061 c68061) {
                this();
            }

            private Builder() {
                super(OfferNftMessage.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Aptos.OfferNftMessageOrBuilder
            public String getReceiver() {
                return ((OfferNftMessage) this.instance).getReceiver();
            }

            @Override // wallet.core.jni.proto.Aptos.OfferNftMessageOrBuilder
            public ByteString getReceiverBytes() {
                return ((OfferNftMessage) this.instance).getReceiverBytes();
            }

            public Builder setReceiver(String value) {
                copyOnWrite();
                ((OfferNftMessage) this.instance).setReceiver(value);
                return this;
            }

            public Builder clearReceiver() {
                copyOnWrite();
                ((OfferNftMessage) this.instance).clearReceiver();
                return this;
            }

            public Builder setReceiverBytes(ByteString value) {
                copyOnWrite();
                ((OfferNftMessage) this.instance).setReceiverBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.OfferNftMessageOrBuilder
            public String getCreator() {
                return ((OfferNftMessage) this.instance).getCreator();
            }

            @Override // wallet.core.jni.proto.Aptos.OfferNftMessageOrBuilder
            public ByteString getCreatorBytes() {
                return ((OfferNftMessage) this.instance).getCreatorBytes();
            }

            public Builder setCreator(String value) {
                copyOnWrite();
                ((OfferNftMessage) this.instance).setCreator(value);
                return this;
            }

            public Builder clearCreator() {
                copyOnWrite();
                ((OfferNftMessage) this.instance).clearCreator();
                return this;
            }

            public Builder setCreatorBytes(ByteString value) {
                copyOnWrite();
                ((OfferNftMessage) this.instance).setCreatorBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.OfferNftMessageOrBuilder
            public String getCollectionName() {
                return ((OfferNftMessage) this.instance).getCollectionName();
            }

            @Override // wallet.core.jni.proto.Aptos.OfferNftMessageOrBuilder
            public ByteString getCollectionNameBytes() {
                return ((OfferNftMessage) this.instance).getCollectionNameBytes();
            }

            public Builder setCollectionName(String value) {
                copyOnWrite();
                ((OfferNftMessage) this.instance).setCollectionName(value);
                return this;
            }

            public Builder clearCollectionName() {
                copyOnWrite();
                ((OfferNftMessage) this.instance).clearCollectionName();
                return this;
            }

            public Builder setCollectionNameBytes(ByteString value) {
                copyOnWrite();
                ((OfferNftMessage) this.instance).setCollectionNameBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.OfferNftMessageOrBuilder
            public String getName() {
                return ((OfferNftMessage) this.instance).getName();
            }

            @Override // wallet.core.jni.proto.Aptos.OfferNftMessageOrBuilder
            public ByteString getNameBytes() {
                return ((OfferNftMessage) this.instance).getNameBytes();
            }

            public Builder setName(String value) {
                copyOnWrite();
                ((OfferNftMessage) this.instance).setName(value);
                return this;
            }

            public Builder clearName() {
                copyOnWrite();
                ((OfferNftMessage) this.instance).clearName();
                return this;
            }

            public Builder setNameBytes(ByteString value) {
                copyOnWrite();
                ((OfferNftMessage) this.instance).setNameBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.OfferNftMessageOrBuilder
            public long getPropertyVersion() {
                return ((OfferNftMessage) this.instance).getPropertyVersion();
            }

            public Builder setPropertyVersion(long value) {
                copyOnWrite();
                ((OfferNftMessage) this.instance).setPropertyVersion(value);
                return this;
            }

            public Builder clearPropertyVersion() {
                copyOnWrite();
                ((OfferNftMessage) this.instance).clearPropertyVersion();
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.OfferNftMessageOrBuilder
            public long getAmount() {
                return ((OfferNftMessage) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((OfferNftMessage) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((OfferNftMessage) this.instance).clearAmount();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68061.f1787xa1df5c61[method.ordinal()]) {
                case 1:
                    return new OfferNftMessage();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004Ȉ\u0005\u0003\u0006\u0003", new Object[]{"receiver_", "creator_", "collectionName_", "name_", "propertyVersion_", "amount_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<OfferNftMessage> parser = PARSER;
                    if (parser == null) {
                        synchronized (OfferNftMessage.class) {
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
            OfferNftMessage offerNftMessage = new OfferNftMessage();
            DEFAULT_INSTANCE = offerNftMessage;
            GeneratedMessageLite.registerDefaultInstance(OfferNftMessage.class, offerNftMessage);
        }

        public static OfferNftMessage getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<OfferNftMessage> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class CancelOfferNftMessage extends GeneratedMessageLite<CancelOfferNftMessage, Builder> implements CancelOfferNftMessageOrBuilder {
        public static final int COLLECTIONNAME_FIELD_NUMBER = 3;
        public static final int CREATOR_FIELD_NUMBER = 2;
        private static final CancelOfferNftMessage DEFAULT_INSTANCE;
        public static final int NAME_FIELD_NUMBER = 4;
        private static volatile Parser<CancelOfferNftMessage> PARSER = null;
        public static final int PROPERTY_VERSION_FIELD_NUMBER = 5;
        public static final int RECEIVER_FIELD_NUMBER = 1;
        private long propertyVersion_;
        private String receiver_ = "";
        private String creator_ = "";
        private String collectionName_ = "";
        private String name_ = "";

        private CancelOfferNftMessage() {
        }

        @Override // wallet.core.jni.proto.Aptos.CancelOfferNftMessageOrBuilder
        public String getReceiver() {
            return this.receiver_;
        }

        @Override // wallet.core.jni.proto.Aptos.CancelOfferNftMessageOrBuilder
        public ByteString getReceiverBytes() {
            return ByteString.copyFromUtf8(this.receiver_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setReceiver(String value) {
            value.getClass();
            this.receiver_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearReceiver() {
            this.receiver_ = getDefaultInstance().getReceiver();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setReceiverBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.receiver_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Aptos.CancelOfferNftMessageOrBuilder
        public String getCreator() {
            return this.creator_;
        }

        @Override // wallet.core.jni.proto.Aptos.CancelOfferNftMessageOrBuilder
        public ByteString getCreatorBytes() {
            return ByteString.copyFromUtf8(this.creator_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCreator(String value) {
            value.getClass();
            this.creator_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCreator() {
            this.creator_ = getDefaultInstance().getCreator();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCreatorBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.creator_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Aptos.CancelOfferNftMessageOrBuilder
        public String getCollectionName() {
            return this.collectionName_;
        }

        @Override // wallet.core.jni.proto.Aptos.CancelOfferNftMessageOrBuilder
        public ByteString getCollectionNameBytes() {
            return ByteString.copyFromUtf8(this.collectionName_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCollectionName(String value) {
            value.getClass();
            this.collectionName_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCollectionName() {
            this.collectionName_ = getDefaultInstance().getCollectionName();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCollectionNameBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.collectionName_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Aptos.CancelOfferNftMessageOrBuilder
        public String getName() {
            return this.name_;
        }

        @Override // wallet.core.jni.proto.Aptos.CancelOfferNftMessageOrBuilder
        public ByteString getNameBytes() {
            return ByteString.copyFromUtf8(this.name_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setName(String value) {
            value.getClass();
            this.name_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearName() {
            this.name_ = getDefaultInstance().getName();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setNameBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.name_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Aptos.CancelOfferNftMessageOrBuilder
        public long getPropertyVersion() {
            return this.propertyVersion_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPropertyVersion(long value) {
            this.propertyVersion_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPropertyVersion() {
            this.propertyVersion_ = 0L;
        }

        public static CancelOfferNftMessage parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (CancelOfferNftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CancelOfferNftMessage parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CancelOfferNftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CancelOfferNftMessage parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (CancelOfferNftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CancelOfferNftMessage parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CancelOfferNftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CancelOfferNftMessage parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (CancelOfferNftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CancelOfferNftMessage parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CancelOfferNftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CancelOfferNftMessage parseFrom(InputStream input) throws IOException {
            return (CancelOfferNftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static CancelOfferNftMessage parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CancelOfferNftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static CancelOfferNftMessage parseDelimitedFrom(InputStream input) throws IOException {
            return (CancelOfferNftMessage) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static CancelOfferNftMessage parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CancelOfferNftMessage) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static CancelOfferNftMessage parseFrom(CodedInputStream input) throws IOException {
            return (CancelOfferNftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static CancelOfferNftMessage parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CancelOfferNftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(CancelOfferNftMessage prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<CancelOfferNftMessage, Builder> implements CancelOfferNftMessageOrBuilder {
            /* synthetic */ Builder(C68061 c68061) {
                this();
            }

            private Builder() {
                super(CancelOfferNftMessage.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Aptos.CancelOfferNftMessageOrBuilder
            public String getReceiver() {
                return ((CancelOfferNftMessage) this.instance).getReceiver();
            }

            @Override // wallet.core.jni.proto.Aptos.CancelOfferNftMessageOrBuilder
            public ByteString getReceiverBytes() {
                return ((CancelOfferNftMessage) this.instance).getReceiverBytes();
            }

            public Builder setReceiver(String value) {
                copyOnWrite();
                ((CancelOfferNftMessage) this.instance).setReceiver(value);
                return this;
            }

            public Builder clearReceiver() {
                copyOnWrite();
                ((CancelOfferNftMessage) this.instance).clearReceiver();
                return this;
            }

            public Builder setReceiverBytes(ByteString value) {
                copyOnWrite();
                ((CancelOfferNftMessage) this.instance).setReceiverBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.CancelOfferNftMessageOrBuilder
            public String getCreator() {
                return ((CancelOfferNftMessage) this.instance).getCreator();
            }

            @Override // wallet.core.jni.proto.Aptos.CancelOfferNftMessageOrBuilder
            public ByteString getCreatorBytes() {
                return ((CancelOfferNftMessage) this.instance).getCreatorBytes();
            }

            public Builder setCreator(String value) {
                copyOnWrite();
                ((CancelOfferNftMessage) this.instance).setCreator(value);
                return this;
            }

            public Builder clearCreator() {
                copyOnWrite();
                ((CancelOfferNftMessage) this.instance).clearCreator();
                return this;
            }

            public Builder setCreatorBytes(ByteString value) {
                copyOnWrite();
                ((CancelOfferNftMessage) this.instance).setCreatorBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.CancelOfferNftMessageOrBuilder
            public String getCollectionName() {
                return ((CancelOfferNftMessage) this.instance).getCollectionName();
            }

            @Override // wallet.core.jni.proto.Aptos.CancelOfferNftMessageOrBuilder
            public ByteString getCollectionNameBytes() {
                return ((CancelOfferNftMessage) this.instance).getCollectionNameBytes();
            }

            public Builder setCollectionName(String value) {
                copyOnWrite();
                ((CancelOfferNftMessage) this.instance).setCollectionName(value);
                return this;
            }

            public Builder clearCollectionName() {
                copyOnWrite();
                ((CancelOfferNftMessage) this.instance).clearCollectionName();
                return this;
            }

            public Builder setCollectionNameBytes(ByteString value) {
                copyOnWrite();
                ((CancelOfferNftMessage) this.instance).setCollectionNameBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.CancelOfferNftMessageOrBuilder
            public String getName() {
                return ((CancelOfferNftMessage) this.instance).getName();
            }

            @Override // wallet.core.jni.proto.Aptos.CancelOfferNftMessageOrBuilder
            public ByteString getNameBytes() {
                return ((CancelOfferNftMessage) this.instance).getNameBytes();
            }

            public Builder setName(String value) {
                copyOnWrite();
                ((CancelOfferNftMessage) this.instance).setName(value);
                return this;
            }

            public Builder clearName() {
                copyOnWrite();
                ((CancelOfferNftMessage) this.instance).clearName();
                return this;
            }

            public Builder setNameBytes(ByteString value) {
                copyOnWrite();
                ((CancelOfferNftMessage) this.instance).setNameBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.CancelOfferNftMessageOrBuilder
            public long getPropertyVersion() {
                return ((CancelOfferNftMessage) this.instance).getPropertyVersion();
            }

            public Builder setPropertyVersion(long value) {
                copyOnWrite();
                ((CancelOfferNftMessage) this.instance).setPropertyVersion(value);
                return this;
            }

            public Builder clearPropertyVersion() {
                copyOnWrite();
                ((CancelOfferNftMessage) this.instance).clearPropertyVersion();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68061.f1787xa1df5c61[method.ordinal()]) {
                case 1:
                    return new CancelOfferNftMessage();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004Ȉ\u0005\u0003", new Object[]{"receiver_", "creator_", "collectionName_", "name_", "propertyVersion_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<CancelOfferNftMessage> parser = PARSER;
                    if (parser == null) {
                        synchronized (CancelOfferNftMessage.class) {
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
            CancelOfferNftMessage cancelOfferNftMessage = new CancelOfferNftMessage();
            DEFAULT_INSTANCE = cancelOfferNftMessage;
            GeneratedMessageLite.registerDefaultInstance(CancelOfferNftMessage.class, cancelOfferNftMessage);
        }

        public static CancelOfferNftMessage getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CancelOfferNftMessage> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class ClaimNftMessage extends GeneratedMessageLite<ClaimNftMessage, Builder> implements ClaimNftMessageOrBuilder {
        public static final int COLLECTIONNAME_FIELD_NUMBER = 3;
        public static final int CREATOR_FIELD_NUMBER = 2;
        private static final ClaimNftMessage DEFAULT_INSTANCE;
        public static final int NAME_FIELD_NUMBER = 4;
        private static volatile Parser<ClaimNftMessage> PARSER = null;
        public static final int PROPERTY_VERSION_FIELD_NUMBER = 5;
        public static final int SENDER_FIELD_NUMBER = 1;
        private long propertyVersion_;
        private String sender_ = "";
        private String creator_ = "";
        private String collectionName_ = "";
        private String name_ = "";

        private ClaimNftMessage() {
        }

        @Override // wallet.core.jni.proto.Aptos.ClaimNftMessageOrBuilder
        public String getSender() {
            return this.sender_;
        }

        @Override // wallet.core.jni.proto.Aptos.ClaimNftMessageOrBuilder
        public ByteString getSenderBytes() {
            return ByteString.copyFromUtf8(this.sender_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSender(String value) {
            value.getClass();
            this.sender_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSender() {
            this.sender_ = getDefaultInstance().getSender();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSenderBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.sender_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Aptos.ClaimNftMessageOrBuilder
        public String getCreator() {
            return this.creator_;
        }

        @Override // wallet.core.jni.proto.Aptos.ClaimNftMessageOrBuilder
        public ByteString getCreatorBytes() {
            return ByteString.copyFromUtf8(this.creator_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCreator(String value) {
            value.getClass();
            this.creator_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCreator() {
            this.creator_ = getDefaultInstance().getCreator();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCreatorBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.creator_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Aptos.ClaimNftMessageOrBuilder
        public String getCollectionName() {
            return this.collectionName_;
        }

        @Override // wallet.core.jni.proto.Aptos.ClaimNftMessageOrBuilder
        public ByteString getCollectionNameBytes() {
            return ByteString.copyFromUtf8(this.collectionName_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCollectionName(String value) {
            value.getClass();
            this.collectionName_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCollectionName() {
            this.collectionName_ = getDefaultInstance().getCollectionName();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCollectionNameBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.collectionName_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Aptos.ClaimNftMessageOrBuilder
        public String getName() {
            return this.name_;
        }

        @Override // wallet.core.jni.proto.Aptos.ClaimNftMessageOrBuilder
        public ByteString getNameBytes() {
            return ByteString.copyFromUtf8(this.name_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setName(String value) {
            value.getClass();
            this.name_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearName() {
            this.name_ = getDefaultInstance().getName();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setNameBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.name_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Aptos.ClaimNftMessageOrBuilder
        public long getPropertyVersion() {
            return this.propertyVersion_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPropertyVersion(long value) {
            this.propertyVersion_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPropertyVersion() {
            this.propertyVersion_ = 0L;
        }

        public static ClaimNftMessage parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (ClaimNftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static ClaimNftMessage parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (ClaimNftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static ClaimNftMessage parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (ClaimNftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static ClaimNftMessage parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (ClaimNftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static ClaimNftMessage parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (ClaimNftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static ClaimNftMessage parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (ClaimNftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static ClaimNftMessage parseFrom(InputStream input) throws IOException {
            return (ClaimNftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static ClaimNftMessage parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ClaimNftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static ClaimNftMessage parseDelimitedFrom(InputStream input) throws IOException {
            return (ClaimNftMessage) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static ClaimNftMessage parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ClaimNftMessage) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static ClaimNftMessage parseFrom(CodedInputStream input) throws IOException {
            return (ClaimNftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static ClaimNftMessage parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ClaimNftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(ClaimNftMessage prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<ClaimNftMessage, Builder> implements ClaimNftMessageOrBuilder {
            /* synthetic */ Builder(C68061 c68061) {
                this();
            }

            private Builder() {
                super(ClaimNftMessage.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Aptos.ClaimNftMessageOrBuilder
            public String getSender() {
                return ((ClaimNftMessage) this.instance).getSender();
            }

            @Override // wallet.core.jni.proto.Aptos.ClaimNftMessageOrBuilder
            public ByteString getSenderBytes() {
                return ((ClaimNftMessage) this.instance).getSenderBytes();
            }

            public Builder setSender(String value) {
                copyOnWrite();
                ((ClaimNftMessage) this.instance).setSender(value);
                return this;
            }

            public Builder clearSender() {
                copyOnWrite();
                ((ClaimNftMessage) this.instance).clearSender();
                return this;
            }

            public Builder setSenderBytes(ByteString value) {
                copyOnWrite();
                ((ClaimNftMessage) this.instance).setSenderBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.ClaimNftMessageOrBuilder
            public String getCreator() {
                return ((ClaimNftMessage) this.instance).getCreator();
            }

            @Override // wallet.core.jni.proto.Aptos.ClaimNftMessageOrBuilder
            public ByteString getCreatorBytes() {
                return ((ClaimNftMessage) this.instance).getCreatorBytes();
            }

            public Builder setCreator(String value) {
                copyOnWrite();
                ((ClaimNftMessage) this.instance).setCreator(value);
                return this;
            }

            public Builder clearCreator() {
                copyOnWrite();
                ((ClaimNftMessage) this.instance).clearCreator();
                return this;
            }

            public Builder setCreatorBytes(ByteString value) {
                copyOnWrite();
                ((ClaimNftMessage) this.instance).setCreatorBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.ClaimNftMessageOrBuilder
            public String getCollectionName() {
                return ((ClaimNftMessage) this.instance).getCollectionName();
            }

            @Override // wallet.core.jni.proto.Aptos.ClaimNftMessageOrBuilder
            public ByteString getCollectionNameBytes() {
                return ((ClaimNftMessage) this.instance).getCollectionNameBytes();
            }

            public Builder setCollectionName(String value) {
                copyOnWrite();
                ((ClaimNftMessage) this.instance).setCollectionName(value);
                return this;
            }

            public Builder clearCollectionName() {
                copyOnWrite();
                ((ClaimNftMessage) this.instance).clearCollectionName();
                return this;
            }

            public Builder setCollectionNameBytes(ByteString value) {
                copyOnWrite();
                ((ClaimNftMessage) this.instance).setCollectionNameBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.ClaimNftMessageOrBuilder
            public String getName() {
                return ((ClaimNftMessage) this.instance).getName();
            }

            @Override // wallet.core.jni.proto.Aptos.ClaimNftMessageOrBuilder
            public ByteString getNameBytes() {
                return ((ClaimNftMessage) this.instance).getNameBytes();
            }

            public Builder setName(String value) {
                copyOnWrite();
                ((ClaimNftMessage) this.instance).setName(value);
                return this;
            }

            public Builder clearName() {
                copyOnWrite();
                ((ClaimNftMessage) this.instance).clearName();
                return this;
            }

            public Builder setNameBytes(ByteString value) {
                copyOnWrite();
                ((ClaimNftMessage) this.instance).setNameBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.ClaimNftMessageOrBuilder
            public long getPropertyVersion() {
                return ((ClaimNftMessage) this.instance).getPropertyVersion();
            }

            public Builder setPropertyVersion(long value) {
                copyOnWrite();
                ((ClaimNftMessage) this.instance).setPropertyVersion(value);
                return this;
            }

            public Builder clearPropertyVersion() {
                copyOnWrite();
                ((ClaimNftMessage) this.instance).clearPropertyVersion();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68061.f1787xa1df5c61[method.ordinal()]) {
                case 1:
                    return new ClaimNftMessage();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004Ȉ\u0005\u0003", new Object[]{"sender_", "creator_", "collectionName_", "name_", "propertyVersion_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<ClaimNftMessage> parser = PARSER;
                    if (parser == null) {
                        synchronized (ClaimNftMessage.class) {
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
            ClaimNftMessage claimNftMessage = new ClaimNftMessage();
            DEFAULT_INSTANCE = claimNftMessage;
            GeneratedMessageLite.registerDefaultInstance(ClaimNftMessage.class, claimNftMessage);
        }

        public static ClaimNftMessage getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<ClaimNftMessage> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class NftMessage extends GeneratedMessageLite<NftMessage, Builder> implements NftMessageOrBuilder {
        public static final int CANCEL_OFFER_NFT_FIELD_NUMBER = 2;
        public static final int CLAIM_NFT_FIELD_NUMBER = 3;
        private static final NftMessage DEFAULT_INSTANCE;
        public static final int OFFER_NFT_FIELD_NUMBER = 1;
        private static volatile Parser<NftMessage> PARSER;
        private int nftTransactionPayloadCase_ = 0;
        private Object nftTransactionPayload_;

        private NftMessage() {
        }

        /* loaded from: classes6.dex */
        public enum NftTransactionPayloadCase {
            OFFER_NFT(1),
            CANCEL_OFFER_NFT(2),
            CLAIM_NFT(3),
            NFTTRANSACTIONPAYLOAD_NOT_SET(0);
            
            private final int value;

            NftTransactionPayloadCase(int value) {
                this.value = value;
            }

            @Deprecated
            public static NftTransactionPayloadCase valueOf(int value) {
                return forNumber(value);
            }

            public static NftTransactionPayloadCase forNumber(int value) {
                if (value != 0) {
                    if (value != 1) {
                        if (value != 2) {
                            if (value != 3) {
                                return null;
                            }
                            return CLAIM_NFT;
                        }
                        return CANCEL_OFFER_NFT;
                    }
                    return OFFER_NFT;
                }
                return NFTTRANSACTIONPAYLOAD_NOT_SET;
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.Aptos.NftMessageOrBuilder
        public NftTransactionPayloadCase getNftTransactionPayloadCase() {
            return NftTransactionPayloadCase.forNumber(this.nftTransactionPayloadCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearNftTransactionPayload() {
            this.nftTransactionPayloadCase_ = 0;
            this.nftTransactionPayload_ = null;
        }

        @Override // wallet.core.jni.proto.Aptos.NftMessageOrBuilder
        public boolean hasOfferNft() {
            return this.nftTransactionPayloadCase_ == 1;
        }

        @Override // wallet.core.jni.proto.Aptos.NftMessageOrBuilder
        public OfferNftMessage getOfferNft() {
            if (this.nftTransactionPayloadCase_ == 1) {
                return (OfferNftMessage) this.nftTransactionPayload_;
            }
            return OfferNftMessage.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOfferNft(OfferNftMessage value) {
            value.getClass();
            this.nftTransactionPayload_ = value;
            this.nftTransactionPayloadCase_ = 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeOfferNft(OfferNftMessage value) {
            value.getClass();
            if (this.nftTransactionPayloadCase_ == 1 && this.nftTransactionPayload_ != OfferNftMessage.getDefaultInstance()) {
                this.nftTransactionPayload_ = OfferNftMessage.newBuilder((OfferNftMessage) this.nftTransactionPayload_).mergeFrom((OfferNftMessage.Builder) value).buildPartial();
            } else {
                this.nftTransactionPayload_ = value;
            }
            this.nftTransactionPayloadCase_ = 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOfferNft() {
            if (this.nftTransactionPayloadCase_ == 1) {
                this.nftTransactionPayloadCase_ = 0;
                this.nftTransactionPayload_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Aptos.NftMessageOrBuilder
        public boolean hasCancelOfferNft() {
            return this.nftTransactionPayloadCase_ == 2;
        }

        @Override // wallet.core.jni.proto.Aptos.NftMessageOrBuilder
        public CancelOfferNftMessage getCancelOfferNft() {
            if (this.nftTransactionPayloadCase_ == 2) {
                return (CancelOfferNftMessage) this.nftTransactionPayload_;
            }
            return CancelOfferNftMessage.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCancelOfferNft(CancelOfferNftMessage value) {
            value.getClass();
            this.nftTransactionPayload_ = value;
            this.nftTransactionPayloadCase_ = 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeCancelOfferNft(CancelOfferNftMessage value) {
            value.getClass();
            if (this.nftTransactionPayloadCase_ == 2 && this.nftTransactionPayload_ != CancelOfferNftMessage.getDefaultInstance()) {
                this.nftTransactionPayload_ = CancelOfferNftMessage.newBuilder((CancelOfferNftMessage) this.nftTransactionPayload_).mergeFrom((CancelOfferNftMessage.Builder) value).buildPartial();
            } else {
                this.nftTransactionPayload_ = value;
            }
            this.nftTransactionPayloadCase_ = 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCancelOfferNft() {
            if (this.nftTransactionPayloadCase_ == 2) {
                this.nftTransactionPayloadCase_ = 0;
                this.nftTransactionPayload_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Aptos.NftMessageOrBuilder
        public boolean hasClaimNft() {
            return this.nftTransactionPayloadCase_ == 3;
        }

        @Override // wallet.core.jni.proto.Aptos.NftMessageOrBuilder
        public ClaimNftMessage getClaimNft() {
            if (this.nftTransactionPayloadCase_ == 3) {
                return (ClaimNftMessage) this.nftTransactionPayload_;
            }
            return ClaimNftMessage.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setClaimNft(ClaimNftMessage value) {
            value.getClass();
            this.nftTransactionPayload_ = value;
            this.nftTransactionPayloadCase_ = 3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeClaimNft(ClaimNftMessage value) {
            value.getClass();
            if (this.nftTransactionPayloadCase_ == 3 && this.nftTransactionPayload_ != ClaimNftMessage.getDefaultInstance()) {
                this.nftTransactionPayload_ = ClaimNftMessage.newBuilder((ClaimNftMessage) this.nftTransactionPayload_).mergeFrom((ClaimNftMessage.Builder) value).buildPartial();
            } else {
                this.nftTransactionPayload_ = value;
            }
            this.nftTransactionPayloadCase_ = 3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearClaimNft() {
            if (this.nftTransactionPayloadCase_ == 3) {
                this.nftTransactionPayloadCase_ = 0;
                this.nftTransactionPayload_ = null;
            }
        }

        public static NftMessage parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (NftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static NftMessage parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (NftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static NftMessage parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (NftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static NftMessage parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (NftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static NftMessage parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (NftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static NftMessage parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (NftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static NftMessage parseFrom(InputStream input) throws IOException {
            return (NftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static NftMessage parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (NftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static NftMessage parseDelimitedFrom(InputStream input) throws IOException {
            return (NftMessage) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static NftMessage parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (NftMessage) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static NftMessage parseFrom(CodedInputStream input) throws IOException {
            return (NftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static NftMessage parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (NftMessage) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(NftMessage prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<NftMessage, Builder> implements NftMessageOrBuilder {
            /* synthetic */ Builder(C68061 c68061) {
                this();
            }

            private Builder() {
                super(NftMessage.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Aptos.NftMessageOrBuilder
            public NftTransactionPayloadCase getNftTransactionPayloadCase() {
                return ((NftMessage) this.instance).getNftTransactionPayloadCase();
            }

            public Builder clearNftTransactionPayload() {
                copyOnWrite();
                ((NftMessage) this.instance).clearNftTransactionPayload();
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.NftMessageOrBuilder
            public boolean hasOfferNft() {
                return ((NftMessage) this.instance).hasOfferNft();
            }

            @Override // wallet.core.jni.proto.Aptos.NftMessageOrBuilder
            public OfferNftMessage getOfferNft() {
                return ((NftMessage) this.instance).getOfferNft();
            }

            public Builder setOfferNft(OfferNftMessage value) {
                copyOnWrite();
                ((NftMessage) this.instance).setOfferNft(value);
                return this;
            }

            public Builder setOfferNft(OfferNftMessage.Builder builderForValue) {
                copyOnWrite();
                ((NftMessage) this.instance).setOfferNft(builderForValue.build());
                return this;
            }

            public Builder mergeOfferNft(OfferNftMessage value) {
                copyOnWrite();
                ((NftMessage) this.instance).mergeOfferNft(value);
                return this;
            }

            public Builder clearOfferNft() {
                copyOnWrite();
                ((NftMessage) this.instance).clearOfferNft();
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.NftMessageOrBuilder
            public boolean hasCancelOfferNft() {
                return ((NftMessage) this.instance).hasCancelOfferNft();
            }

            @Override // wallet.core.jni.proto.Aptos.NftMessageOrBuilder
            public CancelOfferNftMessage getCancelOfferNft() {
                return ((NftMessage) this.instance).getCancelOfferNft();
            }

            public Builder setCancelOfferNft(CancelOfferNftMessage value) {
                copyOnWrite();
                ((NftMessage) this.instance).setCancelOfferNft(value);
                return this;
            }

            public Builder setCancelOfferNft(CancelOfferNftMessage.Builder builderForValue) {
                copyOnWrite();
                ((NftMessage) this.instance).setCancelOfferNft(builderForValue.build());
                return this;
            }

            public Builder mergeCancelOfferNft(CancelOfferNftMessage value) {
                copyOnWrite();
                ((NftMessage) this.instance).mergeCancelOfferNft(value);
                return this;
            }

            public Builder clearCancelOfferNft() {
                copyOnWrite();
                ((NftMessage) this.instance).clearCancelOfferNft();
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.NftMessageOrBuilder
            public boolean hasClaimNft() {
                return ((NftMessage) this.instance).hasClaimNft();
            }

            @Override // wallet.core.jni.proto.Aptos.NftMessageOrBuilder
            public ClaimNftMessage getClaimNft() {
                return ((NftMessage) this.instance).getClaimNft();
            }

            public Builder setClaimNft(ClaimNftMessage value) {
                copyOnWrite();
                ((NftMessage) this.instance).setClaimNft(value);
                return this;
            }

            public Builder setClaimNft(ClaimNftMessage.Builder builderForValue) {
                copyOnWrite();
                ((NftMessage) this.instance).setClaimNft(builderForValue.build());
                return this;
            }

            public Builder mergeClaimNft(ClaimNftMessage value) {
                copyOnWrite();
                ((NftMessage) this.instance).mergeClaimNft(value);
                return this;
            }

            public Builder clearClaimNft() {
                copyOnWrite();
                ((NftMessage) this.instance).clearClaimNft();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68061.f1787xa1df5c61[method.ordinal()]) {
                case 1:
                    return new NftMessage();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000", new Object[]{"nftTransactionPayload_", "nftTransactionPayloadCase_", OfferNftMessage.class, CancelOfferNftMessage.class, ClaimNftMessage.class});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<NftMessage> parser = PARSER;
                    if (parser == null) {
                        synchronized (NftMessage.class) {
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
            NftMessage nftMessage = new NftMessage();
            DEFAULT_INSTANCE = nftMessage;
            GeneratedMessageLite.registerDefaultInstance(NftMessage.class, nftMessage);
        }

        public static NftMessage getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<NftMessage> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        public static final int ANY_ENCODED_FIELD_NUMBER = 8;
        public static final int CHAIN_ID_FIELD_NUMBER = 6;
        public static final int CREATE_ACCOUNT_FIELD_NUMBER = 11;
        private static final SigningInput DEFAULT_INSTANCE;
        public static final int EXPIRATION_TIMESTAMP_SECS_FIELD_NUMBER = 5;
        public static final int GAS_UNIT_PRICE_FIELD_NUMBER = 4;
        public static final int MAX_GAS_AMOUNT_FIELD_NUMBER = 3;
        public static final int NFT_MESSAGE_FIELD_NUMBER = 12;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PRIVATE_KEY_FIELD_NUMBER = 7;
        public static final int REGISTER_TOKEN_FIELD_NUMBER = 13;
        public static final int SENDER_FIELD_NUMBER = 1;
        public static final int SEQUENCE_NUMBER_FIELD_NUMBER = 2;
        public static final int TOKEN_TRANSFER_FIELD_NUMBER = 10;
        public static final int TRANSFER_FIELD_NUMBER = 9;
        private int chainId_;
        private long expirationTimestampSecs_;
        private long gasUnitPrice_;
        private long maxGasAmount_;
        private long sequenceNumber_;
        private Object transactionPayload_;
        private int transactionPayloadCase_ = 0;
        private String sender_ = "";
        private ByteString privateKey_ = ByteString.EMPTY;
        private String anyEncoded_ = "";

        private SigningInput() {
        }

        /* loaded from: classes6.dex */
        public enum TransactionPayloadCase {
            TRANSFER(9),
            TOKEN_TRANSFER(10),
            CREATE_ACCOUNT(11),
            NFT_MESSAGE(12),
            REGISTER_TOKEN(13),
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
                    switch (value) {
                        case 9:
                            return TRANSFER;
                        case 10:
                            return TOKEN_TRANSFER;
                        case 11:
                            return CREATE_ACCOUNT;
                        case 12:
                            return NFT_MESSAGE;
                        case 13:
                            return REGISTER_TOKEN;
                        default:
                            return null;
                    }
                }
                return TRANSACTIONPAYLOAD_NOT_SET;
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
        public TransactionPayloadCase getTransactionPayloadCase() {
            return TransactionPayloadCase.forNumber(this.transactionPayloadCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransactionPayload() {
            this.transactionPayloadCase_ = 0;
            this.transactionPayload_ = null;
        }

        @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
        public String getSender() {
            return this.sender_;
        }

        @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
        public ByteString getSenderBytes() {
            return ByteString.copyFromUtf8(this.sender_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSender(String value) {
            value.getClass();
            this.sender_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSender() {
            this.sender_ = getDefaultInstance().getSender();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSenderBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.sender_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
        public long getSequenceNumber() {
            return this.sequenceNumber_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSequenceNumber(long value) {
            this.sequenceNumber_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSequenceNumber() {
            this.sequenceNumber_ = 0L;
        }

        @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
        public long getMaxGasAmount() {
            return this.maxGasAmount_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMaxGasAmount(long value) {
            this.maxGasAmount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMaxGasAmount() {
            this.maxGasAmount_ = 0L;
        }

        @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
        public long getGasUnitPrice() {
            return this.gasUnitPrice_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setGasUnitPrice(long value) {
            this.gasUnitPrice_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearGasUnitPrice() {
            this.gasUnitPrice_ = 0L;
        }

        @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
        public long getExpirationTimestampSecs() {
            return this.expirationTimestampSecs_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setExpirationTimestampSecs(long value) {
            this.expirationTimestampSecs_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearExpirationTimestampSecs() {
            this.expirationTimestampSecs_ = 0L;
        }

        @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
        public String getAnyEncoded() {
            return this.anyEncoded_;
        }

        @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
        public ByteString getAnyEncodedBytes() {
            return ByteString.copyFromUtf8(this.anyEncoded_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAnyEncoded(String value) {
            value.getClass();
            this.anyEncoded_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAnyEncoded() {
            this.anyEncoded_ = getDefaultInstance().getAnyEncoded();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAnyEncodedBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.anyEncoded_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
        public boolean hasTransfer() {
            return this.transactionPayloadCase_ == 9;
        }

        @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
        public TransferMessage getTransfer() {
            if (this.transactionPayloadCase_ == 9) {
                return (TransferMessage) this.transactionPayload_;
            }
            return TransferMessage.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransfer(TransferMessage value) {
            value.getClass();
            this.transactionPayload_ = value;
            this.transactionPayloadCase_ = 9;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTransfer(TransferMessage value) {
            value.getClass();
            if (this.transactionPayloadCase_ == 9 && this.transactionPayload_ != TransferMessage.getDefaultInstance()) {
                this.transactionPayload_ = TransferMessage.newBuilder((TransferMessage) this.transactionPayload_).mergeFrom((TransferMessage.Builder) value).buildPartial();
            } else {
                this.transactionPayload_ = value;
            }
            this.transactionPayloadCase_ = 9;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransfer() {
            if (this.transactionPayloadCase_ == 9) {
                this.transactionPayloadCase_ = 0;
                this.transactionPayload_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
        public boolean hasTokenTransfer() {
            return this.transactionPayloadCase_ == 10;
        }

        @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
        public TokenTransferMessage getTokenTransfer() {
            if (this.transactionPayloadCase_ == 10) {
                return (TokenTransferMessage) this.transactionPayload_;
            }
            return TokenTransferMessage.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTokenTransfer(TokenTransferMessage value) {
            value.getClass();
            this.transactionPayload_ = value;
            this.transactionPayloadCase_ = 10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTokenTransfer(TokenTransferMessage value) {
            value.getClass();
            if (this.transactionPayloadCase_ == 10 && this.transactionPayload_ != TokenTransferMessage.getDefaultInstance()) {
                this.transactionPayload_ = TokenTransferMessage.newBuilder((TokenTransferMessage) this.transactionPayload_).mergeFrom((TokenTransferMessage.Builder) value).buildPartial();
            } else {
                this.transactionPayload_ = value;
            }
            this.transactionPayloadCase_ = 10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTokenTransfer() {
            if (this.transactionPayloadCase_ == 10) {
                this.transactionPayloadCase_ = 0;
                this.transactionPayload_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
        public boolean hasCreateAccount() {
            return this.transactionPayloadCase_ == 11;
        }

        @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
        public CreateAccountMessage getCreateAccount() {
            if (this.transactionPayloadCase_ == 11) {
                return (CreateAccountMessage) this.transactionPayload_;
            }
            return CreateAccountMessage.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCreateAccount(CreateAccountMessage value) {
            value.getClass();
            this.transactionPayload_ = value;
            this.transactionPayloadCase_ = 11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeCreateAccount(CreateAccountMessage value) {
            value.getClass();
            if (this.transactionPayloadCase_ == 11 && this.transactionPayload_ != CreateAccountMessage.getDefaultInstance()) {
                this.transactionPayload_ = CreateAccountMessage.newBuilder((CreateAccountMessage) this.transactionPayload_).mergeFrom((CreateAccountMessage.Builder) value).buildPartial();
            } else {
                this.transactionPayload_ = value;
            }
            this.transactionPayloadCase_ = 11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCreateAccount() {
            if (this.transactionPayloadCase_ == 11) {
                this.transactionPayloadCase_ = 0;
                this.transactionPayload_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
        public boolean hasNftMessage() {
            return this.transactionPayloadCase_ == 12;
        }

        @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
        public NftMessage getNftMessage() {
            if (this.transactionPayloadCase_ == 12) {
                return (NftMessage) this.transactionPayload_;
            }
            return NftMessage.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setNftMessage(NftMessage value) {
            value.getClass();
            this.transactionPayload_ = value;
            this.transactionPayloadCase_ = 12;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeNftMessage(NftMessage value) {
            value.getClass();
            if (this.transactionPayloadCase_ == 12 && this.transactionPayload_ != NftMessage.getDefaultInstance()) {
                this.transactionPayload_ = NftMessage.newBuilder((NftMessage) this.transactionPayload_).mergeFrom((NftMessage.Builder) value).buildPartial();
            } else {
                this.transactionPayload_ = value;
            }
            this.transactionPayloadCase_ = 12;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearNftMessage() {
            if (this.transactionPayloadCase_ == 12) {
                this.transactionPayloadCase_ = 0;
                this.transactionPayload_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
        public boolean hasRegisterToken() {
            return this.transactionPayloadCase_ == 13;
        }

        @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
        public ManagedTokensRegisterMessage getRegisterToken() {
            if (this.transactionPayloadCase_ == 13) {
                return (ManagedTokensRegisterMessage) this.transactionPayload_;
            }
            return ManagedTokensRegisterMessage.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRegisterToken(ManagedTokensRegisterMessage value) {
            value.getClass();
            this.transactionPayload_ = value;
            this.transactionPayloadCase_ = 13;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeRegisterToken(ManagedTokensRegisterMessage value) {
            value.getClass();
            if (this.transactionPayloadCase_ == 13 && this.transactionPayload_ != ManagedTokensRegisterMessage.getDefaultInstance()) {
                this.transactionPayload_ = ManagedTokensRegisterMessage.newBuilder((ManagedTokensRegisterMessage) this.transactionPayload_).mergeFrom((ManagedTokensRegisterMessage.Builder) value).buildPartial();
            } else {
                this.transactionPayload_ = value;
            }
            this.transactionPayloadCase_ = 13;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearRegisterToken() {
            if (this.transactionPayloadCase_ == 13) {
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

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<SigningInput, Builder> implements SigningInputOrBuilder {
            /* synthetic */ Builder(C68061 c68061) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
            public TransactionPayloadCase getTransactionPayloadCase() {
                return ((SigningInput) this.instance).getTransactionPayloadCase();
            }

            public Builder clearTransactionPayload() {
                copyOnWrite();
                ((SigningInput) this.instance).clearTransactionPayload();
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
            public String getSender() {
                return ((SigningInput) this.instance).getSender();
            }

            @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
            public ByteString getSenderBytes() {
                return ((SigningInput) this.instance).getSenderBytes();
            }

            public Builder setSender(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setSender(value);
                return this;
            }

            public Builder clearSender() {
                copyOnWrite();
                ((SigningInput) this.instance).clearSender();
                return this;
            }

            public Builder setSenderBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setSenderBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
            public long getSequenceNumber() {
                return ((SigningInput) this.instance).getSequenceNumber();
            }

            public Builder setSequenceNumber(long value) {
                copyOnWrite();
                ((SigningInput) this.instance).setSequenceNumber(value);
                return this;
            }

            public Builder clearSequenceNumber() {
                copyOnWrite();
                ((SigningInput) this.instance).clearSequenceNumber();
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
            public long getMaxGasAmount() {
                return ((SigningInput) this.instance).getMaxGasAmount();
            }

            public Builder setMaxGasAmount(long value) {
                copyOnWrite();
                ((SigningInput) this.instance).setMaxGasAmount(value);
                return this;
            }

            public Builder clearMaxGasAmount() {
                copyOnWrite();
                ((SigningInput) this.instance).clearMaxGasAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
            public long getGasUnitPrice() {
                return ((SigningInput) this.instance).getGasUnitPrice();
            }

            public Builder setGasUnitPrice(long value) {
                copyOnWrite();
                ((SigningInput) this.instance).setGasUnitPrice(value);
                return this;
            }

            public Builder clearGasUnitPrice() {
                copyOnWrite();
                ((SigningInput) this.instance).clearGasUnitPrice();
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
            public long getExpirationTimestampSecs() {
                return ((SigningInput) this.instance).getExpirationTimestampSecs();
            }

            public Builder setExpirationTimestampSecs(long value) {
                copyOnWrite();
                ((SigningInput) this.instance).setExpirationTimestampSecs(value);
                return this;
            }

            public Builder clearExpirationTimestampSecs() {
                copyOnWrite();
                ((SigningInput) this.instance).clearExpirationTimestampSecs();
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
            public int getChainId() {
                return ((SigningInput) this.instance).getChainId();
            }

            public Builder setChainId(int value) {
                copyOnWrite();
                ((SigningInput) this.instance).setChainId(value);
                return this;
            }

            public Builder clearChainId() {
                copyOnWrite();
                ((SigningInput) this.instance).clearChainId();
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
            public String getAnyEncoded() {
                return ((SigningInput) this.instance).getAnyEncoded();
            }

            @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
            public ByteString getAnyEncodedBytes() {
                return ((SigningInput) this.instance).getAnyEncodedBytes();
            }

            public Builder setAnyEncoded(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setAnyEncoded(value);
                return this;
            }

            public Builder clearAnyEncoded() {
                copyOnWrite();
                ((SigningInput) this.instance).clearAnyEncoded();
                return this;
            }

            public Builder setAnyEncodedBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setAnyEncodedBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
            public boolean hasTransfer() {
                return ((SigningInput) this.instance).hasTransfer();
            }

            @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
            public boolean hasTokenTransfer() {
                return ((SigningInput) this.instance).hasTokenTransfer();
            }

            @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
            public TokenTransferMessage getTokenTransfer() {
                return ((SigningInput) this.instance).getTokenTransfer();
            }

            public Builder setTokenTransfer(TokenTransferMessage value) {
                copyOnWrite();
                ((SigningInput) this.instance).setTokenTransfer(value);
                return this;
            }

            public Builder setTokenTransfer(TokenTransferMessage.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setTokenTransfer(builderForValue.build());
                return this;
            }

            public Builder mergeTokenTransfer(TokenTransferMessage value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeTokenTransfer(value);
                return this;
            }

            public Builder clearTokenTransfer() {
                copyOnWrite();
                ((SigningInput) this.instance).clearTokenTransfer();
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
            public boolean hasCreateAccount() {
                return ((SigningInput) this.instance).hasCreateAccount();
            }

            @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
            public CreateAccountMessage getCreateAccount() {
                return ((SigningInput) this.instance).getCreateAccount();
            }

            public Builder setCreateAccount(CreateAccountMessage value) {
                copyOnWrite();
                ((SigningInput) this.instance).setCreateAccount(value);
                return this;
            }

            public Builder setCreateAccount(CreateAccountMessage.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setCreateAccount(builderForValue.build());
                return this;
            }

            public Builder mergeCreateAccount(CreateAccountMessage value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeCreateAccount(value);
                return this;
            }

            public Builder clearCreateAccount() {
                copyOnWrite();
                ((SigningInput) this.instance).clearCreateAccount();
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
            public boolean hasNftMessage() {
                return ((SigningInput) this.instance).hasNftMessage();
            }

            @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
            public NftMessage getNftMessage() {
                return ((SigningInput) this.instance).getNftMessage();
            }

            public Builder setNftMessage(NftMessage value) {
                copyOnWrite();
                ((SigningInput) this.instance).setNftMessage(value);
                return this;
            }

            public Builder setNftMessage(NftMessage.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setNftMessage(builderForValue.build());
                return this;
            }

            public Builder mergeNftMessage(NftMessage value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeNftMessage(value);
                return this;
            }

            public Builder clearNftMessage() {
                copyOnWrite();
                ((SigningInput) this.instance).clearNftMessage();
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
            public boolean hasRegisterToken() {
                return ((SigningInput) this.instance).hasRegisterToken();
            }

            @Override // wallet.core.jni.proto.Aptos.SigningInputOrBuilder
            public ManagedTokensRegisterMessage getRegisterToken() {
                return ((SigningInput) this.instance).getRegisterToken();
            }

            public Builder setRegisterToken(ManagedTokensRegisterMessage value) {
                copyOnWrite();
                ((SigningInput) this.instance).setRegisterToken(value);
                return this;
            }

            public Builder setRegisterToken(ManagedTokensRegisterMessage.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setRegisterToken(builderForValue.build());
                return this;
            }

            public Builder mergeRegisterToken(ManagedTokensRegisterMessage value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeRegisterToken(value);
                return this;
            }

            public Builder clearRegisterToken() {
                copyOnWrite();
                ((SigningInput) this.instance).clearRegisterToken();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68061.f1787xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\r\u0001\u0000\u0001\r\r\u0000\u0000\u0000\u0001Ȉ\u0002\u0002\u0003\u0003\u0004\u0003\u0005\u0003\u0006\u000b\u0007\n\bȈ\t<\u0000\n<\u0000\u000b<\u0000\f<\u0000\r<\u0000", new Object[]{"transactionPayload_", "transactionPayloadCase_", "sender_", "sequenceNumber_", "maxGasAmount_", "gasUnitPrice_", "expirationTimestampSecs_", "chainId_", "privateKey_", "anyEncoded_", TransferMessage.class, TokenTransferMessage.class, CreateAccountMessage.class, NftMessage.class, ManagedTokensRegisterMessage.class});
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
    public static final class TransactionAuthenticator extends GeneratedMessageLite<TransactionAuthenticator, Builder> implements TransactionAuthenticatorOrBuilder {
        private static final TransactionAuthenticator DEFAULT_INSTANCE;
        private static volatile Parser<TransactionAuthenticator> PARSER = null;
        public static final int PUBLIC_KEY_FIELD_NUMBER = 2;
        public static final int SIGNATURE_FIELD_NUMBER = 1;
        private ByteString publicKey_;
        private ByteString signature_;

        private TransactionAuthenticator() {
            ByteString byteString = ByteString.EMPTY;
            this.signature_ = byteString;
            this.publicKey_ = byteString;
        }

        @Override // wallet.core.jni.proto.Aptos.TransactionAuthenticatorOrBuilder
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

        @Override // wallet.core.jni.proto.Aptos.TransactionAuthenticatorOrBuilder
        public ByteString getPublicKey() {
            return this.publicKey_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPublicKey(ByteString value) {
            value.getClass();
            this.publicKey_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPublicKey() {
            this.publicKey_ = getDefaultInstance().getPublicKey();
        }

        public static TransactionAuthenticator parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TransactionAuthenticator) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionAuthenticator parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionAuthenticator) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionAuthenticator parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TransactionAuthenticator) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionAuthenticator parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionAuthenticator) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionAuthenticator parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TransactionAuthenticator) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionAuthenticator parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionAuthenticator) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionAuthenticator parseFrom(InputStream input) throws IOException {
            return (TransactionAuthenticator) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionAuthenticator parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionAuthenticator) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransactionAuthenticator parseDelimitedFrom(InputStream input) throws IOException {
            return (TransactionAuthenticator) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionAuthenticator parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionAuthenticator) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransactionAuthenticator parseFrom(CodedInputStream input) throws IOException {
            return (TransactionAuthenticator) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionAuthenticator parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionAuthenticator) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TransactionAuthenticator prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TransactionAuthenticator, Builder> implements TransactionAuthenticatorOrBuilder {
            /* synthetic */ Builder(C68061 c68061) {
                this();
            }

            private Builder() {
                super(TransactionAuthenticator.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Aptos.TransactionAuthenticatorOrBuilder
            public ByteString getSignature() {
                return ((TransactionAuthenticator) this.instance).getSignature();
            }

            public Builder setSignature(ByteString value) {
                copyOnWrite();
                ((TransactionAuthenticator) this.instance).setSignature(value);
                return this;
            }

            public Builder clearSignature() {
                copyOnWrite();
                ((TransactionAuthenticator) this.instance).clearSignature();
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.TransactionAuthenticatorOrBuilder
            public ByteString getPublicKey() {
                return ((TransactionAuthenticator) this.instance).getPublicKey();
            }

            public Builder setPublicKey(ByteString value) {
                copyOnWrite();
                ((TransactionAuthenticator) this.instance).setPublicKey(value);
                return this;
            }

            public Builder clearPublicKey() {
                copyOnWrite();
                ((TransactionAuthenticator) this.instance).clearPublicKey();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68061.f1787xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TransactionAuthenticator();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\n", new Object[]{"signature_", "publicKey_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TransactionAuthenticator> parser = PARSER;
                    if (parser == null) {
                        synchronized (TransactionAuthenticator.class) {
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
            TransactionAuthenticator transactionAuthenticator = new TransactionAuthenticator();
            DEFAULT_INSTANCE = transactionAuthenticator;
            GeneratedMessageLite.registerDefaultInstance(TransactionAuthenticator.class, transactionAuthenticator);
        }

        public static TransactionAuthenticator getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TransactionAuthenticator> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class SigningOutput extends GeneratedMessageLite<SigningOutput, Builder> implements SigningOutputOrBuilder {
        public static final int AUTHENTICATOR_FIELD_NUMBER = 2;
        private static final SigningOutput DEFAULT_INSTANCE;
        public static final int ENCODED_FIELD_NUMBER = 3;
        public static final int JSON_FIELD_NUMBER = 4;
        private static volatile Parser<SigningOutput> PARSER = null;
        public static final int RAW_TXN_FIELD_NUMBER = 1;
        private TransactionAuthenticator authenticator_;
        private ByteString encoded_;
        private String json_;
        private ByteString rawTxn_;

        private SigningOutput() {
            ByteString byteString = ByteString.EMPTY;
            this.rawTxn_ = byteString;
            this.encoded_ = byteString;
            this.json_ = "";
        }

        @Override // wallet.core.jni.proto.Aptos.SigningOutputOrBuilder
        public ByteString getRawTxn() {
            return this.rawTxn_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRawTxn(ByteString value) {
            value.getClass();
            this.rawTxn_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearRawTxn() {
            this.rawTxn_ = getDefaultInstance().getRawTxn();
        }

        @Override // wallet.core.jni.proto.Aptos.SigningOutputOrBuilder
        public boolean hasAuthenticator() {
            return this.authenticator_ != null;
        }

        @Override // wallet.core.jni.proto.Aptos.SigningOutputOrBuilder
        public TransactionAuthenticator getAuthenticator() {
            TransactionAuthenticator transactionAuthenticator = this.authenticator_;
            return transactionAuthenticator == null ? TransactionAuthenticator.getDefaultInstance() : transactionAuthenticator;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAuthenticator(TransactionAuthenticator value) {
            value.getClass();
            this.authenticator_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeAuthenticator(TransactionAuthenticator value) {
            value.getClass();
            TransactionAuthenticator transactionAuthenticator = this.authenticator_;
            if (transactionAuthenticator != null && transactionAuthenticator != TransactionAuthenticator.getDefaultInstance()) {
                this.authenticator_ = TransactionAuthenticator.newBuilder(this.authenticator_).mergeFrom((TransactionAuthenticator.Builder) value).buildPartial();
            } else {
                this.authenticator_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAuthenticator() {
            this.authenticator_ = null;
        }

        @Override // wallet.core.jni.proto.Aptos.SigningOutputOrBuilder
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

        @Override // wallet.core.jni.proto.Aptos.SigningOutputOrBuilder
        public String getJson() {
            return this.json_;
        }

        @Override // wallet.core.jni.proto.Aptos.SigningOutputOrBuilder
        public ByteString getJsonBytes() {
            return ByteString.copyFromUtf8(this.json_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setJson(String value) {
            value.getClass();
            this.json_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearJson() {
            this.json_ = getDefaultInstance().getJson();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setJsonBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.json_ = value.toStringUtf8();
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
            /* synthetic */ Builder(C68061 c68061) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Aptos.SigningOutputOrBuilder
            public ByteString getRawTxn() {
                return ((SigningOutput) this.instance).getRawTxn();
            }

            public Builder setRawTxn(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setRawTxn(value);
                return this;
            }

            public Builder clearRawTxn() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearRawTxn();
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.SigningOutputOrBuilder
            public boolean hasAuthenticator() {
                return ((SigningOutput) this.instance).hasAuthenticator();
            }

            @Override // wallet.core.jni.proto.Aptos.SigningOutputOrBuilder
            public TransactionAuthenticator getAuthenticator() {
                return ((SigningOutput) this.instance).getAuthenticator();
            }

            public Builder setAuthenticator(TransactionAuthenticator value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setAuthenticator(value);
                return this;
            }

            public Builder setAuthenticator(TransactionAuthenticator.Builder builderForValue) {
                copyOnWrite();
                ((SigningOutput) this.instance).setAuthenticator(builderForValue.build());
                return this;
            }

            public Builder mergeAuthenticator(TransactionAuthenticator value) {
                copyOnWrite();
                ((SigningOutput) this.instance).mergeAuthenticator(value);
                return this;
            }

            public Builder clearAuthenticator() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearAuthenticator();
                return this;
            }

            @Override // wallet.core.jni.proto.Aptos.SigningOutputOrBuilder
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

            @Override // wallet.core.jni.proto.Aptos.SigningOutputOrBuilder
            public String getJson() {
                return ((SigningOutput) this.instance).getJson();
            }

            @Override // wallet.core.jni.proto.Aptos.SigningOutputOrBuilder
            public ByteString getJsonBytes() {
                return ((SigningOutput) this.instance).getJsonBytes();
            }

            public Builder setJson(String value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setJson(value);
                return this;
            }

            public Builder clearJson() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearJson();
                return this;
            }

            public Builder setJsonBytes(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setJsonBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68061.f1787xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\n\u0002\t\u0003\n\u0004Ȉ", new Object[]{"rawTxn_", "authenticator_", "encoded_", "json_"});
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
