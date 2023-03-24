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
public final class NULS {

    /* loaded from: classes6.dex */
    public interface SignatureOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        int getPkeyLen();

        ByteString getPublicKey();

        int getSigLen();

        ByteString getSignature();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        ByteString getAmount();

        ByteString getBalance();

        int getChainId();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getFrom();

        ByteString getFromBytes();

        int getIdassetsId();

        ByteString getNonce();

        ByteString getPrivateKey();

        String getRemark();

        ByteString getRemarkBytes();

        int getTimestamp();

        String getTo();

        ByteString getToBytes();

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
    public interface TransactionCoinFromOrBuilder extends MessageLiteOrBuilder {
        int getAssetsChainid();

        int getAssetsId();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getFromAddress();

        ByteString getFromAddressBytes();

        ByteString getIdAmount();

        int getLocked();

        ByteString getNonce();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TransactionCoinToOrBuilder extends MessageLiteOrBuilder {
        int getAssetsChainid();

        int getAssetsId();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getIdAmount();

        int getLockTime();

        String getToAddress();

        ByteString getToAddressBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TransactionOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        int getHash();

        TransactionCoinFrom getInput();

        TransactionCoinTo getOutput();

        String getRemark();

        ByteString getRemarkBytes();

        int getTimestamp();

        ByteString getTxData();

        Signature getTxSigs();

        int getType();

        boolean hasInput();

        boolean hasOutput();

        boolean hasTxSigs();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private NULS() {
    }

    /* loaded from: classes6.dex */
    public static final class TransactionCoinFrom extends GeneratedMessageLite<TransactionCoinFrom, Builder> implements TransactionCoinFromOrBuilder {
        public static final int ASSETS_CHAINID_FIELD_NUMBER = 2;
        public static final int ASSETS_ID_FIELD_NUMBER = 3;
        private static final TransactionCoinFrom DEFAULT_INSTANCE;
        public static final int FROM_ADDRESS_FIELD_NUMBER = 1;
        public static final int ID_AMOUNT_FIELD_NUMBER = 4;
        public static final int LOCKED_FIELD_NUMBER = 6;
        public static final int NONCE_FIELD_NUMBER = 5;
        private static volatile Parser<TransactionCoinFrom> PARSER;
        private int assetsChainid_;
        private int assetsId_;
        private String fromAddress_ = "";
        private ByteString idAmount_;
        private int locked_;
        private ByteString nonce_;

        private TransactionCoinFrom() {
            ByteString byteString = ByteString.EMPTY;
            this.idAmount_ = byteString;
            this.nonce_ = byteString;
        }

        @Override // wallet.core.jni.proto.NULS.TransactionCoinFromOrBuilder
        public String getFromAddress() {
            return this.fromAddress_;
        }

        @Override // wallet.core.jni.proto.NULS.TransactionCoinFromOrBuilder
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

        @Override // wallet.core.jni.proto.NULS.TransactionCoinFromOrBuilder
        public int getAssetsChainid() {
            return this.assetsChainid_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAssetsChainid(int value) {
            this.assetsChainid_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAssetsChainid() {
            this.assetsChainid_ = 0;
        }

        @Override // wallet.core.jni.proto.NULS.TransactionCoinFromOrBuilder
        public int getAssetsId() {
            return this.assetsId_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAssetsId(int value) {
            this.assetsId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAssetsId() {
            this.assetsId_ = 0;
        }

        @Override // wallet.core.jni.proto.NULS.TransactionCoinFromOrBuilder
        public ByteString getIdAmount() {
            return this.idAmount_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setIdAmount(ByteString value) {
            value.getClass();
            this.idAmount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearIdAmount() {
            this.idAmount_ = getDefaultInstance().getIdAmount();
        }

        @Override // wallet.core.jni.proto.NULS.TransactionCoinFromOrBuilder
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

        @Override // wallet.core.jni.proto.NULS.TransactionCoinFromOrBuilder
        public int getLocked() {
            return this.locked_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLocked(int value) {
            this.locked_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearLocked() {
            this.locked_ = 0;
        }

        public static TransactionCoinFrom parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TransactionCoinFrom) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionCoinFrom parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionCoinFrom) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionCoinFrom parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TransactionCoinFrom) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionCoinFrom parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionCoinFrom) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionCoinFrom parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TransactionCoinFrom) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionCoinFrom parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionCoinFrom) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionCoinFrom parseFrom(InputStream input) throws IOException {
            return (TransactionCoinFrom) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionCoinFrom parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionCoinFrom) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransactionCoinFrom parseDelimitedFrom(InputStream input) throws IOException {
            return (TransactionCoinFrom) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionCoinFrom parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionCoinFrom) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransactionCoinFrom parseFrom(CodedInputStream input) throws IOException {
            return (TransactionCoinFrom) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionCoinFrom parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionCoinFrom) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TransactionCoinFrom prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TransactionCoinFrom, Builder> implements TransactionCoinFromOrBuilder {
            /* synthetic */ Builder(C67951 c67951) {
                this();
            }

            private Builder() {
                super(TransactionCoinFrom.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.NULS.TransactionCoinFromOrBuilder
            public String getFromAddress() {
                return ((TransactionCoinFrom) this.instance).getFromAddress();
            }

            @Override // wallet.core.jni.proto.NULS.TransactionCoinFromOrBuilder
            public ByteString getFromAddressBytes() {
                return ((TransactionCoinFrom) this.instance).getFromAddressBytes();
            }

            public Builder setFromAddress(String value) {
                copyOnWrite();
                ((TransactionCoinFrom) this.instance).setFromAddress(value);
                return this;
            }

            public Builder clearFromAddress() {
                copyOnWrite();
                ((TransactionCoinFrom) this.instance).clearFromAddress();
                return this;
            }

            public Builder setFromAddressBytes(ByteString value) {
                copyOnWrite();
                ((TransactionCoinFrom) this.instance).setFromAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.NULS.TransactionCoinFromOrBuilder
            public int getAssetsChainid() {
                return ((TransactionCoinFrom) this.instance).getAssetsChainid();
            }

            public Builder setAssetsChainid(int value) {
                copyOnWrite();
                ((TransactionCoinFrom) this.instance).setAssetsChainid(value);
                return this;
            }

            public Builder clearAssetsChainid() {
                copyOnWrite();
                ((TransactionCoinFrom) this.instance).clearAssetsChainid();
                return this;
            }

            @Override // wallet.core.jni.proto.NULS.TransactionCoinFromOrBuilder
            public int getAssetsId() {
                return ((TransactionCoinFrom) this.instance).getAssetsId();
            }

            public Builder setAssetsId(int value) {
                copyOnWrite();
                ((TransactionCoinFrom) this.instance).setAssetsId(value);
                return this;
            }

            public Builder clearAssetsId() {
                copyOnWrite();
                ((TransactionCoinFrom) this.instance).clearAssetsId();
                return this;
            }

            @Override // wallet.core.jni.proto.NULS.TransactionCoinFromOrBuilder
            public ByteString getIdAmount() {
                return ((TransactionCoinFrom) this.instance).getIdAmount();
            }

            public Builder setIdAmount(ByteString value) {
                copyOnWrite();
                ((TransactionCoinFrom) this.instance).setIdAmount(value);
                return this;
            }

            public Builder clearIdAmount() {
                copyOnWrite();
                ((TransactionCoinFrom) this.instance).clearIdAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.NULS.TransactionCoinFromOrBuilder
            public ByteString getNonce() {
                return ((TransactionCoinFrom) this.instance).getNonce();
            }

            public Builder setNonce(ByteString value) {
                copyOnWrite();
                ((TransactionCoinFrom) this.instance).setNonce(value);
                return this;
            }

            public Builder clearNonce() {
                copyOnWrite();
                ((TransactionCoinFrom) this.instance).clearNonce();
                return this;
            }

            @Override // wallet.core.jni.proto.NULS.TransactionCoinFromOrBuilder
            public int getLocked() {
                return ((TransactionCoinFrom) this.instance).getLocked();
            }

            public Builder setLocked(int value) {
                copyOnWrite();
                ((TransactionCoinFrom) this.instance).setLocked(value);
                return this;
            }

            public Builder clearLocked() {
                copyOnWrite();
                ((TransactionCoinFrom) this.instance).clearLocked();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67951.f1883xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TransactionCoinFrom();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001Ȉ\u0002\u000b\u0003\u000b\u0004\n\u0005\n\u0006\u000b", new Object[]{"fromAddress_", "assetsChainid_", "assetsId_", "idAmount_", "nonce_", "locked_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TransactionCoinFrom> parser = PARSER;
                    if (parser == null) {
                        synchronized (TransactionCoinFrom.class) {
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
            TransactionCoinFrom transactionCoinFrom = new TransactionCoinFrom();
            DEFAULT_INSTANCE = transactionCoinFrom;
            GeneratedMessageLite.registerDefaultInstance(TransactionCoinFrom.class, transactionCoinFrom);
        }

        public static TransactionCoinFrom getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TransactionCoinFrom> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* renamed from: wallet.core.jni.proto.NULS$1 */
    /* loaded from: classes6.dex */
    static /* synthetic */ class C67951 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f1883xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f1883xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1883xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1883xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1883xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1883xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1883xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1883xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class TransactionCoinTo extends GeneratedMessageLite<TransactionCoinTo, Builder> implements TransactionCoinToOrBuilder {
        public static final int ASSETS_CHAINID_FIELD_NUMBER = 2;
        public static final int ASSETS_ID_FIELD_NUMBER = 3;
        private static final TransactionCoinTo DEFAULT_INSTANCE;
        public static final int ID_AMOUNT_FIELD_NUMBER = 4;
        public static final int LOCK_TIME_FIELD_NUMBER = 5;
        private static volatile Parser<TransactionCoinTo> PARSER = null;
        public static final int TO_ADDRESS_FIELD_NUMBER = 1;
        private int assetsChainid_;
        private int assetsId_;
        private int lockTime_;
        private String toAddress_ = "";
        private ByteString idAmount_ = ByteString.EMPTY;

        private TransactionCoinTo() {
        }

        @Override // wallet.core.jni.proto.NULS.TransactionCoinToOrBuilder
        public String getToAddress() {
            return this.toAddress_;
        }

        @Override // wallet.core.jni.proto.NULS.TransactionCoinToOrBuilder
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

        @Override // wallet.core.jni.proto.NULS.TransactionCoinToOrBuilder
        public int getAssetsChainid() {
            return this.assetsChainid_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAssetsChainid(int value) {
            this.assetsChainid_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAssetsChainid() {
            this.assetsChainid_ = 0;
        }

        @Override // wallet.core.jni.proto.NULS.TransactionCoinToOrBuilder
        public int getAssetsId() {
            return this.assetsId_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAssetsId(int value) {
            this.assetsId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAssetsId() {
            this.assetsId_ = 0;
        }

        @Override // wallet.core.jni.proto.NULS.TransactionCoinToOrBuilder
        public ByteString getIdAmount() {
            return this.idAmount_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setIdAmount(ByteString value) {
            value.getClass();
            this.idAmount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearIdAmount() {
            this.idAmount_ = getDefaultInstance().getIdAmount();
        }

        @Override // wallet.core.jni.proto.NULS.TransactionCoinToOrBuilder
        public int getLockTime() {
            return this.lockTime_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLockTime(int value) {
            this.lockTime_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearLockTime() {
            this.lockTime_ = 0;
        }

        public static TransactionCoinTo parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TransactionCoinTo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionCoinTo parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionCoinTo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionCoinTo parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TransactionCoinTo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionCoinTo parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionCoinTo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionCoinTo parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TransactionCoinTo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionCoinTo parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionCoinTo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionCoinTo parseFrom(InputStream input) throws IOException {
            return (TransactionCoinTo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionCoinTo parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionCoinTo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransactionCoinTo parseDelimitedFrom(InputStream input) throws IOException {
            return (TransactionCoinTo) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionCoinTo parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionCoinTo) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransactionCoinTo parseFrom(CodedInputStream input) throws IOException {
            return (TransactionCoinTo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionCoinTo parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionCoinTo) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TransactionCoinTo prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TransactionCoinTo, Builder> implements TransactionCoinToOrBuilder {
            /* synthetic */ Builder(C67951 c67951) {
                this();
            }

            private Builder() {
                super(TransactionCoinTo.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.NULS.TransactionCoinToOrBuilder
            public String getToAddress() {
                return ((TransactionCoinTo) this.instance).getToAddress();
            }

            @Override // wallet.core.jni.proto.NULS.TransactionCoinToOrBuilder
            public ByteString getToAddressBytes() {
                return ((TransactionCoinTo) this.instance).getToAddressBytes();
            }

            public Builder setToAddress(String value) {
                copyOnWrite();
                ((TransactionCoinTo) this.instance).setToAddress(value);
                return this;
            }

            public Builder clearToAddress() {
                copyOnWrite();
                ((TransactionCoinTo) this.instance).clearToAddress();
                return this;
            }

            public Builder setToAddressBytes(ByteString value) {
                copyOnWrite();
                ((TransactionCoinTo) this.instance).setToAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.NULS.TransactionCoinToOrBuilder
            public int getAssetsChainid() {
                return ((TransactionCoinTo) this.instance).getAssetsChainid();
            }

            public Builder setAssetsChainid(int value) {
                copyOnWrite();
                ((TransactionCoinTo) this.instance).setAssetsChainid(value);
                return this;
            }

            public Builder clearAssetsChainid() {
                copyOnWrite();
                ((TransactionCoinTo) this.instance).clearAssetsChainid();
                return this;
            }

            @Override // wallet.core.jni.proto.NULS.TransactionCoinToOrBuilder
            public int getAssetsId() {
                return ((TransactionCoinTo) this.instance).getAssetsId();
            }

            public Builder setAssetsId(int value) {
                copyOnWrite();
                ((TransactionCoinTo) this.instance).setAssetsId(value);
                return this;
            }

            public Builder clearAssetsId() {
                copyOnWrite();
                ((TransactionCoinTo) this.instance).clearAssetsId();
                return this;
            }

            @Override // wallet.core.jni.proto.NULS.TransactionCoinToOrBuilder
            public ByteString getIdAmount() {
                return ((TransactionCoinTo) this.instance).getIdAmount();
            }

            public Builder setIdAmount(ByteString value) {
                copyOnWrite();
                ((TransactionCoinTo) this.instance).setIdAmount(value);
                return this;
            }

            public Builder clearIdAmount() {
                copyOnWrite();
                ((TransactionCoinTo) this.instance).clearIdAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.NULS.TransactionCoinToOrBuilder
            public int getLockTime() {
                return ((TransactionCoinTo) this.instance).getLockTime();
            }

            public Builder setLockTime(int value) {
                copyOnWrite();
                ((TransactionCoinTo) this.instance).setLockTime(value);
                return this;
            }

            public Builder clearLockTime() {
                copyOnWrite();
                ((TransactionCoinTo) this.instance).clearLockTime();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67951.f1883xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TransactionCoinTo();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001Ȉ\u0002\u000b\u0003\u000b\u0004\n\u0005\u000b", new Object[]{"toAddress_", "assetsChainid_", "assetsId_", "idAmount_", "lockTime_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TransactionCoinTo> parser = PARSER;
                    if (parser == null) {
                        synchronized (TransactionCoinTo.class) {
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
            TransactionCoinTo transactionCoinTo = new TransactionCoinTo();
            DEFAULT_INSTANCE = transactionCoinTo;
            GeneratedMessageLite.registerDefaultInstance(TransactionCoinTo.class, transactionCoinTo);
        }

        public static TransactionCoinTo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TransactionCoinTo> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class Signature extends GeneratedMessageLite<Signature, Builder> implements SignatureOrBuilder {
        private static final Signature DEFAULT_INSTANCE;
        private static volatile Parser<Signature> PARSER = null;
        public static final int PKEY_LEN_FIELD_NUMBER = 1;
        public static final int PUBLIC_KEY_FIELD_NUMBER = 2;
        public static final int SIGNATURE_FIELD_NUMBER = 4;
        public static final int SIG_LEN_FIELD_NUMBER = 3;
        private int pkeyLen_;
        private ByteString publicKey_;
        private int sigLen_;
        private ByteString signature_;

        private Signature() {
            ByteString byteString = ByteString.EMPTY;
            this.publicKey_ = byteString;
            this.signature_ = byteString;
        }

        @Override // wallet.core.jni.proto.NULS.SignatureOrBuilder
        public int getPkeyLen() {
            return this.pkeyLen_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPkeyLen(int value) {
            this.pkeyLen_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPkeyLen() {
            this.pkeyLen_ = 0;
        }

        @Override // wallet.core.jni.proto.NULS.SignatureOrBuilder
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

        @Override // wallet.core.jni.proto.NULS.SignatureOrBuilder
        public int getSigLen() {
            return this.sigLen_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSigLen(int value) {
            this.sigLen_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSigLen() {
            this.sigLen_ = 0;
        }

        @Override // wallet.core.jni.proto.NULS.SignatureOrBuilder
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

        public static Signature parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (Signature) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Signature parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Signature) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Signature parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (Signature) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Signature parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Signature) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Signature parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (Signature) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Signature parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Signature) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Signature parseFrom(InputStream input) throws IOException {
            return (Signature) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Signature parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Signature) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Signature parseDelimitedFrom(InputStream input) throws IOException {
            return (Signature) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static Signature parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Signature) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Signature parseFrom(CodedInputStream input) throws IOException {
            return (Signature) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Signature parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Signature) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(Signature prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Signature, Builder> implements SignatureOrBuilder {
            /* synthetic */ Builder(C67951 c67951) {
                this();
            }

            private Builder() {
                super(Signature.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.NULS.SignatureOrBuilder
            public int getPkeyLen() {
                return ((Signature) this.instance).getPkeyLen();
            }

            public Builder setPkeyLen(int value) {
                copyOnWrite();
                ((Signature) this.instance).setPkeyLen(value);
                return this;
            }

            public Builder clearPkeyLen() {
                copyOnWrite();
                ((Signature) this.instance).clearPkeyLen();
                return this;
            }

            @Override // wallet.core.jni.proto.NULS.SignatureOrBuilder
            public ByteString getPublicKey() {
                return ((Signature) this.instance).getPublicKey();
            }

            public Builder setPublicKey(ByteString value) {
                copyOnWrite();
                ((Signature) this.instance).setPublicKey(value);
                return this;
            }

            public Builder clearPublicKey() {
                copyOnWrite();
                ((Signature) this.instance).clearPublicKey();
                return this;
            }

            @Override // wallet.core.jni.proto.NULS.SignatureOrBuilder
            public int getSigLen() {
                return ((Signature) this.instance).getSigLen();
            }

            public Builder setSigLen(int value) {
                copyOnWrite();
                ((Signature) this.instance).setSigLen(value);
                return this;
            }

            public Builder clearSigLen() {
                copyOnWrite();
                ((Signature) this.instance).clearSigLen();
                return this;
            }

            @Override // wallet.core.jni.proto.NULS.SignatureOrBuilder
            public ByteString getSignature() {
                return ((Signature) this.instance).getSignature();
            }

            public Builder setSignature(ByteString value) {
                copyOnWrite();
                ((Signature) this.instance).setSignature(value);
                return this;
            }

            public Builder clearSignature() {
                copyOnWrite();
                ((Signature) this.instance).clearSignature();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67951.f1883xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Signature();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\n\u0003\u000b\u0004\n", new Object[]{"pkeyLen_", "publicKey_", "sigLen_", "signature_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Signature> parser = PARSER;
                    if (parser == null) {
                        synchronized (Signature.class) {
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
            Signature signature = new Signature();
            DEFAULT_INSTANCE = signature;
            GeneratedMessageLite.registerDefaultInstance(Signature.class, signature);
        }

        public static Signature getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Signature> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class Transaction extends GeneratedMessageLite<Transaction, Builder> implements TransactionOrBuilder {
        private static final Transaction DEFAULT_INSTANCE;
        public static final int HASH_FIELD_NUMBER = 8;
        public static final int INPUT_FIELD_NUMBER = 5;
        public static final int OUTPUT_FIELD_NUMBER = 6;
        private static volatile Parser<Transaction> PARSER = null;
        public static final int REMARK_FIELD_NUMBER = 3;
        public static final int TIMESTAMP_FIELD_NUMBER = 2;
        public static final int TX_DATA_FIELD_NUMBER = 4;
        public static final int TX_SIGS_FIELD_NUMBER = 7;
        public static final int TYPE_FIELD_NUMBER = 1;
        private int hash_;
        private TransactionCoinFrom input_;
        private TransactionCoinTo output_;
        private int timestamp_;
        private Signature txSigs_;
        private int type_;
        private String remark_ = "";
        private ByteString txData_ = ByteString.EMPTY;

        private Transaction() {
        }

        @Override // wallet.core.jni.proto.NULS.TransactionOrBuilder
        public int getType() {
            return this.type_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setType(int value) {
            this.type_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearType() {
            this.type_ = 0;
        }

        @Override // wallet.core.jni.proto.NULS.TransactionOrBuilder
        public int getTimestamp() {
            return this.timestamp_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTimestamp(int value) {
            this.timestamp_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTimestamp() {
            this.timestamp_ = 0;
        }

        @Override // wallet.core.jni.proto.NULS.TransactionOrBuilder
        public String getRemark() {
            return this.remark_;
        }

        @Override // wallet.core.jni.proto.NULS.TransactionOrBuilder
        public ByteString getRemarkBytes() {
            return ByteString.copyFromUtf8(this.remark_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRemark(String value) {
            value.getClass();
            this.remark_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearRemark() {
            this.remark_ = getDefaultInstance().getRemark();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRemarkBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.remark_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.NULS.TransactionOrBuilder
        public ByteString getTxData() {
            return this.txData_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTxData(ByteString value) {
            value.getClass();
            this.txData_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTxData() {
            this.txData_ = getDefaultInstance().getTxData();
        }

        @Override // wallet.core.jni.proto.NULS.TransactionOrBuilder
        public boolean hasInput() {
            return this.input_ != null;
        }

        @Override // wallet.core.jni.proto.NULS.TransactionOrBuilder
        public TransactionCoinFrom getInput() {
            TransactionCoinFrom transactionCoinFrom = this.input_;
            return transactionCoinFrom == null ? TransactionCoinFrom.getDefaultInstance() : transactionCoinFrom;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setInput(TransactionCoinFrom value) {
            value.getClass();
            this.input_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeInput(TransactionCoinFrom value) {
            value.getClass();
            TransactionCoinFrom transactionCoinFrom = this.input_;
            if (transactionCoinFrom != null && transactionCoinFrom != TransactionCoinFrom.getDefaultInstance()) {
                this.input_ = TransactionCoinFrom.newBuilder(this.input_).mergeFrom((TransactionCoinFrom.Builder) value).buildPartial();
            } else {
                this.input_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearInput() {
            this.input_ = null;
        }

        @Override // wallet.core.jni.proto.NULS.TransactionOrBuilder
        public boolean hasOutput() {
            return this.output_ != null;
        }

        @Override // wallet.core.jni.proto.NULS.TransactionOrBuilder
        public TransactionCoinTo getOutput() {
            TransactionCoinTo transactionCoinTo = this.output_;
            return transactionCoinTo == null ? TransactionCoinTo.getDefaultInstance() : transactionCoinTo;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOutput(TransactionCoinTo value) {
            value.getClass();
            this.output_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeOutput(TransactionCoinTo value) {
            value.getClass();
            TransactionCoinTo transactionCoinTo = this.output_;
            if (transactionCoinTo != null && transactionCoinTo != TransactionCoinTo.getDefaultInstance()) {
                this.output_ = TransactionCoinTo.newBuilder(this.output_).mergeFrom((TransactionCoinTo.Builder) value).buildPartial();
            } else {
                this.output_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOutput() {
            this.output_ = null;
        }

        @Override // wallet.core.jni.proto.NULS.TransactionOrBuilder
        public boolean hasTxSigs() {
            return this.txSigs_ != null;
        }

        @Override // wallet.core.jni.proto.NULS.TransactionOrBuilder
        public Signature getTxSigs() {
            Signature signature = this.txSigs_;
            return signature == null ? Signature.getDefaultInstance() : signature;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTxSigs(Signature value) {
            value.getClass();
            this.txSigs_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTxSigs(Signature value) {
            value.getClass();
            Signature signature = this.txSigs_;
            if (signature != null && signature != Signature.getDefaultInstance()) {
                this.txSigs_ = Signature.newBuilder(this.txSigs_).mergeFrom((Signature.Builder) value).buildPartial();
            } else {
                this.txSigs_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTxSigs() {
            this.txSigs_ = null;
        }

        @Override // wallet.core.jni.proto.NULS.TransactionOrBuilder
        public int getHash() {
            return this.hash_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setHash(int value) {
            this.hash_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearHash() {
            this.hash_ = 0;
        }

        public static Transaction parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (Transaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Transaction parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Transaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Transaction parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (Transaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Transaction parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Transaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Transaction parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (Transaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Transaction parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Transaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Transaction parseFrom(InputStream input) throws IOException {
            return (Transaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Transaction parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Transaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Transaction parseDelimitedFrom(InputStream input) throws IOException {
            return (Transaction) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static Transaction parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Transaction) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Transaction parseFrom(CodedInputStream input) throws IOException {
            return (Transaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Transaction parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Transaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(Transaction prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Transaction, Builder> implements TransactionOrBuilder {
            /* synthetic */ Builder(C67951 c67951) {
                this();
            }

            private Builder() {
                super(Transaction.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.NULS.TransactionOrBuilder
            public int getType() {
                return ((Transaction) this.instance).getType();
            }

            public Builder setType(int value) {
                copyOnWrite();
                ((Transaction) this.instance).setType(value);
                return this;
            }

            public Builder clearType() {
                copyOnWrite();
                ((Transaction) this.instance).clearType();
                return this;
            }

            @Override // wallet.core.jni.proto.NULS.TransactionOrBuilder
            public int getTimestamp() {
                return ((Transaction) this.instance).getTimestamp();
            }

            public Builder setTimestamp(int value) {
                copyOnWrite();
                ((Transaction) this.instance).setTimestamp(value);
                return this;
            }

            public Builder clearTimestamp() {
                copyOnWrite();
                ((Transaction) this.instance).clearTimestamp();
                return this;
            }

            @Override // wallet.core.jni.proto.NULS.TransactionOrBuilder
            public String getRemark() {
                return ((Transaction) this.instance).getRemark();
            }

            @Override // wallet.core.jni.proto.NULS.TransactionOrBuilder
            public ByteString getRemarkBytes() {
                return ((Transaction) this.instance).getRemarkBytes();
            }

            public Builder setRemark(String value) {
                copyOnWrite();
                ((Transaction) this.instance).setRemark(value);
                return this;
            }

            public Builder clearRemark() {
                copyOnWrite();
                ((Transaction) this.instance).clearRemark();
                return this;
            }

            public Builder setRemarkBytes(ByteString value) {
                copyOnWrite();
                ((Transaction) this.instance).setRemarkBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.NULS.TransactionOrBuilder
            public ByteString getTxData() {
                return ((Transaction) this.instance).getTxData();
            }

            public Builder setTxData(ByteString value) {
                copyOnWrite();
                ((Transaction) this.instance).setTxData(value);
                return this;
            }

            public Builder clearTxData() {
                copyOnWrite();
                ((Transaction) this.instance).clearTxData();
                return this;
            }

            @Override // wallet.core.jni.proto.NULS.TransactionOrBuilder
            public boolean hasInput() {
                return ((Transaction) this.instance).hasInput();
            }

            @Override // wallet.core.jni.proto.NULS.TransactionOrBuilder
            public TransactionCoinFrom getInput() {
                return ((Transaction) this.instance).getInput();
            }

            public Builder setInput(TransactionCoinFrom value) {
                copyOnWrite();
                ((Transaction) this.instance).setInput(value);
                return this;
            }

            public Builder setInput(TransactionCoinFrom.Builder builderForValue) {
                copyOnWrite();
                ((Transaction) this.instance).setInput(builderForValue.build());
                return this;
            }

            public Builder mergeInput(TransactionCoinFrom value) {
                copyOnWrite();
                ((Transaction) this.instance).mergeInput(value);
                return this;
            }

            public Builder clearInput() {
                copyOnWrite();
                ((Transaction) this.instance).clearInput();
                return this;
            }

            @Override // wallet.core.jni.proto.NULS.TransactionOrBuilder
            public boolean hasOutput() {
                return ((Transaction) this.instance).hasOutput();
            }

            @Override // wallet.core.jni.proto.NULS.TransactionOrBuilder
            public TransactionCoinTo getOutput() {
                return ((Transaction) this.instance).getOutput();
            }

            public Builder setOutput(TransactionCoinTo value) {
                copyOnWrite();
                ((Transaction) this.instance).setOutput(value);
                return this;
            }

            public Builder setOutput(TransactionCoinTo.Builder builderForValue) {
                copyOnWrite();
                ((Transaction) this.instance).setOutput(builderForValue.build());
                return this;
            }

            public Builder mergeOutput(TransactionCoinTo value) {
                copyOnWrite();
                ((Transaction) this.instance).mergeOutput(value);
                return this;
            }

            public Builder clearOutput() {
                copyOnWrite();
                ((Transaction) this.instance).clearOutput();
                return this;
            }

            @Override // wallet.core.jni.proto.NULS.TransactionOrBuilder
            public boolean hasTxSigs() {
                return ((Transaction) this.instance).hasTxSigs();
            }

            @Override // wallet.core.jni.proto.NULS.TransactionOrBuilder
            public Signature getTxSigs() {
                return ((Transaction) this.instance).getTxSigs();
            }

            public Builder setTxSigs(Signature value) {
                copyOnWrite();
                ((Transaction) this.instance).setTxSigs(value);
                return this;
            }

            public Builder setTxSigs(Signature.Builder builderForValue) {
                copyOnWrite();
                ((Transaction) this.instance).setTxSigs(builderForValue.build());
                return this;
            }

            public Builder mergeTxSigs(Signature value) {
                copyOnWrite();
                ((Transaction) this.instance).mergeTxSigs(value);
                return this;
            }

            public Builder clearTxSigs() {
                copyOnWrite();
                ((Transaction) this.instance).clearTxSigs();
                return this;
            }

            @Override // wallet.core.jni.proto.NULS.TransactionOrBuilder
            public int getHash() {
                return ((Transaction) this.instance).getHash();
            }

            public Builder setHash(int value) {
                copyOnWrite();
                ((Transaction) this.instance).setHash(value);
                return this;
            }

            public Builder clearHash() {
                copyOnWrite();
                ((Transaction) this.instance).clearHash();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67951.f1883xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Transaction();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\b\u0000\u0000\u0001\b\b\u0000\u0000\u0000\u0001\u000b\u0002\u000b\u0003Ȉ\u0004\n\u0005\t\u0006\t\u0007\t\b\u000b", new Object[]{"type_", "timestamp_", "remark_", "txData_", "input_", "output_", "txSigs_", "hash_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Transaction> parser = PARSER;
                    if (parser == null) {
                        synchronized (Transaction.class) {
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
            Transaction transaction = new Transaction();
            DEFAULT_INSTANCE = transaction;
            GeneratedMessageLite.registerDefaultInstance(Transaction.class, transaction);
        }

        public static Transaction getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Transaction> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 4;
        public static final int BALANCE_FIELD_NUMBER = 9;
        public static final int CHAIN_ID_FIELD_NUMBER = 5;
        private static final SigningInput DEFAULT_INSTANCE;
        public static final int FROM_FIELD_NUMBER = 2;
        public static final int IDASSETS_ID_FIELD_NUMBER = 6;
        public static final int NONCE_FIELD_NUMBER = 7;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PRIVATE_KEY_FIELD_NUMBER = 1;
        public static final int REMARK_FIELD_NUMBER = 8;
        public static final int TIMESTAMP_FIELD_NUMBER = 10;
        public static final int TO_FIELD_NUMBER = 3;
        private ByteString amount_;
        private ByteString balance_;
        private int chainId_;
        private String from_;
        private int idassetsId_;
        private ByteString nonce_;
        private ByteString privateKey_;
        private String remark_;
        private int timestamp_;
        private String to_;

        private SigningInput() {
            ByteString byteString = ByteString.EMPTY;
            this.privateKey_ = byteString;
            this.from_ = "";
            this.to_ = "";
            this.amount_ = byteString;
            this.nonce_ = byteString;
            this.remark_ = "";
            this.balance_ = byteString;
        }

        @Override // wallet.core.jni.proto.NULS.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.NULS.SigningInputOrBuilder
        public String getFrom() {
            return this.from_;
        }

        @Override // wallet.core.jni.proto.NULS.SigningInputOrBuilder
        public ByteString getFromBytes() {
            return ByteString.copyFromUtf8(this.from_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFrom(String value) {
            value.getClass();
            this.from_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFrom() {
            this.from_ = getDefaultInstance().getFrom();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFromBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.from_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.NULS.SigningInputOrBuilder
        public String getTo() {
            return this.to_;
        }

        @Override // wallet.core.jni.proto.NULS.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.NULS.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.NULS.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.NULS.SigningInputOrBuilder
        public int getIdassetsId() {
            return this.idassetsId_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setIdassetsId(int value) {
            this.idassetsId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearIdassetsId() {
            this.idassetsId_ = 0;
        }

        @Override // wallet.core.jni.proto.NULS.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.NULS.SigningInputOrBuilder
        public String getRemark() {
            return this.remark_;
        }

        @Override // wallet.core.jni.proto.NULS.SigningInputOrBuilder
        public ByteString getRemarkBytes() {
            return ByteString.copyFromUtf8(this.remark_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRemark(String value) {
            value.getClass();
            this.remark_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearRemark() {
            this.remark_ = getDefaultInstance().getRemark();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRemarkBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.remark_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.NULS.SigningInputOrBuilder
        public ByteString getBalance() {
            return this.balance_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBalance(ByteString value) {
            value.getClass();
            this.balance_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearBalance() {
            this.balance_ = getDefaultInstance().getBalance();
        }

        @Override // wallet.core.jni.proto.NULS.SigningInputOrBuilder
        public int getTimestamp() {
            return this.timestamp_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTimestamp(int value) {
            this.timestamp_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTimestamp() {
            this.timestamp_ = 0;
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
            /* synthetic */ Builder(C67951 c67951) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.NULS.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.NULS.SigningInputOrBuilder
            public String getFrom() {
                return ((SigningInput) this.instance).getFrom();
            }

            @Override // wallet.core.jni.proto.NULS.SigningInputOrBuilder
            public ByteString getFromBytes() {
                return ((SigningInput) this.instance).getFromBytes();
            }

            public Builder setFrom(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setFrom(value);
                return this;
            }

            public Builder clearFrom() {
                copyOnWrite();
                ((SigningInput) this.instance).clearFrom();
                return this;
            }

            public Builder setFromBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setFromBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.NULS.SigningInputOrBuilder
            public String getTo() {
                return ((SigningInput) this.instance).getTo();
            }

            @Override // wallet.core.jni.proto.NULS.SigningInputOrBuilder
            public ByteString getToBytes() {
                return ((SigningInput) this.instance).getToBytes();
            }

            public Builder setTo(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setTo(value);
                return this;
            }

            public Builder clearTo() {
                copyOnWrite();
                ((SigningInput) this.instance).clearTo();
                return this;
            }

            public Builder setToBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setToBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.NULS.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.NULS.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.NULS.SigningInputOrBuilder
            public int getIdassetsId() {
                return ((SigningInput) this.instance).getIdassetsId();
            }

            public Builder setIdassetsId(int value) {
                copyOnWrite();
                ((SigningInput) this.instance).setIdassetsId(value);
                return this;
            }

            public Builder clearIdassetsId() {
                copyOnWrite();
                ((SigningInput) this.instance).clearIdassetsId();
                return this;
            }

            @Override // wallet.core.jni.proto.NULS.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.NULS.SigningInputOrBuilder
            public String getRemark() {
                return ((SigningInput) this.instance).getRemark();
            }

            @Override // wallet.core.jni.proto.NULS.SigningInputOrBuilder
            public ByteString getRemarkBytes() {
                return ((SigningInput) this.instance).getRemarkBytes();
            }

            public Builder setRemark(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setRemark(value);
                return this;
            }

            public Builder clearRemark() {
                copyOnWrite();
                ((SigningInput) this.instance).clearRemark();
                return this;
            }

            public Builder setRemarkBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setRemarkBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.NULS.SigningInputOrBuilder
            public ByteString getBalance() {
                return ((SigningInput) this.instance).getBalance();
            }

            public Builder setBalance(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setBalance(value);
                return this;
            }

            public Builder clearBalance() {
                copyOnWrite();
                ((SigningInput) this.instance).clearBalance();
                return this;
            }

            @Override // wallet.core.jni.proto.NULS.SigningInputOrBuilder
            public int getTimestamp() {
                return ((SigningInput) this.instance).getTimestamp();
            }

            public Builder setTimestamp(int value) {
                copyOnWrite();
                ((SigningInput) this.instance).setTimestamp(value);
                return this;
            }

            public Builder clearTimestamp() {
                copyOnWrite();
                ((SigningInput) this.instance).clearTimestamp();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67951.f1883xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\n\u0000\u0000\u0001\n\n\u0000\u0000\u0000\u0001\n\u0002Ȉ\u0003Ȉ\u0004\n\u0005\u000b\u0006\u000b\u0007\n\bȈ\t\n\n\u000b", new Object[]{"privateKey_", "from_", "to_", "amount_", "chainId_", "idassetsId_", "nonce_", "remark_", "balance_", "timestamp_"});
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

        @Override // wallet.core.jni.proto.NULS.SigningOutputOrBuilder
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
            /* synthetic */ Builder(C67951 c67951) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.NULS.SigningOutputOrBuilder
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
            switch (C67951.f1883xa1df5c61[method.ordinal()]) {
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
