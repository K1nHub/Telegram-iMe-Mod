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
public final class MultiversX {

    /* loaded from: classes6.dex */
    public interface AccountsOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getReceiver();

        ByteString getReceiverBytes();

        String getReceiverUsername();

        ByteString getReceiverUsernameBytes();

        String getSender();

        ByteString getSenderBytes();

        long getSenderNonce();

        String getSenderUsername();

        ByteString getSenderUsernameBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface EGLDTransferOrBuilder extends MessageLiteOrBuilder {
        Accounts getAccounts();

        String getAmount();

        ByteString getAmountBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        boolean hasAccounts();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface ESDTNFTTransferOrBuilder extends MessageLiteOrBuilder {
        Accounts getAccounts();

        String getAmount();

        ByteString getAmountBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getTokenCollection();

        ByteString getTokenCollectionBytes();

        long getTokenNonce();

        boolean hasAccounts();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface ESDTTransferOrBuilder extends MessageLiteOrBuilder {
        Accounts getAccounts();

        String getAmount();

        ByteString getAmountBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getTokenIdentifier();

        ByteString getTokenIdentifierBytes();

        boolean hasAccounts();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface GenericActionOrBuilder extends MessageLiteOrBuilder {
        Accounts getAccounts();

        String getData();

        ByteString getDataBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        int getOptions();

        String getValue();

        ByteString getValueBytes();

        int getVersion();

        boolean hasAccounts();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        String getChainId();

        ByteString getChainIdBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        EGLDTransfer getEgldTransfer();

        ESDTTransfer getEsdtTransfer();

        ESDTNFTTransfer getEsdtnftTransfer();

        long getGasLimit();

        long getGasPrice();

        GenericAction getGenericAction();

        SigningInput.MessageOneofCase getMessageOneofCase();

        ByteString getPrivateKey();

        boolean hasEgldTransfer();

        boolean hasEsdtTransfer();

        boolean hasEsdtnftTransfer();

        boolean hasGenericAction();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
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

    private MultiversX() {
    }

    /* loaded from: classes6.dex */
    public static final class GenericAction extends GeneratedMessageLite<GenericAction, Builder> implements GenericActionOrBuilder {
        public static final int ACCOUNTS_FIELD_NUMBER = 1;
        public static final int DATA_FIELD_NUMBER = 3;
        private static final GenericAction DEFAULT_INSTANCE;
        public static final int OPTIONS_FIELD_NUMBER = 5;
        private static volatile Parser<GenericAction> PARSER = null;
        public static final int VALUE_FIELD_NUMBER = 2;
        public static final int VERSION_FIELD_NUMBER = 4;
        private Accounts accounts_;
        private int options_;
        private int version_;
        private String value_ = "";
        private String data_ = "";

        private GenericAction() {
        }

        @Override // wallet.core.jni.proto.MultiversX.GenericActionOrBuilder
        public boolean hasAccounts() {
            return this.accounts_ != null;
        }

        @Override // wallet.core.jni.proto.MultiversX.GenericActionOrBuilder
        public Accounts getAccounts() {
            Accounts accounts = this.accounts_;
            return accounts == null ? Accounts.getDefaultInstance() : accounts;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAccounts(Accounts value) {
            value.getClass();
            this.accounts_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeAccounts(Accounts value) {
            value.getClass();
            Accounts accounts = this.accounts_;
            if (accounts != null && accounts != Accounts.getDefaultInstance()) {
                this.accounts_ = Accounts.newBuilder(this.accounts_).mergeFrom((Accounts.Builder) value).buildPartial();
            } else {
                this.accounts_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAccounts() {
            this.accounts_ = null;
        }

        @Override // wallet.core.jni.proto.MultiversX.GenericActionOrBuilder
        public String getValue() {
            return this.value_;
        }

        @Override // wallet.core.jni.proto.MultiversX.GenericActionOrBuilder
        public ByteString getValueBytes() {
            return ByteString.copyFromUtf8(this.value_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setValue(String value) {
            value.getClass();
            this.value_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearValue() {
            this.value_ = getDefaultInstance().getValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setValueBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.value_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.MultiversX.GenericActionOrBuilder
        public String getData() {
            return this.data_;
        }

        @Override // wallet.core.jni.proto.MultiversX.GenericActionOrBuilder
        public ByteString getDataBytes() {
            return ByteString.copyFromUtf8(this.data_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setData(String value) {
            value.getClass();
            this.data_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearData() {
            this.data_ = getDefaultInstance().getData();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDataBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.data_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.MultiversX.GenericActionOrBuilder
        public int getVersion() {
            return this.version_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setVersion(int value) {
            this.version_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearVersion() {
            this.version_ = 0;
        }

        @Override // wallet.core.jni.proto.MultiversX.GenericActionOrBuilder
        public int getOptions() {
            return this.options_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOptions(int value) {
            this.options_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOptions() {
            this.options_ = 0;
        }

        public static GenericAction parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (GenericAction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static GenericAction parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (GenericAction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static GenericAction parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (GenericAction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static GenericAction parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (GenericAction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static GenericAction parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (GenericAction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static GenericAction parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (GenericAction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static GenericAction parseFrom(InputStream input) throws IOException {
            return (GenericAction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static GenericAction parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (GenericAction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static GenericAction parseDelimitedFrom(InputStream input) throws IOException {
            return (GenericAction) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static GenericAction parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (GenericAction) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static GenericAction parseFrom(CodedInputStream input) throws IOException {
            return (GenericAction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static GenericAction parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (GenericAction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(GenericAction prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<GenericAction, Builder> implements GenericActionOrBuilder {
            /* synthetic */ Builder(C68341 c68341) {
                this();
            }

            private Builder() {
                super(GenericAction.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.MultiversX.GenericActionOrBuilder
            public boolean hasAccounts() {
                return ((GenericAction) this.instance).hasAccounts();
            }

            @Override // wallet.core.jni.proto.MultiversX.GenericActionOrBuilder
            public Accounts getAccounts() {
                return ((GenericAction) this.instance).getAccounts();
            }

            public Builder setAccounts(Accounts value) {
                copyOnWrite();
                ((GenericAction) this.instance).setAccounts(value);
                return this;
            }

            public Builder setAccounts(Accounts.Builder builderForValue) {
                copyOnWrite();
                ((GenericAction) this.instance).setAccounts(builderForValue.build());
                return this;
            }

            public Builder mergeAccounts(Accounts value) {
                copyOnWrite();
                ((GenericAction) this.instance).mergeAccounts(value);
                return this;
            }

            public Builder clearAccounts() {
                copyOnWrite();
                ((GenericAction) this.instance).clearAccounts();
                return this;
            }

            @Override // wallet.core.jni.proto.MultiversX.GenericActionOrBuilder
            public String getValue() {
                return ((GenericAction) this.instance).getValue();
            }

            @Override // wallet.core.jni.proto.MultiversX.GenericActionOrBuilder
            public ByteString getValueBytes() {
                return ((GenericAction) this.instance).getValueBytes();
            }

            public Builder setValue(String value) {
                copyOnWrite();
                ((GenericAction) this.instance).setValue(value);
                return this;
            }

            public Builder clearValue() {
                copyOnWrite();
                ((GenericAction) this.instance).clearValue();
                return this;
            }

            public Builder setValueBytes(ByteString value) {
                copyOnWrite();
                ((GenericAction) this.instance).setValueBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.MultiversX.GenericActionOrBuilder
            public String getData() {
                return ((GenericAction) this.instance).getData();
            }

            @Override // wallet.core.jni.proto.MultiversX.GenericActionOrBuilder
            public ByteString getDataBytes() {
                return ((GenericAction) this.instance).getDataBytes();
            }

            public Builder setData(String value) {
                copyOnWrite();
                ((GenericAction) this.instance).setData(value);
                return this;
            }

            public Builder clearData() {
                copyOnWrite();
                ((GenericAction) this.instance).clearData();
                return this;
            }

            public Builder setDataBytes(ByteString value) {
                copyOnWrite();
                ((GenericAction) this.instance).setDataBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.MultiversX.GenericActionOrBuilder
            public int getVersion() {
                return ((GenericAction) this.instance).getVersion();
            }

            public Builder setVersion(int value) {
                copyOnWrite();
                ((GenericAction) this.instance).setVersion(value);
                return this;
            }

            public Builder clearVersion() {
                copyOnWrite();
                ((GenericAction) this.instance).clearVersion();
                return this;
            }

            @Override // wallet.core.jni.proto.MultiversX.GenericActionOrBuilder
            public int getOptions() {
                return ((GenericAction) this.instance).getOptions();
            }

            public Builder setOptions(int value) {
                copyOnWrite();
                ((GenericAction) this.instance).setOptions(value);
                return this;
            }

            public Builder clearOptions() {
                copyOnWrite();
                ((GenericAction) this.instance).clearOptions();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68341.f1810xa1df5c61[method.ordinal()]) {
                case 1:
                    return new GenericAction();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\t\u0002Ȉ\u0003Ȉ\u0004\u000b\u0005\u000b", new Object[]{"accounts_", "value_", "data_", "version_", "options_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<GenericAction> parser = PARSER;
                    if (parser == null) {
                        synchronized (GenericAction.class) {
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
            GenericAction genericAction = new GenericAction();
            DEFAULT_INSTANCE = genericAction;
            GeneratedMessageLite.registerDefaultInstance(GenericAction.class, genericAction);
        }

        public static GenericAction getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<GenericAction> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* renamed from: wallet.core.jni.proto.MultiversX$1 */
    /* loaded from: classes6.dex */
    static /* synthetic */ class C68341 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f1810xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f1810xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1810xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1810xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1810xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1810xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1810xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1810xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class EGLDTransfer extends GeneratedMessageLite<EGLDTransfer, Builder> implements EGLDTransferOrBuilder {
        public static final int ACCOUNTS_FIELD_NUMBER = 1;
        public static final int AMOUNT_FIELD_NUMBER = 2;
        private static final EGLDTransfer DEFAULT_INSTANCE;
        private static volatile Parser<EGLDTransfer> PARSER;
        private Accounts accounts_;
        private String amount_ = "";

        private EGLDTransfer() {
        }

        @Override // wallet.core.jni.proto.MultiversX.EGLDTransferOrBuilder
        public boolean hasAccounts() {
            return this.accounts_ != null;
        }

        @Override // wallet.core.jni.proto.MultiversX.EGLDTransferOrBuilder
        public Accounts getAccounts() {
            Accounts accounts = this.accounts_;
            return accounts == null ? Accounts.getDefaultInstance() : accounts;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAccounts(Accounts value) {
            value.getClass();
            this.accounts_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeAccounts(Accounts value) {
            value.getClass();
            Accounts accounts = this.accounts_;
            if (accounts != null && accounts != Accounts.getDefaultInstance()) {
                this.accounts_ = Accounts.newBuilder(this.accounts_).mergeFrom((Accounts.Builder) value).buildPartial();
            } else {
                this.accounts_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAccounts() {
            this.accounts_ = null;
        }

        @Override // wallet.core.jni.proto.MultiversX.EGLDTransferOrBuilder
        public String getAmount() {
            return this.amount_;
        }

        @Override // wallet.core.jni.proto.MultiversX.EGLDTransferOrBuilder
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

        public static EGLDTransfer parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (EGLDTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static EGLDTransfer parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (EGLDTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static EGLDTransfer parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (EGLDTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static EGLDTransfer parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (EGLDTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static EGLDTransfer parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (EGLDTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static EGLDTransfer parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (EGLDTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static EGLDTransfer parseFrom(InputStream input) throws IOException {
            return (EGLDTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static EGLDTransfer parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (EGLDTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static EGLDTransfer parseDelimitedFrom(InputStream input) throws IOException {
            return (EGLDTransfer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static EGLDTransfer parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (EGLDTransfer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static EGLDTransfer parseFrom(CodedInputStream input) throws IOException {
            return (EGLDTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static EGLDTransfer parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (EGLDTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(EGLDTransfer prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<EGLDTransfer, Builder> implements EGLDTransferOrBuilder {
            /* synthetic */ Builder(C68341 c68341) {
                this();
            }

            private Builder() {
                super(EGLDTransfer.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.MultiversX.EGLDTransferOrBuilder
            public boolean hasAccounts() {
                return ((EGLDTransfer) this.instance).hasAccounts();
            }

            @Override // wallet.core.jni.proto.MultiversX.EGLDTransferOrBuilder
            public Accounts getAccounts() {
                return ((EGLDTransfer) this.instance).getAccounts();
            }

            public Builder setAccounts(Accounts value) {
                copyOnWrite();
                ((EGLDTransfer) this.instance).setAccounts(value);
                return this;
            }

            public Builder setAccounts(Accounts.Builder builderForValue) {
                copyOnWrite();
                ((EGLDTransfer) this.instance).setAccounts(builderForValue.build());
                return this;
            }

            public Builder mergeAccounts(Accounts value) {
                copyOnWrite();
                ((EGLDTransfer) this.instance).mergeAccounts(value);
                return this;
            }

            public Builder clearAccounts() {
                copyOnWrite();
                ((EGLDTransfer) this.instance).clearAccounts();
                return this;
            }

            @Override // wallet.core.jni.proto.MultiversX.EGLDTransferOrBuilder
            public String getAmount() {
                return ((EGLDTransfer) this.instance).getAmount();
            }

            @Override // wallet.core.jni.proto.MultiversX.EGLDTransferOrBuilder
            public ByteString getAmountBytes() {
                return ((EGLDTransfer) this.instance).getAmountBytes();
            }

            public Builder setAmount(String value) {
                copyOnWrite();
                ((EGLDTransfer) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((EGLDTransfer) this.instance).clearAmount();
                return this;
            }

            public Builder setAmountBytes(ByteString value) {
                copyOnWrite();
                ((EGLDTransfer) this.instance).setAmountBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68341.f1810xa1df5c61[method.ordinal()]) {
                case 1:
                    return new EGLDTransfer();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002Ȉ", new Object[]{"accounts_", "amount_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<EGLDTransfer> parser = PARSER;
                    if (parser == null) {
                        synchronized (EGLDTransfer.class) {
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
            EGLDTransfer eGLDTransfer = new EGLDTransfer();
            DEFAULT_INSTANCE = eGLDTransfer;
            GeneratedMessageLite.registerDefaultInstance(EGLDTransfer.class, eGLDTransfer);
        }

        public static EGLDTransfer getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<EGLDTransfer> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class ESDTTransfer extends GeneratedMessageLite<ESDTTransfer, Builder> implements ESDTTransferOrBuilder {
        public static final int ACCOUNTS_FIELD_NUMBER = 1;
        public static final int AMOUNT_FIELD_NUMBER = 3;
        private static final ESDTTransfer DEFAULT_INSTANCE;
        private static volatile Parser<ESDTTransfer> PARSER = null;
        public static final int TOKEN_IDENTIFIER_FIELD_NUMBER = 2;
        private Accounts accounts_;
        private String tokenIdentifier_ = "";
        private String amount_ = "";

        private ESDTTransfer() {
        }

        @Override // wallet.core.jni.proto.MultiversX.ESDTTransferOrBuilder
        public boolean hasAccounts() {
            return this.accounts_ != null;
        }

        @Override // wallet.core.jni.proto.MultiversX.ESDTTransferOrBuilder
        public Accounts getAccounts() {
            Accounts accounts = this.accounts_;
            return accounts == null ? Accounts.getDefaultInstance() : accounts;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAccounts(Accounts value) {
            value.getClass();
            this.accounts_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeAccounts(Accounts value) {
            value.getClass();
            Accounts accounts = this.accounts_;
            if (accounts != null && accounts != Accounts.getDefaultInstance()) {
                this.accounts_ = Accounts.newBuilder(this.accounts_).mergeFrom((Accounts.Builder) value).buildPartial();
            } else {
                this.accounts_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAccounts() {
            this.accounts_ = null;
        }

        @Override // wallet.core.jni.proto.MultiversX.ESDTTransferOrBuilder
        public String getTokenIdentifier() {
            return this.tokenIdentifier_;
        }

        @Override // wallet.core.jni.proto.MultiversX.ESDTTransferOrBuilder
        public ByteString getTokenIdentifierBytes() {
            return ByteString.copyFromUtf8(this.tokenIdentifier_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTokenIdentifier(String value) {
            value.getClass();
            this.tokenIdentifier_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTokenIdentifier() {
            this.tokenIdentifier_ = getDefaultInstance().getTokenIdentifier();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTokenIdentifierBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.tokenIdentifier_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.MultiversX.ESDTTransferOrBuilder
        public String getAmount() {
            return this.amount_;
        }

        @Override // wallet.core.jni.proto.MultiversX.ESDTTransferOrBuilder
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

        public static ESDTTransfer parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (ESDTTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static ESDTTransfer parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (ESDTTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static ESDTTransfer parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (ESDTTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static ESDTTransfer parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (ESDTTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static ESDTTransfer parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (ESDTTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static ESDTTransfer parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (ESDTTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static ESDTTransfer parseFrom(InputStream input) throws IOException {
            return (ESDTTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static ESDTTransfer parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ESDTTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static ESDTTransfer parseDelimitedFrom(InputStream input) throws IOException {
            return (ESDTTransfer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static ESDTTransfer parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ESDTTransfer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static ESDTTransfer parseFrom(CodedInputStream input) throws IOException {
            return (ESDTTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static ESDTTransfer parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ESDTTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(ESDTTransfer prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<ESDTTransfer, Builder> implements ESDTTransferOrBuilder {
            /* synthetic */ Builder(C68341 c68341) {
                this();
            }

            private Builder() {
                super(ESDTTransfer.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.MultiversX.ESDTTransferOrBuilder
            public boolean hasAccounts() {
                return ((ESDTTransfer) this.instance).hasAccounts();
            }

            @Override // wallet.core.jni.proto.MultiversX.ESDTTransferOrBuilder
            public Accounts getAccounts() {
                return ((ESDTTransfer) this.instance).getAccounts();
            }

            public Builder setAccounts(Accounts value) {
                copyOnWrite();
                ((ESDTTransfer) this.instance).setAccounts(value);
                return this;
            }

            public Builder setAccounts(Accounts.Builder builderForValue) {
                copyOnWrite();
                ((ESDTTransfer) this.instance).setAccounts(builderForValue.build());
                return this;
            }

            public Builder mergeAccounts(Accounts value) {
                copyOnWrite();
                ((ESDTTransfer) this.instance).mergeAccounts(value);
                return this;
            }

            public Builder clearAccounts() {
                copyOnWrite();
                ((ESDTTransfer) this.instance).clearAccounts();
                return this;
            }

            @Override // wallet.core.jni.proto.MultiversX.ESDTTransferOrBuilder
            public String getTokenIdentifier() {
                return ((ESDTTransfer) this.instance).getTokenIdentifier();
            }

            @Override // wallet.core.jni.proto.MultiversX.ESDTTransferOrBuilder
            public ByteString getTokenIdentifierBytes() {
                return ((ESDTTransfer) this.instance).getTokenIdentifierBytes();
            }

            public Builder setTokenIdentifier(String value) {
                copyOnWrite();
                ((ESDTTransfer) this.instance).setTokenIdentifier(value);
                return this;
            }

            public Builder clearTokenIdentifier() {
                copyOnWrite();
                ((ESDTTransfer) this.instance).clearTokenIdentifier();
                return this;
            }

            public Builder setTokenIdentifierBytes(ByteString value) {
                copyOnWrite();
                ((ESDTTransfer) this.instance).setTokenIdentifierBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.MultiversX.ESDTTransferOrBuilder
            public String getAmount() {
                return ((ESDTTransfer) this.instance).getAmount();
            }

            @Override // wallet.core.jni.proto.MultiversX.ESDTTransferOrBuilder
            public ByteString getAmountBytes() {
                return ((ESDTTransfer) this.instance).getAmountBytes();
            }

            public Builder setAmount(String value) {
                copyOnWrite();
                ((ESDTTransfer) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((ESDTTransfer) this.instance).clearAmount();
                return this;
            }

            public Builder setAmountBytes(ByteString value) {
                copyOnWrite();
                ((ESDTTransfer) this.instance).setAmountBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68341.f1810xa1df5c61[method.ordinal()]) {
                case 1:
                    return new ESDTTransfer();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002Ȉ\u0003Ȉ", new Object[]{"accounts_", "tokenIdentifier_", "amount_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<ESDTTransfer> parser = PARSER;
                    if (parser == null) {
                        synchronized (ESDTTransfer.class) {
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
            ESDTTransfer eSDTTransfer = new ESDTTransfer();
            DEFAULT_INSTANCE = eSDTTransfer;
            GeneratedMessageLite.registerDefaultInstance(ESDTTransfer.class, eSDTTransfer);
        }

        public static ESDTTransfer getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<ESDTTransfer> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class ESDTNFTTransfer extends GeneratedMessageLite<ESDTNFTTransfer, Builder> implements ESDTNFTTransferOrBuilder {
        public static final int ACCOUNTS_FIELD_NUMBER = 1;
        public static final int AMOUNT_FIELD_NUMBER = 4;
        private static final ESDTNFTTransfer DEFAULT_INSTANCE;
        private static volatile Parser<ESDTNFTTransfer> PARSER = null;
        public static final int TOKEN_COLLECTION_FIELD_NUMBER = 2;
        public static final int TOKEN_NONCE_FIELD_NUMBER = 3;
        private Accounts accounts_;
        private long tokenNonce_;
        private String tokenCollection_ = "";
        private String amount_ = "";

        private ESDTNFTTransfer() {
        }

        @Override // wallet.core.jni.proto.MultiversX.ESDTNFTTransferOrBuilder
        public boolean hasAccounts() {
            return this.accounts_ != null;
        }

        @Override // wallet.core.jni.proto.MultiversX.ESDTNFTTransferOrBuilder
        public Accounts getAccounts() {
            Accounts accounts = this.accounts_;
            return accounts == null ? Accounts.getDefaultInstance() : accounts;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAccounts(Accounts value) {
            value.getClass();
            this.accounts_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeAccounts(Accounts value) {
            value.getClass();
            Accounts accounts = this.accounts_;
            if (accounts != null && accounts != Accounts.getDefaultInstance()) {
                this.accounts_ = Accounts.newBuilder(this.accounts_).mergeFrom((Accounts.Builder) value).buildPartial();
            } else {
                this.accounts_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAccounts() {
            this.accounts_ = null;
        }

        @Override // wallet.core.jni.proto.MultiversX.ESDTNFTTransferOrBuilder
        public String getTokenCollection() {
            return this.tokenCollection_;
        }

        @Override // wallet.core.jni.proto.MultiversX.ESDTNFTTransferOrBuilder
        public ByteString getTokenCollectionBytes() {
            return ByteString.copyFromUtf8(this.tokenCollection_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTokenCollection(String value) {
            value.getClass();
            this.tokenCollection_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTokenCollection() {
            this.tokenCollection_ = getDefaultInstance().getTokenCollection();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTokenCollectionBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.tokenCollection_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.MultiversX.ESDTNFTTransferOrBuilder
        public long getTokenNonce() {
            return this.tokenNonce_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTokenNonce(long value) {
            this.tokenNonce_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTokenNonce() {
            this.tokenNonce_ = 0L;
        }

        @Override // wallet.core.jni.proto.MultiversX.ESDTNFTTransferOrBuilder
        public String getAmount() {
            return this.amount_;
        }

        @Override // wallet.core.jni.proto.MultiversX.ESDTNFTTransferOrBuilder
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

        public static ESDTNFTTransfer parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (ESDTNFTTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static ESDTNFTTransfer parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (ESDTNFTTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static ESDTNFTTransfer parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (ESDTNFTTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static ESDTNFTTransfer parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (ESDTNFTTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static ESDTNFTTransfer parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (ESDTNFTTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static ESDTNFTTransfer parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (ESDTNFTTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static ESDTNFTTransfer parseFrom(InputStream input) throws IOException {
            return (ESDTNFTTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static ESDTNFTTransfer parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ESDTNFTTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static ESDTNFTTransfer parseDelimitedFrom(InputStream input) throws IOException {
            return (ESDTNFTTransfer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static ESDTNFTTransfer parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ESDTNFTTransfer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static ESDTNFTTransfer parseFrom(CodedInputStream input) throws IOException {
            return (ESDTNFTTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static ESDTNFTTransfer parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ESDTNFTTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(ESDTNFTTransfer prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<ESDTNFTTransfer, Builder> implements ESDTNFTTransferOrBuilder {
            /* synthetic */ Builder(C68341 c68341) {
                this();
            }

            private Builder() {
                super(ESDTNFTTransfer.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.MultiversX.ESDTNFTTransferOrBuilder
            public boolean hasAccounts() {
                return ((ESDTNFTTransfer) this.instance).hasAccounts();
            }

            @Override // wallet.core.jni.proto.MultiversX.ESDTNFTTransferOrBuilder
            public Accounts getAccounts() {
                return ((ESDTNFTTransfer) this.instance).getAccounts();
            }

            public Builder setAccounts(Accounts value) {
                copyOnWrite();
                ((ESDTNFTTransfer) this.instance).setAccounts(value);
                return this;
            }

            public Builder setAccounts(Accounts.Builder builderForValue) {
                copyOnWrite();
                ((ESDTNFTTransfer) this.instance).setAccounts(builderForValue.build());
                return this;
            }

            public Builder mergeAccounts(Accounts value) {
                copyOnWrite();
                ((ESDTNFTTransfer) this.instance).mergeAccounts(value);
                return this;
            }

            public Builder clearAccounts() {
                copyOnWrite();
                ((ESDTNFTTransfer) this.instance).clearAccounts();
                return this;
            }

            @Override // wallet.core.jni.proto.MultiversX.ESDTNFTTransferOrBuilder
            public String getTokenCollection() {
                return ((ESDTNFTTransfer) this.instance).getTokenCollection();
            }

            @Override // wallet.core.jni.proto.MultiversX.ESDTNFTTransferOrBuilder
            public ByteString getTokenCollectionBytes() {
                return ((ESDTNFTTransfer) this.instance).getTokenCollectionBytes();
            }

            public Builder setTokenCollection(String value) {
                copyOnWrite();
                ((ESDTNFTTransfer) this.instance).setTokenCollection(value);
                return this;
            }

            public Builder clearTokenCollection() {
                copyOnWrite();
                ((ESDTNFTTransfer) this.instance).clearTokenCollection();
                return this;
            }

            public Builder setTokenCollectionBytes(ByteString value) {
                copyOnWrite();
                ((ESDTNFTTransfer) this.instance).setTokenCollectionBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.MultiversX.ESDTNFTTransferOrBuilder
            public long getTokenNonce() {
                return ((ESDTNFTTransfer) this.instance).getTokenNonce();
            }

            public Builder setTokenNonce(long value) {
                copyOnWrite();
                ((ESDTNFTTransfer) this.instance).setTokenNonce(value);
                return this;
            }

            public Builder clearTokenNonce() {
                copyOnWrite();
                ((ESDTNFTTransfer) this.instance).clearTokenNonce();
                return this;
            }

            @Override // wallet.core.jni.proto.MultiversX.ESDTNFTTransferOrBuilder
            public String getAmount() {
                return ((ESDTNFTTransfer) this.instance).getAmount();
            }

            @Override // wallet.core.jni.proto.MultiversX.ESDTNFTTransferOrBuilder
            public ByteString getAmountBytes() {
                return ((ESDTNFTTransfer) this.instance).getAmountBytes();
            }

            public Builder setAmount(String value) {
                copyOnWrite();
                ((ESDTNFTTransfer) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((ESDTNFTTransfer) this.instance).clearAmount();
                return this;
            }

            public Builder setAmountBytes(ByteString value) {
                copyOnWrite();
                ((ESDTNFTTransfer) this.instance).setAmountBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68341.f1810xa1df5c61[method.ordinal()]) {
                case 1:
                    return new ESDTNFTTransfer();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002Ȉ\u0003\u0003\u0004Ȉ", new Object[]{"accounts_", "tokenCollection_", "tokenNonce_", "amount_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<ESDTNFTTransfer> parser = PARSER;
                    if (parser == null) {
                        synchronized (ESDTNFTTransfer.class) {
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
            ESDTNFTTransfer eSDTNFTTransfer = new ESDTNFTTransfer();
            DEFAULT_INSTANCE = eSDTNFTTransfer;
            GeneratedMessageLite.registerDefaultInstance(ESDTNFTTransfer.class, eSDTNFTTransfer);
        }

        public static ESDTNFTTransfer getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<ESDTNFTTransfer> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class Accounts extends GeneratedMessageLite<Accounts, Builder> implements AccountsOrBuilder {
        private static final Accounts DEFAULT_INSTANCE;
        private static volatile Parser<Accounts> PARSER = null;
        public static final int RECEIVER_FIELD_NUMBER = 4;
        public static final int RECEIVER_USERNAME_FIELD_NUMBER = 5;
        public static final int SENDER_FIELD_NUMBER = 2;
        public static final int SENDER_NONCE_FIELD_NUMBER = 1;
        public static final int SENDER_USERNAME_FIELD_NUMBER = 3;
        private long senderNonce_;
        private String sender_ = "";
        private String senderUsername_ = "";
        private String receiver_ = "";
        private String receiverUsername_ = "";

        private Accounts() {
        }

        @Override // wallet.core.jni.proto.MultiversX.AccountsOrBuilder
        public long getSenderNonce() {
            return this.senderNonce_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSenderNonce(long value) {
            this.senderNonce_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSenderNonce() {
            this.senderNonce_ = 0L;
        }

        @Override // wallet.core.jni.proto.MultiversX.AccountsOrBuilder
        public String getSender() {
            return this.sender_;
        }

        @Override // wallet.core.jni.proto.MultiversX.AccountsOrBuilder
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

        @Override // wallet.core.jni.proto.MultiversX.AccountsOrBuilder
        public String getSenderUsername() {
            return this.senderUsername_;
        }

        @Override // wallet.core.jni.proto.MultiversX.AccountsOrBuilder
        public ByteString getSenderUsernameBytes() {
            return ByteString.copyFromUtf8(this.senderUsername_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSenderUsername(String value) {
            value.getClass();
            this.senderUsername_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSenderUsername() {
            this.senderUsername_ = getDefaultInstance().getSenderUsername();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSenderUsernameBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.senderUsername_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.MultiversX.AccountsOrBuilder
        public String getReceiver() {
            return this.receiver_;
        }

        @Override // wallet.core.jni.proto.MultiversX.AccountsOrBuilder
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

        @Override // wallet.core.jni.proto.MultiversX.AccountsOrBuilder
        public String getReceiverUsername() {
            return this.receiverUsername_;
        }

        @Override // wallet.core.jni.proto.MultiversX.AccountsOrBuilder
        public ByteString getReceiverUsernameBytes() {
            return ByteString.copyFromUtf8(this.receiverUsername_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setReceiverUsername(String value) {
            value.getClass();
            this.receiverUsername_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearReceiverUsername() {
            this.receiverUsername_ = getDefaultInstance().getReceiverUsername();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setReceiverUsernameBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.receiverUsername_ = value.toStringUtf8();
        }

        public static Accounts parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (Accounts) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Accounts parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Accounts) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Accounts parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (Accounts) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Accounts parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Accounts) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Accounts parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (Accounts) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Accounts parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Accounts) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Accounts parseFrom(InputStream input) throws IOException {
            return (Accounts) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Accounts parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Accounts) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Accounts parseDelimitedFrom(InputStream input) throws IOException {
            return (Accounts) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static Accounts parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Accounts) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Accounts parseFrom(CodedInputStream input) throws IOException {
            return (Accounts) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Accounts parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Accounts) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(Accounts prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Accounts, Builder> implements AccountsOrBuilder {
            /* synthetic */ Builder(C68341 c68341) {
                this();
            }

            private Builder() {
                super(Accounts.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.MultiversX.AccountsOrBuilder
            public long getSenderNonce() {
                return ((Accounts) this.instance).getSenderNonce();
            }

            public Builder setSenderNonce(long value) {
                copyOnWrite();
                ((Accounts) this.instance).setSenderNonce(value);
                return this;
            }

            public Builder clearSenderNonce() {
                copyOnWrite();
                ((Accounts) this.instance).clearSenderNonce();
                return this;
            }

            @Override // wallet.core.jni.proto.MultiversX.AccountsOrBuilder
            public String getSender() {
                return ((Accounts) this.instance).getSender();
            }

            @Override // wallet.core.jni.proto.MultiversX.AccountsOrBuilder
            public ByteString getSenderBytes() {
                return ((Accounts) this.instance).getSenderBytes();
            }

            public Builder setSender(String value) {
                copyOnWrite();
                ((Accounts) this.instance).setSender(value);
                return this;
            }

            public Builder clearSender() {
                copyOnWrite();
                ((Accounts) this.instance).clearSender();
                return this;
            }

            public Builder setSenderBytes(ByteString value) {
                copyOnWrite();
                ((Accounts) this.instance).setSenderBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.MultiversX.AccountsOrBuilder
            public String getSenderUsername() {
                return ((Accounts) this.instance).getSenderUsername();
            }

            @Override // wallet.core.jni.proto.MultiversX.AccountsOrBuilder
            public ByteString getSenderUsernameBytes() {
                return ((Accounts) this.instance).getSenderUsernameBytes();
            }

            public Builder setSenderUsername(String value) {
                copyOnWrite();
                ((Accounts) this.instance).setSenderUsername(value);
                return this;
            }

            public Builder clearSenderUsername() {
                copyOnWrite();
                ((Accounts) this.instance).clearSenderUsername();
                return this;
            }

            public Builder setSenderUsernameBytes(ByteString value) {
                copyOnWrite();
                ((Accounts) this.instance).setSenderUsernameBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.MultiversX.AccountsOrBuilder
            public String getReceiver() {
                return ((Accounts) this.instance).getReceiver();
            }

            @Override // wallet.core.jni.proto.MultiversX.AccountsOrBuilder
            public ByteString getReceiverBytes() {
                return ((Accounts) this.instance).getReceiverBytes();
            }

            public Builder setReceiver(String value) {
                copyOnWrite();
                ((Accounts) this.instance).setReceiver(value);
                return this;
            }

            public Builder clearReceiver() {
                copyOnWrite();
                ((Accounts) this.instance).clearReceiver();
                return this;
            }

            public Builder setReceiverBytes(ByteString value) {
                copyOnWrite();
                ((Accounts) this.instance).setReceiverBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.MultiversX.AccountsOrBuilder
            public String getReceiverUsername() {
                return ((Accounts) this.instance).getReceiverUsername();
            }

            @Override // wallet.core.jni.proto.MultiversX.AccountsOrBuilder
            public ByteString getReceiverUsernameBytes() {
                return ((Accounts) this.instance).getReceiverUsernameBytes();
            }

            public Builder setReceiverUsername(String value) {
                copyOnWrite();
                ((Accounts) this.instance).setReceiverUsername(value);
                return this;
            }

            public Builder clearReceiverUsername() {
                copyOnWrite();
                ((Accounts) this.instance).clearReceiverUsername();
                return this;
            }

            public Builder setReceiverUsernameBytes(ByteString value) {
                copyOnWrite();
                ((Accounts) this.instance).setReceiverUsernameBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68341.f1810xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Accounts();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0003\u0002Ȉ\u0003Ȉ\u0004Ȉ\u0005Ȉ", new Object[]{"senderNonce_", "sender_", "senderUsername_", "receiver_", "receiverUsername_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Accounts> parser = PARSER;
                    if (parser == null) {
                        synchronized (Accounts.class) {
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
            Accounts accounts = new Accounts();
            DEFAULT_INSTANCE = accounts;
            GeneratedMessageLite.registerDefaultInstance(Accounts.class, accounts);
        }

        public static Accounts getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Accounts> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        public static final int CHAIN_ID_FIELD_NUMBER = 2;
        private static final SigningInput DEFAULT_INSTANCE;
        public static final int EGLD_TRANSFER_FIELD_NUMBER = 6;
        public static final int ESDTNFT_TRANSFER_FIELD_NUMBER = 8;
        public static final int ESDT_TRANSFER_FIELD_NUMBER = 7;
        public static final int GAS_LIMIT_FIELD_NUMBER = 4;
        public static final int GAS_PRICE_FIELD_NUMBER = 3;
        public static final int GENERIC_ACTION_FIELD_NUMBER = 5;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PRIVATE_KEY_FIELD_NUMBER = 1;
        private long gasLimit_;
        private long gasPrice_;
        private Object messageOneof_;
        private int messageOneofCase_ = 0;
        private ByteString privateKey_ = ByteString.EMPTY;
        private String chainId_ = "";

        private SigningInput() {
        }

        /* loaded from: classes6.dex */
        public enum MessageOneofCase {
            GENERIC_ACTION(5),
            EGLD_TRANSFER(6),
            ESDT_TRANSFER(7),
            ESDTNFT_TRANSFER(8),
            MESSAGEONEOF_NOT_SET(0);
            
            private final int value;

            MessageOneofCase(int value) {
                this.value = value;
            }

            @Deprecated
            public static MessageOneofCase valueOf(int value) {
                return forNumber(value);
            }

            public static MessageOneofCase forNumber(int value) {
                if (value != 0) {
                    if (value != 5) {
                        if (value != 6) {
                            if (value != 7) {
                                if (value != 8) {
                                    return null;
                                }
                                return ESDTNFT_TRANSFER;
                            }
                            return ESDT_TRANSFER;
                        }
                        return EGLD_TRANSFER;
                    }
                    return GENERIC_ACTION;
                }
                return MESSAGEONEOF_NOT_SET;
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.MultiversX.SigningInputOrBuilder
        public MessageOneofCase getMessageOneofCase() {
            return MessageOneofCase.forNumber(this.messageOneofCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMessageOneof() {
            this.messageOneofCase_ = 0;
            this.messageOneof_ = null;
        }

        @Override // wallet.core.jni.proto.MultiversX.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.MultiversX.SigningInputOrBuilder
        public String getChainId() {
            return this.chainId_;
        }

        @Override // wallet.core.jni.proto.MultiversX.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.MultiversX.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.MultiversX.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.MultiversX.SigningInputOrBuilder
        public boolean hasGenericAction() {
            return this.messageOneofCase_ == 5;
        }

        @Override // wallet.core.jni.proto.MultiversX.SigningInputOrBuilder
        public GenericAction getGenericAction() {
            if (this.messageOneofCase_ == 5) {
                return (GenericAction) this.messageOneof_;
            }
            return GenericAction.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setGenericAction(GenericAction value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeGenericAction(GenericAction value) {
            value.getClass();
            if (this.messageOneofCase_ == 5 && this.messageOneof_ != GenericAction.getDefaultInstance()) {
                this.messageOneof_ = GenericAction.newBuilder((GenericAction) this.messageOneof_).mergeFrom((GenericAction.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearGenericAction() {
            if (this.messageOneofCase_ == 5) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.MultiversX.SigningInputOrBuilder
        public boolean hasEgldTransfer() {
            return this.messageOneofCase_ == 6;
        }

        @Override // wallet.core.jni.proto.MultiversX.SigningInputOrBuilder
        public EGLDTransfer getEgldTransfer() {
            if (this.messageOneofCase_ == 6) {
                return (EGLDTransfer) this.messageOneof_;
            }
            return EGLDTransfer.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setEgldTransfer(EGLDTransfer value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeEgldTransfer(EGLDTransfer value) {
            value.getClass();
            if (this.messageOneofCase_ == 6 && this.messageOneof_ != EGLDTransfer.getDefaultInstance()) {
                this.messageOneof_ = EGLDTransfer.newBuilder((EGLDTransfer) this.messageOneof_).mergeFrom((EGLDTransfer.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearEgldTransfer() {
            if (this.messageOneofCase_ == 6) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.MultiversX.SigningInputOrBuilder
        public boolean hasEsdtTransfer() {
            return this.messageOneofCase_ == 7;
        }

        @Override // wallet.core.jni.proto.MultiversX.SigningInputOrBuilder
        public ESDTTransfer getEsdtTransfer() {
            if (this.messageOneofCase_ == 7) {
                return (ESDTTransfer) this.messageOneof_;
            }
            return ESDTTransfer.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setEsdtTransfer(ESDTTransfer value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 7;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeEsdtTransfer(ESDTTransfer value) {
            value.getClass();
            if (this.messageOneofCase_ == 7 && this.messageOneof_ != ESDTTransfer.getDefaultInstance()) {
                this.messageOneof_ = ESDTTransfer.newBuilder((ESDTTransfer) this.messageOneof_).mergeFrom((ESDTTransfer.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 7;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearEsdtTransfer() {
            if (this.messageOneofCase_ == 7) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.MultiversX.SigningInputOrBuilder
        public boolean hasEsdtnftTransfer() {
            return this.messageOneofCase_ == 8;
        }

        @Override // wallet.core.jni.proto.MultiversX.SigningInputOrBuilder
        public ESDTNFTTransfer getEsdtnftTransfer() {
            if (this.messageOneofCase_ == 8) {
                return (ESDTNFTTransfer) this.messageOneof_;
            }
            return ESDTNFTTransfer.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setEsdtnftTransfer(ESDTNFTTransfer value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeEsdtnftTransfer(ESDTNFTTransfer value) {
            value.getClass();
            if (this.messageOneofCase_ == 8 && this.messageOneof_ != ESDTNFTTransfer.getDefaultInstance()) {
                this.messageOneof_ = ESDTNFTTransfer.newBuilder((ESDTNFTTransfer) this.messageOneof_).mergeFrom((ESDTNFTTransfer.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearEsdtnftTransfer() {
            if (this.messageOneofCase_ == 8) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
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
            /* synthetic */ Builder(C68341 c68341) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.MultiversX.SigningInputOrBuilder
            public MessageOneofCase getMessageOneofCase() {
                return ((SigningInput) this.instance).getMessageOneofCase();
            }

            public Builder clearMessageOneof() {
                copyOnWrite();
                ((SigningInput) this.instance).clearMessageOneof();
                return this;
            }

            @Override // wallet.core.jni.proto.MultiversX.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.MultiversX.SigningInputOrBuilder
            public String getChainId() {
                return ((SigningInput) this.instance).getChainId();
            }

            @Override // wallet.core.jni.proto.MultiversX.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.MultiversX.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.MultiversX.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.MultiversX.SigningInputOrBuilder
            public boolean hasGenericAction() {
                return ((SigningInput) this.instance).hasGenericAction();
            }

            @Override // wallet.core.jni.proto.MultiversX.SigningInputOrBuilder
            public GenericAction getGenericAction() {
                return ((SigningInput) this.instance).getGenericAction();
            }

            public Builder setGenericAction(GenericAction value) {
                copyOnWrite();
                ((SigningInput) this.instance).setGenericAction(value);
                return this;
            }

            public Builder setGenericAction(GenericAction.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setGenericAction(builderForValue.build());
                return this;
            }

            public Builder mergeGenericAction(GenericAction value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeGenericAction(value);
                return this;
            }

            public Builder clearGenericAction() {
                copyOnWrite();
                ((SigningInput) this.instance).clearGenericAction();
                return this;
            }

            @Override // wallet.core.jni.proto.MultiversX.SigningInputOrBuilder
            public boolean hasEgldTransfer() {
                return ((SigningInput) this.instance).hasEgldTransfer();
            }

            @Override // wallet.core.jni.proto.MultiversX.SigningInputOrBuilder
            public EGLDTransfer getEgldTransfer() {
                return ((SigningInput) this.instance).getEgldTransfer();
            }

            public Builder setEgldTransfer(EGLDTransfer value) {
                copyOnWrite();
                ((SigningInput) this.instance).setEgldTransfer(value);
                return this;
            }

            public Builder setEgldTransfer(EGLDTransfer.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setEgldTransfer(builderForValue.build());
                return this;
            }

            public Builder mergeEgldTransfer(EGLDTransfer value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeEgldTransfer(value);
                return this;
            }

            public Builder clearEgldTransfer() {
                copyOnWrite();
                ((SigningInput) this.instance).clearEgldTransfer();
                return this;
            }

            @Override // wallet.core.jni.proto.MultiversX.SigningInputOrBuilder
            public boolean hasEsdtTransfer() {
                return ((SigningInput) this.instance).hasEsdtTransfer();
            }

            @Override // wallet.core.jni.proto.MultiversX.SigningInputOrBuilder
            public ESDTTransfer getEsdtTransfer() {
                return ((SigningInput) this.instance).getEsdtTransfer();
            }

            public Builder setEsdtTransfer(ESDTTransfer value) {
                copyOnWrite();
                ((SigningInput) this.instance).setEsdtTransfer(value);
                return this;
            }

            public Builder setEsdtTransfer(ESDTTransfer.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setEsdtTransfer(builderForValue.build());
                return this;
            }

            public Builder mergeEsdtTransfer(ESDTTransfer value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeEsdtTransfer(value);
                return this;
            }

            public Builder clearEsdtTransfer() {
                copyOnWrite();
                ((SigningInput) this.instance).clearEsdtTransfer();
                return this;
            }

            @Override // wallet.core.jni.proto.MultiversX.SigningInputOrBuilder
            public boolean hasEsdtnftTransfer() {
                return ((SigningInput) this.instance).hasEsdtnftTransfer();
            }

            @Override // wallet.core.jni.proto.MultiversX.SigningInputOrBuilder
            public ESDTNFTTransfer getEsdtnftTransfer() {
                return ((SigningInput) this.instance).getEsdtnftTransfer();
            }

            public Builder setEsdtnftTransfer(ESDTNFTTransfer value) {
                copyOnWrite();
                ((SigningInput) this.instance).setEsdtnftTransfer(value);
                return this;
            }

            public Builder setEsdtnftTransfer(ESDTNFTTransfer.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setEsdtnftTransfer(builderForValue.build());
                return this;
            }

            public Builder mergeEsdtnftTransfer(ESDTNFTTransfer value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeEsdtnftTransfer(value);
                return this;
            }

            public Builder clearEsdtnftTransfer() {
                copyOnWrite();
                ((SigningInput) this.instance).clearEsdtnftTransfer();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68341.f1810xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\b\u0001\u0000\u0001\b\b\u0000\u0000\u0000\u0001\n\u0002Ȉ\u0003\u0003\u0004\u0003\u0005<\u0000\u0006<\u0000\u0007<\u0000\b<\u0000", new Object[]{"messageOneof_", "messageOneofCase_", "privateKey_", "chainId_", "gasPrice_", "gasLimit_", GenericAction.class, EGLDTransfer.class, ESDTTransfer.class, ESDTNFTTransfer.class});
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
        private static volatile Parser<SigningOutput> PARSER = null;
        public static final int SIGNATURE_FIELD_NUMBER = 2;
        private String encoded_ = "";
        private String signature_ = "";

        private SigningOutput() {
        }

        @Override // wallet.core.jni.proto.MultiversX.SigningOutputOrBuilder
        public String getEncoded() {
            return this.encoded_;
        }

        @Override // wallet.core.jni.proto.MultiversX.SigningOutputOrBuilder
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

        @Override // wallet.core.jni.proto.MultiversX.SigningOutputOrBuilder
        public String getSignature() {
            return this.signature_;
        }

        @Override // wallet.core.jni.proto.MultiversX.SigningOutputOrBuilder
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

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<SigningOutput, Builder> implements SigningOutputOrBuilder {
            /* synthetic */ Builder(C68341 c68341) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.MultiversX.SigningOutputOrBuilder
            public String getEncoded() {
                return ((SigningOutput) this.instance).getEncoded();
            }

            @Override // wallet.core.jni.proto.MultiversX.SigningOutputOrBuilder
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

            @Override // wallet.core.jni.proto.MultiversX.SigningOutputOrBuilder
            public String getSignature() {
                return ((SigningOutput) this.instance).getSignature();
            }

            @Override // wallet.core.jni.proto.MultiversX.SigningOutputOrBuilder
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
            switch (C68341.f1810xa1df5c61[method.ordinal()]) {
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
