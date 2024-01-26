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
public final class FIO {

    /* loaded from: classes7.dex */
    public interface ActionOrBuilder extends MessageLiteOrBuilder {
        Action.AddPubAddress getAddPubAddressMessage();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        Action.MessageOneofCase getMessageOneofCase();

        Action.NewFundsRequest getNewFundsRequestMessage();

        Action.RegisterFioAddress getRegisterFioAddressMessage();

        Action.RenewFioAddress getRenewFioAddressMessage();

        Action.Transfer getTransferMessage();

        boolean hasAddPubAddressMessage();

        boolean hasNewFundsRequestMessage();

        boolean hasRegisterFioAddressMessage();

        boolean hasRenewFioAddressMessage();

        boolean hasTransferMessage();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface ChainParamsOrBuilder extends MessageLiteOrBuilder {
        ByteString getChainId();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        long getHeadBlockNumber();

        long getRefBlockPrefix();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface NewFundsContentOrBuilder extends MessageLiteOrBuilder {
        String getAmount();

        ByteString getAmountBytes();

        String getCoinSymbol();

        ByteString getCoinSymbolBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getHash();

        ByteString getHashBytes();

        String getMemo();

        ByteString getMemoBytes();

        String getOfflineUrl();

        ByteString getOfflineUrlBytes();

        String getPayeePublicAddress();

        ByteString getPayeePublicAddressBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface PublicAddressOrBuilder extends MessageLiteOrBuilder {
        String getAddress();

        ByteString getAddressBytes();

        String getCoinSymbol();

        ByteString getCoinSymbolBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        Action getAction();

        ChainParams getChainParams();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        int getExpiry();

        ByteString getPrivateKey();

        String getTpid();

        ByteString getTpidBytes();

        boolean hasAction();

        boolean hasChainParams();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface SigningOutputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        Common.SigningError getError();

        int getErrorValue();

        String getJson();

        ByteString getJsonBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private FIO() {
    }

    /* loaded from: classes7.dex */
    public static final class PublicAddress extends GeneratedMessageLite<PublicAddress, Builder> implements PublicAddressOrBuilder {
        public static final int ADDRESS_FIELD_NUMBER = 2;
        public static final int COIN_SYMBOL_FIELD_NUMBER = 1;
        private static final PublicAddress DEFAULT_INSTANCE;
        private static volatile Parser<PublicAddress> PARSER;
        private String coinSymbol_ = "";
        private String address_ = "";

        private PublicAddress() {
        }

        @Override // wallet.core.jni.proto.FIO.PublicAddressOrBuilder
        public String getCoinSymbol() {
            return this.coinSymbol_;
        }

        @Override // wallet.core.jni.proto.FIO.PublicAddressOrBuilder
        public ByteString getCoinSymbolBytes() {
            return ByteString.copyFromUtf8(this.coinSymbol_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCoinSymbol(String value) {
            value.getClass();
            this.coinSymbol_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCoinSymbol() {
            this.coinSymbol_ = getDefaultInstance().getCoinSymbol();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCoinSymbolBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.coinSymbol_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.FIO.PublicAddressOrBuilder
        public String getAddress() {
            return this.address_;
        }

        @Override // wallet.core.jni.proto.FIO.PublicAddressOrBuilder
        public ByteString getAddressBytes() {
            return ByteString.copyFromUtf8(this.address_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAddress(String value) {
            value.getClass();
            this.address_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAddress() {
            this.address_ = getDefaultInstance().getAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.address_ = value.toStringUtf8();
        }

        public static PublicAddress parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (PublicAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static PublicAddress parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (PublicAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static PublicAddress parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (PublicAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static PublicAddress parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (PublicAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static PublicAddress parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (PublicAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static PublicAddress parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (PublicAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static PublicAddress parseFrom(InputStream input) throws IOException {
            return (PublicAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static PublicAddress parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (PublicAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static PublicAddress parseDelimitedFrom(InputStream input) throws IOException {
            return (PublicAddress) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static PublicAddress parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (PublicAddress) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static PublicAddress parseFrom(CodedInputStream input) throws IOException {
            return (PublicAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static PublicAddress parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (PublicAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(PublicAddress prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<PublicAddress, Builder> implements PublicAddressOrBuilder {
            /* synthetic */ Builder(C79341 c79341) {
                this();
            }

            private Builder() {
                super(PublicAddress.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.FIO.PublicAddressOrBuilder
            public String getCoinSymbol() {
                return ((PublicAddress) this.instance).getCoinSymbol();
            }

            @Override // wallet.core.jni.proto.FIO.PublicAddressOrBuilder
            public ByteString getCoinSymbolBytes() {
                return ((PublicAddress) this.instance).getCoinSymbolBytes();
            }

            public Builder setCoinSymbol(String value) {
                copyOnWrite();
                ((PublicAddress) this.instance).setCoinSymbol(value);
                return this;
            }

            public Builder clearCoinSymbol() {
                copyOnWrite();
                ((PublicAddress) this.instance).clearCoinSymbol();
                return this;
            }

            public Builder setCoinSymbolBytes(ByteString value) {
                copyOnWrite();
                ((PublicAddress) this.instance).setCoinSymbolBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.FIO.PublicAddressOrBuilder
            public String getAddress() {
                return ((PublicAddress) this.instance).getAddress();
            }

            @Override // wallet.core.jni.proto.FIO.PublicAddressOrBuilder
            public ByteString getAddressBytes() {
                return ((PublicAddress) this.instance).getAddressBytes();
            }

            public Builder setAddress(String value) {
                copyOnWrite();
                ((PublicAddress) this.instance).setAddress(value);
                return this;
            }

            public Builder clearAddress() {
                copyOnWrite();
                ((PublicAddress) this.instance).clearAddress();
                return this;
            }

            public Builder setAddressBytes(ByteString value) {
                copyOnWrite();
                ((PublicAddress) this.instance).setAddressBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C79341.f2153xa1df5c61[method.ordinal()]) {
                case 1:
                    return new PublicAddress();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ", new Object[]{"coinSymbol_", "address_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<PublicAddress> parser = PARSER;
                    if (parser == null) {
                        synchronized (PublicAddress.class) {
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
            PublicAddress publicAddress = new PublicAddress();
            DEFAULT_INSTANCE = publicAddress;
            GeneratedMessageLite.registerDefaultInstance(PublicAddress.class, publicAddress);
        }

        public static PublicAddress getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<PublicAddress> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* renamed from: wallet.core.jni.proto.FIO$1 */
    /* loaded from: classes7.dex */
    static /* synthetic */ class C79341 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f2153xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f2153xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2153xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2153xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2153xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2153xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2153xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2153xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes7.dex */
    public static final class NewFundsContent extends GeneratedMessageLite<NewFundsContent, Builder> implements NewFundsContentOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 2;
        public static final int COIN_SYMBOL_FIELD_NUMBER = 3;
        private static final NewFundsContent DEFAULT_INSTANCE;
        public static final int HASH_FIELD_NUMBER = 5;
        public static final int MEMO_FIELD_NUMBER = 4;
        public static final int OFFLINE_URL_FIELD_NUMBER = 6;
        private static volatile Parser<NewFundsContent> PARSER = null;
        public static final int PAYEE_PUBLIC_ADDRESS_FIELD_NUMBER = 1;
        private String payeePublicAddress_ = "";
        private String amount_ = "";
        private String coinSymbol_ = "";
        private String memo_ = "";
        private String hash_ = "";
        private String offlineUrl_ = "";

        private NewFundsContent() {
        }

        @Override // wallet.core.jni.proto.FIO.NewFundsContentOrBuilder
        public String getPayeePublicAddress() {
            return this.payeePublicAddress_;
        }

        @Override // wallet.core.jni.proto.FIO.NewFundsContentOrBuilder
        public ByteString getPayeePublicAddressBytes() {
            return ByteString.copyFromUtf8(this.payeePublicAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPayeePublicAddress(String value) {
            value.getClass();
            this.payeePublicAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPayeePublicAddress() {
            this.payeePublicAddress_ = getDefaultInstance().getPayeePublicAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPayeePublicAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.payeePublicAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.FIO.NewFundsContentOrBuilder
        public String getAmount() {
            return this.amount_;
        }

        @Override // wallet.core.jni.proto.FIO.NewFundsContentOrBuilder
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

        @Override // wallet.core.jni.proto.FIO.NewFundsContentOrBuilder
        public String getCoinSymbol() {
            return this.coinSymbol_;
        }

        @Override // wallet.core.jni.proto.FIO.NewFundsContentOrBuilder
        public ByteString getCoinSymbolBytes() {
            return ByteString.copyFromUtf8(this.coinSymbol_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCoinSymbol(String value) {
            value.getClass();
            this.coinSymbol_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCoinSymbol() {
            this.coinSymbol_ = getDefaultInstance().getCoinSymbol();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCoinSymbolBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.coinSymbol_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.FIO.NewFundsContentOrBuilder
        public String getMemo() {
            return this.memo_;
        }

        @Override // wallet.core.jni.proto.FIO.NewFundsContentOrBuilder
        public ByteString getMemoBytes() {
            return ByteString.copyFromUtf8(this.memo_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMemo(String value) {
            value.getClass();
            this.memo_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMemo() {
            this.memo_ = getDefaultInstance().getMemo();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMemoBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.memo_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.FIO.NewFundsContentOrBuilder
        public String getHash() {
            return this.hash_;
        }

        @Override // wallet.core.jni.proto.FIO.NewFundsContentOrBuilder
        public ByteString getHashBytes() {
            return ByteString.copyFromUtf8(this.hash_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setHash(String value) {
            value.getClass();
            this.hash_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearHash() {
            this.hash_ = getDefaultInstance().getHash();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setHashBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.hash_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.FIO.NewFundsContentOrBuilder
        public String getOfflineUrl() {
            return this.offlineUrl_;
        }

        @Override // wallet.core.jni.proto.FIO.NewFundsContentOrBuilder
        public ByteString getOfflineUrlBytes() {
            return ByteString.copyFromUtf8(this.offlineUrl_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOfflineUrl(String value) {
            value.getClass();
            this.offlineUrl_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOfflineUrl() {
            this.offlineUrl_ = getDefaultInstance().getOfflineUrl();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOfflineUrlBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.offlineUrl_ = value.toStringUtf8();
        }

        public static NewFundsContent parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (NewFundsContent) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static NewFundsContent parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (NewFundsContent) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static NewFundsContent parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (NewFundsContent) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static NewFundsContent parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (NewFundsContent) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static NewFundsContent parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (NewFundsContent) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static NewFundsContent parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (NewFundsContent) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static NewFundsContent parseFrom(InputStream input) throws IOException {
            return (NewFundsContent) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static NewFundsContent parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (NewFundsContent) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static NewFundsContent parseDelimitedFrom(InputStream input) throws IOException {
            return (NewFundsContent) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static NewFundsContent parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (NewFundsContent) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static NewFundsContent parseFrom(CodedInputStream input) throws IOException {
            return (NewFundsContent) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static NewFundsContent parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (NewFundsContent) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(NewFundsContent prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<NewFundsContent, Builder> implements NewFundsContentOrBuilder {
            /* synthetic */ Builder(C79341 c79341) {
                this();
            }

            private Builder() {
                super(NewFundsContent.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.FIO.NewFundsContentOrBuilder
            public String getPayeePublicAddress() {
                return ((NewFundsContent) this.instance).getPayeePublicAddress();
            }

            @Override // wallet.core.jni.proto.FIO.NewFundsContentOrBuilder
            public ByteString getPayeePublicAddressBytes() {
                return ((NewFundsContent) this.instance).getPayeePublicAddressBytes();
            }

            public Builder setPayeePublicAddress(String value) {
                copyOnWrite();
                ((NewFundsContent) this.instance).setPayeePublicAddress(value);
                return this;
            }

            public Builder clearPayeePublicAddress() {
                copyOnWrite();
                ((NewFundsContent) this.instance).clearPayeePublicAddress();
                return this;
            }

            public Builder setPayeePublicAddressBytes(ByteString value) {
                copyOnWrite();
                ((NewFundsContent) this.instance).setPayeePublicAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.FIO.NewFundsContentOrBuilder
            public String getAmount() {
                return ((NewFundsContent) this.instance).getAmount();
            }

            @Override // wallet.core.jni.proto.FIO.NewFundsContentOrBuilder
            public ByteString getAmountBytes() {
                return ((NewFundsContent) this.instance).getAmountBytes();
            }

            public Builder setAmount(String value) {
                copyOnWrite();
                ((NewFundsContent) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((NewFundsContent) this.instance).clearAmount();
                return this;
            }

            public Builder setAmountBytes(ByteString value) {
                copyOnWrite();
                ((NewFundsContent) this.instance).setAmountBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.FIO.NewFundsContentOrBuilder
            public String getCoinSymbol() {
                return ((NewFundsContent) this.instance).getCoinSymbol();
            }

            @Override // wallet.core.jni.proto.FIO.NewFundsContentOrBuilder
            public ByteString getCoinSymbolBytes() {
                return ((NewFundsContent) this.instance).getCoinSymbolBytes();
            }

            public Builder setCoinSymbol(String value) {
                copyOnWrite();
                ((NewFundsContent) this.instance).setCoinSymbol(value);
                return this;
            }

            public Builder clearCoinSymbol() {
                copyOnWrite();
                ((NewFundsContent) this.instance).clearCoinSymbol();
                return this;
            }

            public Builder setCoinSymbolBytes(ByteString value) {
                copyOnWrite();
                ((NewFundsContent) this.instance).setCoinSymbolBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.FIO.NewFundsContentOrBuilder
            public String getMemo() {
                return ((NewFundsContent) this.instance).getMemo();
            }

            @Override // wallet.core.jni.proto.FIO.NewFundsContentOrBuilder
            public ByteString getMemoBytes() {
                return ((NewFundsContent) this.instance).getMemoBytes();
            }

            public Builder setMemo(String value) {
                copyOnWrite();
                ((NewFundsContent) this.instance).setMemo(value);
                return this;
            }

            public Builder clearMemo() {
                copyOnWrite();
                ((NewFundsContent) this.instance).clearMemo();
                return this;
            }

            public Builder setMemoBytes(ByteString value) {
                copyOnWrite();
                ((NewFundsContent) this.instance).setMemoBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.FIO.NewFundsContentOrBuilder
            public String getHash() {
                return ((NewFundsContent) this.instance).getHash();
            }

            @Override // wallet.core.jni.proto.FIO.NewFundsContentOrBuilder
            public ByteString getHashBytes() {
                return ((NewFundsContent) this.instance).getHashBytes();
            }

            public Builder setHash(String value) {
                copyOnWrite();
                ((NewFundsContent) this.instance).setHash(value);
                return this;
            }

            public Builder clearHash() {
                copyOnWrite();
                ((NewFundsContent) this.instance).clearHash();
                return this;
            }

            public Builder setHashBytes(ByteString value) {
                copyOnWrite();
                ((NewFundsContent) this.instance).setHashBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.FIO.NewFundsContentOrBuilder
            public String getOfflineUrl() {
                return ((NewFundsContent) this.instance).getOfflineUrl();
            }

            @Override // wallet.core.jni.proto.FIO.NewFundsContentOrBuilder
            public ByteString getOfflineUrlBytes() {
                return ((NewFundsContent) this.instance).getOfflineUrlBytes();
            }

            public Builder setOfflineUrl(String value) {
                copyOnWrite();
                ((NewFundsContent) this.instance).setOfflineUrl(value);
                return this;
            }

            public Builder clearOfflineUrl() {
                copyOnWrite();
                ((NewFundsContent) this.instance).clearOfflineUrl();
                return this;
            }

            public Builder setOfflineUrlBytes(ByteString value) {
                copyOnWrite();
                ((NewFundsContent) this.instance).setOfflineUrlBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C79341.f2153xa1df5c61[method.ordinal()]) {
                case 1:
                    return new NewFundsContent();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004Ȉ\u0005Ȉ\u0006Ȉ", new Object[]{"payeePublicAddress_", "amount_", "coinSymbol_", "memo_", "hash_", "offlineUrl_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<NewFundsContent> parser = PARSER;
                    if (parser == null) {
                        synchronized (NewFundsContent.class) {
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
            NewFundsContent newFundsContent = new NewFundsContent();
            DEFAULT_INSTANCE = newFundsContent;
            GeneratedMessageLite.registerDefaultInstance(NewFundsContent.class, newFundsContent);
        }

        public static NewFundsContent getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<NewFundsContent> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class Action extends GeneratedMessageLite<Action, Builder> implements ActionOrBuilder {
        public static final int ADD_PUB_ADDRESS_MESSAGE_FIELD_NUMBER = 2;
        private static final Action DEFAULT_INSTANCE;
        public static final int NEW_FUNDS_REQUEST_MESSAGE_FIELD_NUMBER = 5;
        private static volatile Parser<Action> PARSER = null;
        public static final int REGISTER_FIO_ADDRESS_MESSAGE_FIELD_NUMBER = 1;
        public static final int RENEW_FIO_ADDRESS_MESSAGE_FIELD_NUMBER = 4;
        public static final int TRANSFER_MESSAGE_FIELD_NUMBER = 3;
        private int messageOneofCase_ = 0;
        private Object messageOneof_;

        /* loaded from: classes7.dex */
        public interface AddPubAddressOrBuilder extends MessageLiteOrBuilder {
            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            long getFee();

            String getFioAddress();

            ByteString getFioAddressBytes();

            PublicAddress getPublicAddresses(int index);

            int getPublicAddressesCount();

            List<PublicAddress> getPublicAddressesList();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes7.dex */
        public interface NewFundsRequestOrBuilder extends MessageLiteOrBuilder {
            NewFundsContent getContent();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            long getFee();

            String getPayeeFioName();

            ByteString getPayeeFioNameBytes();

            String getPayerFioAddress();

            ByteString getPayerFioAddressBytes();

            String getPayerFioName();

            ByteString getPayerFioNameBytes();

            boolean hasContent();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes7.dex */
        public interface RegisterFioAddressOrBuilder extends MessageLiteOrBuilder {
            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            long getFee();

            String getFioAddress();

            ByteString getFioAddressBytes();

            String getOwnerFioPublicKey();

            ByteString getOwnerFioPublicKeyBytes();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes7.dex */
        public interface RenewFioAddressOrBuilder extends MessageLiteOrBuilder {
            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            long getFee();

            String getFioAddress();

            ByteString getFioAddressBytes();

            String getOwnerFioPublicKey();

            ByteString getOwnerFioPublicKeyBytes();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        /* loaded from: classes7.dex */
        public interface TransferOrBuilder extends MessageLiteOrBuilder {
            long getAmount();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ MessageLite getDefaultInstanceForType();

            long getFee();

            String getPayeePublicKey();

            ByteString getPayeePublicKeyBytes();

            @Override // com.google.protobuf.MessageLiteOrBuilder
            /* synthetic */ boolean isInitialized();
        }

        private Action() {
        }

        /* loaded from: classes7.dex */
        public static final class RegisterFioAddress extends GeneratedMessageLite<RegisterFioAddress, Builder> implements RegisterFioAddressOrBuilder {
            private static final RegisterFioAddress DEFAULT_INSTANCE;
            public static final int FEE_FIELD_NUMBER = 3;
            public static final int FIO_ADDRESS_FIELD_NUMBER = 1;
            public static final int OWNER_FIO_PUBLIC_KEY_FIELD_NUMBER = 2;
            private static volatile Parser<RegisterFioAddress> PARSER;
            private long fee_;
            private String fioAddress_ = "";
            private String ownerFioPublicKey_ = "";

            private RegisterFioAddress() {
            }

            @Override // wallet.core.jni.proto.FIO.Action.RegisterFioAddressOrBuilder
            public String getFioAddress() {
                return this.fioAddress_;
            }

            @Override // wallet.core.jni.proto.FIO.Action.RegisterFioAddressOrBuilder
            public ByteString getFioAddressBytes() {
                return ByteString.copyFromUtf8(this.fioAddress_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setFioAddress(String value) {
                value.getClass();
                this.fioAddress_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearFioAddress() {
                this.fioAddress_ = getDefaultInstance().getFioAddress();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setFioAddressBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.fioAddress_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.FIO.Action.RegisterFioAddressOrBuilder
            public String getOwnerFioPublicKey() {
                return this.ownerFioPublicKey_;
            }

            @Override // wallet.core.jni.proto.FIO.Action.RegisterFioAddressOrBuilder
            public ByteString getOwnerFioPublicKeyBytes() {
                return ByteString.copyFromUtf8(this.ownerFioPublicKey_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setOwnerFioPublicKey(String value) {
                value.getClass();
                this.ownerFioPublicKey_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearOwnerFioPublicKey() {
                this.ownerFioPublicKey_ = getDefaultInstance().getOwnerFioPublicKey();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setOwnerFioPublicKeyBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.ownerFioPublicKey_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.FIO.Action.RegisterFioAddressOrBuilder
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

            public static RegisterFioAddress parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (RegisterFioAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static RegisterFioAddress parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (RegisterFioAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static RegisterFioAddress parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (RegisterFioAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static RegisterFioAddress parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (RegisterFioAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static RegisterFioAddress parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (RegisterFioAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static RegisterFioAddress parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (RegisterFioAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static RegisterFioAddress parseFrom(InputStream input) throws IOException {
                return (RegisterFioAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static RegisterFioAddress parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (RegisterFioAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static RegisterFioAddress parseDelimitedFrom(InputStream input) throws IOException {
                return (RegisterFioAddress) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static RegisterFioAddress parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (RegisterFioAddress) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static RegisterFioAddress parseFrom(CodedInputStream input) throws IOException {
                return (RegisterFioAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static RegisterFioAddress parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (RegisterFioAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(RegisterFioAddress prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes7.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<RegisterFioAddress, Builder> implements RegisterFioAddressOrBuilder {
                /* synthetic */ Builder(C79341 c79341) {
                    this();
                }

                private Builder() {
                    super(RegisterFioAddress.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.FIO.Action.RegisterFioAddressOrBuilder
                public String getFioAddress() {
                    return ((RegisterFioAddress) this.instance).getFioAddress();
                }

                @Override // wallet.core.jni.proto.FIO.Action.RegisterFioAddressOrBuilder
                public ByteString getFioAddressBytes() {
                    return ((RegisterFioAddress) this.instance).getFioAddressBytes();
                }

                public Builder setFioAddress(String value) {
                    copyOnWrite();
                    ((RegisterFioAddress) this.instance).setFioAddress(value);
                    return this;
                }

                public Builder clearFioAddress() {
                    copyOnWrite();
                    ((RegisterFioAddress) this.instance).clearFioAddress();
                    return this;
                }

                public Builder setFioAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((RegisterFioAddress) this.instance).setFioAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.FIO.Action.RegisterFioAddressOrBuilder
                public String getOwnerFioPublicKey() {
                    return ((RegisterFioAddress) this.instance).getOwnerFioPublicKey();
                }

                @Override // wallet.core.jni.proto.FIO.Action.RegisterFioAddressOrBuilder
                public ByteString getOwnerFioPublicKeyBytes() {
                    return ((RegisterFioAddress) this.instance).getOwnerFioPublicKeyBytes();
                }

                public Builder setOwnerFioPublicKey(String value) {
                    copyOnWrite();
                    ((RegisterFioAddress) this.instance).setOwnerFioPublicKey(value);
                    return this;
                }

                public Builder clearOwnerFioPublicKey() {
                    copyOnWrite();
                    ((RegisterFioAddress) this.instance).clearOwnerFioPublicKey();
                    return this;
                }

                public Builder setOwnerFioPublicKeyBytes(ByteString value) {
                    copyOnWrite();
                    ((RegisterFioAddress) this.instance).setOwnerFioPublicKeyBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.FIO.Action.RegisterFioAddressOrBuilder
                public long getFee() {
                    return ((RegisterFioAddress) this.instance).getFee();
                }

                public Builder setFee(long value) {
                    copyOnWrite();
                    ((RegisterFioAddress) this.instance).setFee(value);
                    return this;
                }

                public Builder clearFee() {
                    copyOnWrite();
                    ((RegisterFioAddress) this.instance).clearFee();
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C79341.f2153xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new RegisterFioAddress();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\u0003", new Object[]{"fioAddress_", "ownerFioPublicKey_", "fee_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<RegisterFioAddress> parser = PARSER;
                        if (parser == null) {
                            synchronized (RegisterFioAddress.class) {
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
                RegisterFioAddress registerFioAddress = new RegisterFioAddress();
                DEFAULT_INSTANCE = registerFioAddress;
                GeneratedMessageLite.registerDefaultInstance(RegisterFioAddress.class, registerFioAddress);
            }

            public static RegisterFioAddress getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<RegisterFioAddress> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes7.dex */
        public static final class AddPubAddress extends GeneratedMessageLite<AddPubAddress, Builder> implements AddPubAddressOrBuilder {
            private static final AddPubAddress DEFAULT_INSTANCE;
            public static final int FEE_FIELD_NUMBER = 3;
            public static final int FIO_ADDRESS_FIELD_NUMBER = 1;
            private static volatile Parser<AddPubAddress> PARSER = null;
            public static final int PUBLIC_ADDRESSES_FIELD_NUMBER = 2;
            private long fee_;
            private String fioAddress_ = "";
            private Internal.ProtobufList<PublicAddress> publicAddresses_ = GeneratedMessageLite.emptyProtobufList();

            private AddPubAddress() {
            }

            @Override // wallet.core.jni.proto.FIO.Action.AddPubAddressOrBuilder
            public String getFioAddress() {
                return this.fioAddress_;
            }

            @Override // wallet.core.jni.proto.FIO.Action.AddPubAddressOrBuilder
            public ByteString getFioAddressBytes() {
                return ByteString.copyFromUtf8(this.fioAddress_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setFioAddress(String value) {
                value.getClass();
                this.fioAddress_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearFioAddress() {
                this.fioAddress_ = getDefaultInstance().getFioAddress();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setFioAddressBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.fioAddress_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.FIO.Action.AddPubAddressOrBuilder
            public List<PublicAddress> getPublicAddressesList() {
                return this.publicAddresses_;
            }

            public List<? extends PublicAddressOrBuilder> getPublicAddressesOrBuilderList() {
                return this.publicAddresses_;
            }

            @Override // wallet.core.jni.proto.FIO.Action.AddPubAddressOrBuilder
            public int getPublicAddressesCount() {
                return this.publicAddresses_.size();
            }

            @Override // wallet.core.jni.proto.FIO.Action.AddPubAddressOrBuilder
            public PublicAddress getPublicAddresses(int index) {
                return this.publicAddresses_.get(index);
            }

            public PublicAddressOrBuilder getPublicAddressesOrBuilder(int index) {
                return this.publicAddresses_.get(index);
            }

            private void ensurePublicAddressesIsMutable() {
                Internal.ProtobufList<PublicAddress> protobufList = this.publicAddresses_;
                if (protobufList.isModifiable()) {
                    return;
                }
                this.publicAddresses_ = GeneratedMessageLite.mutableCopy(protobufList);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setPublicAddresses(int index, PublicAddress value) {
                value.getClass();
                ensurePublicAddressesIsMutable();
                this.publicAddresses_.set(index, value);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addPublicAddresses(PublicAddress value) {
                value.getClass();
                ensurePublicAddressesIsMutable();
                this.publicAddresses_.add(value);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addPublicAddresses(int index, PublicAddress value) {
                value.getClass();
                ensurePublicAddressesIsMutable();
                this.publicAddresses_.add(index, value);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void addAllPublicAddresses(Iterable<? extends PublicAddress> values) {
                ensurePublicAddressesIsMutable();
                AbstractMessageLite.addAll((Iterable) values, (List) this.publicAddresses_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearPublicAddresses() {
                this.publicAddresses_ = GeneratedMessageLite.emptyProtobufList();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void removePublicAddresses(int index) {
                ensurePublicAddressesIsMutable();
                this.publicAddresses_.remove(index);
            }

            @Override // wallet.core.jni.proto.FIO.Action.AddPubAddressOrBuilder
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

            public static AddPubAddress parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (AddPubAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static AddPubAddress parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (AddPubAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static AddPubAddress parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (AddPubAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static AddPubAddress parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (AddPubAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static AddPubAddress parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (AddPubAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static AddPubAddress parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (AddPubAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static AddPubAddress parseFrom(InputStream input) throws IOException {
                return (AddPubAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static AddPubAddress parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (AddPubAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static AddPubAddress parseDelimitedFrom(InputStream input) throws IOException {
                return (AddPubAddress) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static AddPubAddress parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (AddPubAddress) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static AddPubAddress parseFrom(CodedInputStream input) throws IOException {
                return (AddPubAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static AddPubAddress parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (AddPubAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(AddPubAddress prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes7.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<AddPubAddress, Builder> implements AddPubAddressOrBuilder {
                /* synthetic */ Builder(C79341 c79341) {
                    this();
                }

                private Builder() {
                    super(AddPubAddress.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.FIO.Action.AddPubAddressOrBuilder
                public String getFioAddress() {
                    return ((AddPubAddress) this.instance).getFioAddress();
                }

                @Override // wallet.core.jni.proto.FIO.Action.AddPubAddressOrBuilder
                public ByteString getFioAddressBytes() {
                    return ((AddPubAddress) this.instance).getFioAddressBytes();
                }

                public Builder setFioAddress(String value) {
                    copyOnWrite();
                    ((AddPubAddress) this.instance).setFioAddress(value);
                    return this;
                }

                public Builder clearFioAddress() {
                    copyOnWrite();
                    ((AddPubAddress) this.instance).clearFioAddress();
                    return this;
                }

                public Builder setFioAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((AddPubAddress) this.instance).setFioAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.FIO.Action.AddPubAddressOrBuilder
                public List<PublicAddress> getPublicAddressesList() {
                    return Collections.unmodifiableList(((AddPubAddress) this.instance).getPublicAddressesList());
                }

                @Override // wallet.core.jni.proto.FIO.Action.AddPubAddressOrBuilder
                public int getPublicAddressesCount() {
                    return ((AddPubAddress) this.instance).getPublicAddressesCount();
                }

                @Override // wallet.core.jni.proto.FIO.Action.AddPubAddressOrBuilder
                public PublicAddress getPublicAddresses(int index) {
                    return ((AddPubAddress) this.instance).getPublicAddresses(index);
                }

                public Builder setPublicAddresses(int index, PublicAddress value) {
                    copyOnWrite();
                    ((AddPubAddress) this.instance).setPublicAddresses(index, value);
                    return this;
                }

                public Builder setPublicAddresses(int index, PublicAddress.Builder builderForValue) {
                    copyOnWrite();
                    ((AddPubAddress) this.instance).setPublicAddresses(index, builderForValue.build());
                    return this;
                }

                public Builder addPublicAddresses(PublicAddress value) {
                    copyOnWrite();
                    ((AddPubAddress) this.instance).addPublicAddresses(value);
                    return this;
                }

                public Builder addPublicAddresses(int index, PublicAddress value) {
                    copyOnWrite();
                    ((AddPubAddress) this.instance).addPublicAddresses(index, value);
                    return this;
                }

                public Builder addPublicAddresses(PublicAddress.Builder builderForValue) {
                    copyOnWrite();
                    ((AddPubAddress) this.instance).addPublicAddresses(builderForValue.build());
                    return this;
                }

                public Builder addPublicAddresses(int index, PublicAddress.Builder builderForValue) {
                    copyOnWrite();
                    ((AddPubAddress) this.instance).addPublicAddresses(index, builderForValue.build());
                    return this;
                }

                public Builder addAllPublicAddresses(Iterable<? extends PublicAddress> values) {
                    copyOnWrite();
                    ((AddPubAddress) this.instance).addAllPublicAddresses(values);
                    return this;
                }

                public Builder clearPublicAddresses() {
                    copyOnWrite();
                    ((AddPubAddress) this.instance).clearPublicAddresses();
                    return this;
                }

                public Builder removePublicAddresses(int index) {
                    copyOnWrite();
                    ((AddPubAddress) this.instance).removePublicAddresses(index);
                    return this;
                }

                @Override // wallet.core.jni.proto.FIO.Action.AddPubAddressOrBuilder
                public long getFee() {
                    return ((AddPubAddress) this.instance).getFee();
                }

                public Builder setFee(long value) {
                    copyOnWrite();
                    ((AddPubAddress) this.instance).setFee(value);
                    return this;
                }

                public Builder clearFee() {
                    copyOnWrite();
                    ((AddPubAddress) this.instance).clearFee();
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C79341.f2153xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new AddPubAddress();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0001\u0000\u0001Ȉ\u0002\u001b\u0003\u0003", new Object[]{"fioAddress_", "publicAddresses_", PublicAddress.class, "fee_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<AddPubAddress> parser = PARSER;
                        if (parser == null) {
                            synchronized (AddPubAddress.class) {
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
                AddPubAddress addPubAddress = new AddPubAddress();
                DEFAULT_INSTANCE = addPubAddress;
                GeneratedMessageLite.registerDefaultInstance(AddPubAddress.class, addPubAddress);
            }

            public static AddPubAddress getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<AddPubAddress> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes7.dex */
        public static final class Transfer extends GeneratedMessageLite<Transfer, Builder> implements TransferOrBuilder {
            public static final int AMOUNT_FIELD_NUMBER = 2;
            private static final Transfer DEFAULT_INSTANCE;
            public static final int FEE_FIELD_NUMBER = 3;
            private static volatile Parser<Transfer> PARSER = null;
            public static final int PAYEE_PUBLIC_KEY_FIELD_NUMBER = 1;
            private long amount_;
            private long fee_;
            private String payeePublicKey_ = "";

            private Transfer() {
            }

            @Override // wallet.core.jni.proto.FIO.Action.TransferOrBuilder
            public String getPayeePublicKey() {
                return this.payeePublicKey_;
            }

            @Override // wallet.core.jni.proto.FIO.Action.TransferOrBuilder
            public ByteString getPayeePublicKeyBytes() {
                return ByteString.copyFromUtf8(this.payeePublicKey_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setPayeePublicKey(String value) {
                value.getClass();
                this.payeePublicKey_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearPayeePublicKey() {
                this.payeePublicKey_ = getDefaultInstance().getPayeePublicKey();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setPayeePublicKeyBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.payeePublicKey_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.FIO.Action.TransferOrBuilder
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

            @Override // wallet.core.jni.proto.FIO.Action.TransferOrBuilder
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

            public static Transfer parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Transfer parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Transfer parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Transfer parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Transfer parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static Transfer parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static Transfer parseFrom(InputStream input) throws IOException {
                return (Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static Transfer parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Transfer parseDelimitedFrom(InputStream input) throws IOException {
                return (Transfer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static Transfer parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Transfer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Transfer parseFrom(CodedInputStream input) throws IOException {
                return (Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static Transfer parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (Transfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(Transfer prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes7.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<Transfer, Builder> implements TransferOrBuilder {
                /* synthetic */ Builder(C79341 c79341) {
                    this();
                }

                private Builder() {
                    super(Transfer.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.FIO.Action.TransferOrBuilder
                public String getPayeePublicKey() {
                    return ((Transfer) this.instance).getPayeePublicKey();
                }

                @Override // wallet.core.jni.proto.FIO.Action.TransferOrBuilder
                public ByteString getPayeePublicKeyBytes() {
                    return ((Transfer) this.instance).getPayeePublicKeyBytes();
                }

                public Builder setPayeePublicKey(String value) {
                    copyOnWrite();
                    ((Transfer) this.instance).setPayeePublicKey(value);
                    return this;
                }

                public Builder clearPayeePublicKey() {
                    copyOnWrite();
                    ((Transfer) this.instance).clearPayeePublicKey();
                    return this;
                }

                public Builder setPayeePublicKeyBytes(ByteString value) {
                    copyOnWrite();
                    ((Transfer) this.instance).setPayeePublicKeyBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.FIO.Action.TransferOrBuilder
                public long getAmount() {
                    return ((Transfer) this.instance).getAmount();
                }

                public Builder setAmount(long value) {
                    copyOnWrite();
                    ((Transfer) this.instance).setAmount(value);
                    return this;
                }

                public Builder clearAmount() {
                    copyOnWrite();
                    ((Transfer) this.instance).clearAmount();
                    return this;
                }

                @Override // wallet.core.jni.proto.FIO.Action.TransferOrBuilder
                public long getFee() {
                    return ((Transfer) this.instance).getFee();
                }

                public Builder setFee(long value) {
                    copyOnWrite();
                    ((Transfer) this.instance).setFee(value);
                    return this;
                }

                public Builder clearFee() {
                    copyOnWrite();
                    ((Transfer) this.instance).clearFee();
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C79341.f2153xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new Transfer();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\u0003\u0003\u0003", new Object[]{"payeePublicKey_", "amount_", "fee_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<Transfer> parser = PARSER;
                        if (parser == null) {
                            synchronized (Transfer.class) {
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
                Transfer transfer = new Transfer();
                DEFAULT_INSTANCE = transfer;
                GeneratedMessageLite.registerDefaultInstance(Transfer.class, transfer);
            }

            public static Transfer getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<Transfer> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes7.dex */
        public static final class RenewFioAddress extends GeneratedMessageLite<RenewFioAddress, Builder> implements RenewFioAddressOrBuilder {
            private static final RenewFioAddress DEFAULT_INSTANCE;
            public static final int FEE_FIELD_NUMBER = 3;
            public static final int FIO_ADDRESS_FIELD_NUMBER = 1;
            public static final int OWNER_FIO_PUBLIC_KEY_FIELD_NUMBER = 2;
            private static volatile Parser<RenewFioAddress> PARSER;
            private long fee_;
            private String fioAddress_ = "";
            private String ownerFioPublicKey_ = "";

            private RenewFioAddress() {
            }

            @Override // wallet.core.jni.proto.FIO.Action.RenewFioAddressOrBuilder
            public String getFioAddress() {
                return this.fioAddress_;
            }

            @Override // wallet.core.jni.proto.FIO.Action.RenewFioAddressOrBuilder
            public ByteString getFioAddressBytes() {
                return ByteString.copyFromUtf8(this.fioAddress_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setFioAddress(String value) {
                value.getClass();
                this.fioAddress_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearFioAddress() {
                this.fioAddress_ = getDefaultInstance().getFioAddress();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setFioAddressBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.fioAddress_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.FIO.Action.RenewFioAddressOrBuilder
            public String getOwnerFioPublicKey() {
                return this.ownerFioPublicKey_;
            }

            @Override // wallet.core.jni.proto.FIO.Action.RenewFioAddressOrBuilder
            public ByteString getOwnerFioPublicKeyBytes() {
                return ByteString.copyFromUtf8(this.ownerFioPublicKey_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setOwnerFioPublicKey(String value) {
                value.getClass();
                this.ownerFioPublicKey_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearOwnerFioPublicKey() {
                this.ownerFioPublicKey_ = getDefaultInstance().getOwnerFioPublicKey();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setOwnerFioPublicKeyBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.ownerFioPublicKey_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.FIO.Action.RenewFioAddressOrBuilder
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

            public static RenewFioAddress parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (RenewFioAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static RenewFioAddress parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (RenewFioAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static RenewFioAddress parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (RenewFioAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static RenewFioAddress parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (RenewFioAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static RenewFioAddress parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (RenewFioAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static RenewFioAddress parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (RenewFioAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static RenewFioAddress parseFrom(InputStream input) throws IOException {
                return (RenewFioAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static RenewFioAddress parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (RenewFioAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static RenewFioAddress parseDelimitedFrom(InputStream input) throws IOException {
                return (RenewFioAddress) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static RenewFioAddress parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (RenewFioAddress) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static RenewFioAddress parseFrom(CodedInputStream input) throws IOException {
                return (RenewFioAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static RenewFioAddress parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (RenewFioAddress) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(RenewFioAddress prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes7.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<RenewFioAddress, Builder> implements RenewFioAddressOrBuilder {
                /* synthetic */ Builder(C79341 c79341) {
                    this();
                }

                private Builder() {
                    super(RenewFioAddress.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.FIO.Action.RenewFioAddressOrBuilder
                public String getFioAddress() {
                    return ((RenewFioAddress) this.instance).getFioAddress();
                }

                @Override // wallet.core.jni.proto.FIO.Action.RenewFioAddressOrBuilder
                public ByteString getFioAddressBytes() {
                    return ((RenewFioAddress) this.instance).getFioAddressBytes();
                }

                public Builder setFioAddress(String value) {
                    copyOnWrite();
                    ((RenewFioAddress) this.instance).setFioAddress(value);
                    return this;
                }

                public Builder clearFioAddress() {
                    copyOnWrite();
                    ((RenewFioAddress) this.instance).clearFioAddress();
                    return this;
                }

                public Builder setFioAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((RenewFioAddress) this.instance).setFioAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.FIO.Action.RenewFioAddressOrBuilder
                public String getOwnerFioPublicKey() {
                    return ((RenewFioAddress) this.instance).getOwnerFioPublicKey();
                }

                @Override // wallet.core.jni.proto.FIO.Action.RenewFioAddressOrBuilder
                public ByteString getOwnerFioPublicKeyBytes() {
                    return ((RenewFioAddress) this.instance).getOwnerFioPublicKeyBytes();
                }

                public Builder setOwnerFioPublicKey(String value) {
                    copyOnWrite();
                    ((RenewFioAddress) this.instance).setOwnerFioPublicKey(value);
                    return this;
                }

                public Builder clearOwnerFioPublicKey() {
                    copyOnWrite();
                    ((RenewFioAddress) this.instance).clearOwnerFioPublicKey();
                    return this;
                }

                public Builder setOwnerFioPublicKeyBytes(ByteString value) {
                    copyOnWrite();
                    ((RenewFioAddress) this.instance).setOwnerFioPublicKeyBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.FIO.Action.RenewFioAddressOrBuilder
                public long getFee() {
                    return ((RenewFioAddress) this.instance).getFee();
                }

                public Builder setFee(long value) {
                    copyOnWrite();
                    ((RenewFioAddress) this.instance).setFee(value);
                    return this;
                }

                public Builder clearFee() {
                    copyOnWrite();
                    ((RenewFioAddress) this.instance).clearFee();
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C79341.f2153xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new RenewFioAddress();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\u0003", new Object[]{"fioAddress_", "ownerFioPublicKey_", "fee_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<RenewFioAddress> parser = PARSER;
                        if (parser == null) {
                            synchronized (RenewFioAddress.class) {
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
                RenewFioAddress renewFioAddress = new RenewFioAddress();
                DEFAULT_INSTANCE = renewFioAddress;
                GeneratedMessageLite.registerDefaultInstance(RenewFioAddress.class, renewFioAddress);
            }

            public static RenewFioAddress getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<RenewFioAddress> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes7.dex */
        public static final class NewFundsRequest extends GeneratedMessageLite<NewFundsRequest, Builder> implements NewFundsRequestOrBuilder {
            public static final int CONTENT_FIELD_NUMBER = 4;
            private static final NewFundsRequest DEFAULT_INSTANCE;
            public static final int FEE_FIELD_NUMBER = 5;
            private static volatile Parser<NewFundsRequest> PARSER = null;
            public static final int PAYEE_FIO_NAME_FIELD_NUMBER = 3;
            public static final int PAYER_FIO_ADDRESS_FIELD_NUMBER = 2;
            public static final int PAYER_FIO_NAME_FIELD_NUMBER = 1;
            private NewFundsContent content_;
            private long fee_;
            private String payerFioName_ = "";
            private String payerFioAddress_ = "";
            private String payeeFioName_ = "";

            private NewFundsRequest() {
            }

            @Override // wallet.core.jni.proto.FIO.Action.NewFundsRequestOrBuilder
            public String getPayerFioName() {
                return this.payerFioName_;
            }

            @Override // wallet.core.jni.proto.FIO.Action.NewFundsRequestOrBuilder
            public ByteString getPayerFioNameBytes() {
                return ByteString.copyFromUtf8(this.payerFioName_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setPayerFioName(String value) {
                value.getClass();
                this.payerFioName_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearPayerFioName() {
                this.payerFioName_ = getDefaultInstance().getPayerFioName();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setPayerFioNameBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.payerFioName_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.FIO.Action.NewFundsRequestOrBuilder
            public String getPayerFioAddress() {
                return this.payerFioAddress_;
            }

            @Override // wallet.core.jni.proto.FIO.Action.NewFundsRequestOrBuilder
            public ByteString getPayerFioAddressBytes() {
                return ByteString.copyFromUtf8(this.payerFioAddress_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setPayerFioAddress(String value) {
                value.getClass();
                this.payerFioAddress_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearPayerFioAddress() {
                this.payerFioAddress_ = getDefaultInstance().getPayerFioAddress();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setPayerFioAddressBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.payerFioAddress_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.FIO.Action.NewFundsRequestOrBuilder
            public String getPayeeFioName() {
                return this.payeeFioName_;
            }

            @Override // wallet.core.jni.proto.FIO.Action.NewFundsRequestOrBuilder
            public ByteString getPayeeFioNameBytes() {
                return ByteString.copyFromUtf8(this.payeeFioName_);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setPayeeFioName(String value) {
                value.getClass();
                this.payeeFioName_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearPayeeFioName() {
                this.payeeFioName_ = getDefaultInstance().getPayeeFioName();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setPayeeFioNameBytes(ByteString value) {
                AbstractMessageLite.checkByteStringIsUtf8(value);
                this.payeeFioName_ = value.toStringUtf8();
            }

            @Override // wallet.core.jni.proto.FIO.Action.NewFundsRequestOrBuilder
            public boolean hasContent() {
                return this.content_ != null;
            }

            @Override // wallet.core.jni.proto.FIO.Action.NewFundsRequestOrBuilder
            public NewFundsContent getContent() {
                NewFundsContent newFundsContent = this.content_;
                return newFundsContent == null ? NewFundsContent.getDefaultInstance() : newFundsContent;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void setContent(NewFundsContent value) {
                value.getClass();
                this.content_ = value;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void mergeContent(NewFundsContent value) {
                value.getClass();
                NewFundsContent newFundsContent = this.content_;
                if (newFundsContent != null && newFundsContent != NewFundsContent.getDefaultInstance()) {
                    this.content_ = NewFundsContent.newBuilder(this.content_).mergeFrom((NewFundsContent.Builder) value).buildPartial();
                } else {
                    this.content_ = value;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearContent() {
                this.content_ = null;
            }

            @Override // wallet.core.jni.proto.FIO.Action.NewFundsRequestOrBuilder
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

            public static NewFundsRequest parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
                return (NewFundsRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static NewFundsRequest parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (NewFundsRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static NewFundsRequest parseFrom(ByteString data) throws InvalidProtocolBufferException {
                return (NewFundsRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static NewFundsRequest parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (NewFundsRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static NewFundsRequest parseFrom(byte[] data) throws InvalidProtocolBufferException {
                return (NewFundsRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
            }

            public static NewFundsRequest parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
                return (NewFundsRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
            }

            public static NewFundsRequest parseFrom(InputStream input) throws IOException {
                return (NewFundsRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static NewFundsRequest parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (NewFundsRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static NewFundsRequest parseDelimitedFrom(InputStream input) throws IOException {
                return (NewFundsRequest) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
            }

            public static NewFundsRequest parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (NewFundsRequest) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static NewFundsRequest parseFrom(CodedInputStream input) throws IOException {
                return (NewFundsRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
            }

            public static NewFundsRequest parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
                return (NewFundsRequest) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static Builder newBuilder(NewFundsRequest prototype) {
                return DEFAULT_INSTANCE.createBuilder(prototype);
            }

            /* loaded from: classes7.dex */
            public static final class Builder extends GeneratedMessageLite.Builder<NewFundsRequest, Builder> implements NewFundsRequestOrBuilder {
                /* synthetic */ Builder(C79341 c79341) {
                    this();
                }

                private Builder() {
                    super(NewFundsRequest.DEFAULT_INSTANCE);
                }

                @Override // wallet.core.jni.proto.FIO.Action.NewFundsRequestOrBuilder
                public String getPayerFioName() {
                    return ((NewFundsRequest) this.instance).getPayerFioName();
                }

                @Override // wallet.core.jni.proto.FIO.Action.NewFundsRequestOrBuilder
                public ByteString getPayerFioNameBytes() {
                    return ((NewFundsRequest) this.instance).getPayerFioNameBytes();
                }

                public Builder setPayerFioName(String value) {
                    copyOnWrite();
                    ((NewFundsRequest) this.instance).setPayerFioName(value);
                    return this;
                }

                public Builder clearPayerFioName() {
                    copyOnWrite();
                    ((NewFundsRequest) this.instance).clearPayerFioName();
                    return this;
                }

                public Builder setPayerFioNameBytes(ByteString value) {
                    copyOnWrite();
                    ((NewFundsRequest) this.instance).setPayerFioNameBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.FIO.Action.NewFundsRequestOrBuilder
                public String getPayerFioAddress() {
                    return ((NewFundsRequest) this.instance).getPayerFioAddress();
                }

                @Override // wallet.core.jni.proto.FIO.Action.NewFundsRequestOrBuilder
                public ByteString getPayerFioAddressBytes() {
                    return ((NewFundsRequest) this.instance).getPayerFioAddressBytes();
                }

                public Builder setPayerFioAddress(String value) {
                    copyOnWrite();
                    ((NewFundsRequest) this.instance).setPayerFioAddress(value);
                    return this;
                }

                public Builder clearPayerFioAddress() {
                    copyOnWrite();
                    ((NewFundsRequest) this.instance).clearPayerFioAddress();
                    return this;
                }

                public Builder setPayerFioAddressBytes(ByteString value) {
                    copyOnWrite();
                    ((NewFundsRequest) this.instance).setPayerFioAddressBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.FIO.Action.NewFundsRequestOrBuilder
                public String getPayeeFioName() {
                    return ((NewFundsRequest) this.instance).getPayeeFioName();
                }

                @Override // wallet.core.jni.proto.FIO.Action.NewFundsRequestOrBuilder
                public ByteString getPayeeFioNameBytes() {
                    return ((NewFundsRequest) this.instance).getPayeeFioNameBytes();
                }

                public Builder setPayeeFioName(String value) {
                    copyOnWrite();
                    ((NewFundsRequest) this.instance).setPayeeFioName(value);
                    return this;
                }

                public Builder clearPayeeFioName() {
                    copyOnWrite();
                    ((NewFundsRequest) this.instance).clearPayeeFioName();
                    return this;
                }

                public Builder setPayeeFioNameBytes(ByteString value) {
                    copyOnWrite();
                    ((NewFundsRequest) this.instance).setPayeeFioNameBytes(value);
                    return this;
                }

                @Override // wallet.core.jni.proto.FIO.Action.NewFundsRequestOrBuilder
                public boolean hasContent() {
                    return ((NewFundsRequest) this.instance).hasContent();
                }

                @Override // wallet.core.jni.proto.FIO.Action.NewFundsRequestOrBuilder
                public NewFundsContent getContent() {
                    return ((NewFundsRequest) this.instance).getContent();
                }

                public Builder setContent(NewFundsContent value) {
                    copyOnWrite();
                    ((NewFundsRequest) this.instance).setContent(value);
                    return this;
                }

                public Builder setContent(NewFundsContent.Builder builderForValue) {
                    copyOnWrite();
                    ((NewFundsRequest) this.instance).setContent(builderForValue.build());
                    return this;
                }

                public Builder mergeContent(NewFundsContent value) {
                    copyOnWrite();
                    ((NewFundsRequest) this.instance).mergeContent(value);
                    return this;
                }

                public Builder clearContent() {
                    copyOnWrite();
                    ((NewFundsRequest) this.instance).clearContent();
                    return this;
                }

                @Override // wallet.core.jni.proto.FIO.Action.NewFundsRequestOrBuilder
                public long getFee() {
                    return ((NewFundsRequest) this.instance).getFee();
                }

                public Builder setFee(long value) {
                    copyOnWrite();
                    ((NewFundsRequest) this.instance).setFee(value);
                    return this;
                }

                public Builder clearFee() {
                    copyOnWrite();
                    ((NewFundsRequest) this.instance).clearFee();
                    return this;
                }
            }

            @Override // com.google.protobuf.GeneratedMessageLite
            protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
                switch (C79341.f2153xa1df5c61[method.ordinal()]) {
                    case 1:
                        return new NewFundsRequest();
                    case 2:
                        return new Builder(null);
                    case 3:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004\t\u0005\u0003", new Object[]{"payerFioName_", "payerFioAddress_", "payeeFioName_", "content_", "fee_"});
                    case 4:
                        return DEFAULT_INSTANCE;
                    case 5:
                        Parser<NewFundsRequest> parser = PARSER;
                        if (parser == null) {
                            synchronized (NewFundsRequest.class) {
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
                NewFundsRequest newFundsRequest = new NewFundsRequest();
                DEFAULT_INSTANCE = newFundsRequest;
                GeneratedMessageLite.registerDefaultInstance(NewFundsRequest.class, newFundsRequest);
            }

            public static NewFundsRequest getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static Parser<NewFundsRequest> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }
        }

        /* loaded from: classes7.dex */
        public enum MessageOneofCase {
            REGISTER_FIO_ADDRESS_MESSAGE(1),
            ADD_PUB_ADDRESS_MESSAGE(2),
            TRANSFER_MESSAGE(3),
            RENEW_FIO_ADDRESS_MESSAGE(4),
            NEW_FUNDS_REQUEST_MESSAGE(5),
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
                    if (value != 1) {
                        if (value != 2) {
                            if (value != 3) {
                                if (value != 4) {
                                    if (value != 5) {
                                        return null;
                                    }
                                    return NEW_FUNDS_REQUEST_MESSAGE;
                                }
                                return RENEW_FIO_ADDRESS_MESSAGE;
                            }
                            return TRANSFER_MESSAGE;
                        }
                        return ADD_PUB_ADDRESS_MESSAGE;
                    }
                    return REGISTER_FIO_ADDRESS_MESSAGE;
                }
                return MESSAGEONEOF_NOT_SET;
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.FIO.ActionOrBuilder
        public MessageOneofCase getMessageOneofCase() {
            return MessageOneofCase.forNumber(this.messageOneofCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMessageOneof() {
            this.messageOneofCase_ = 0;
            this.messageOneof_ = null;
        }

        @Override // wallet.core.jni.proto.FIO.ActionOrBuilder
        public boolean hasRegisterFioAddressMessage() {
            return this.messageOneofCase_ == 1;
        }

        @Override // wallet.core.jni.proto.FIO.ActionOrBuilder
        public RegisterFioAddress getRegisterFioAddressMessage() {
            if (this.messageOneofCase_ == 1) {
                return (RegisterFioAddress) this.messageOneof_;
            }
            return RegisterFioAddress.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRegisterFioAddressMessage(RegisterFioAddress value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeRegisterFioAddressMessage(RegisterFioAddress value) {
            value.getClass();
            if (this.messageOneofCase_ == 1 && this.messageOneof_ != RegisterFioAddress.getDefaultInstance()) {
                this.messageOneof_ = RegisterFioAddress.newBuilder((RegisterFioAddress) this.messageOneof_).mergeFrom((RegisterFioAddress.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearRegisterFioAddressMessage() {
            if (this.messageOneofCase_ == 1) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.FIO.ActionOrBuilder
        public boolean hasAddPubAddressMessage() {
            return this.messageOneofCase_ == 2;
        }

        @Override // wallet.core.jni.proto.FIO.ActionOrBuilder
        public AddPubAddress getAddPubAddressMessage() {
            if (this.messageOneofCase_ == 2) {
                return (AddPubAddress) this.messageOneof_;
            }
            return AddPubAddress.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAddPubAddressMessage(AddPubAddress value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeAddPubAddressMessage(AddPubAddress value) {
            value.getClass();
            if (this.messageOneofCase_ == 2 && this.messageOneof_ != AddPubAddress.getDefaultInstance()) {
                this.messageOneof_ = AddPubAddress.newBuilder((AddPubAddress) this.messageOneof_).mergeFrom((AddPubAddress.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAddPubAddressMessage() {
            if (this.messageOneofCase_ == 2) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.FIO.ActionOrBuilder
        public boolean hasTransferMessage() {
            return this.messageOneofCase_ == 3;
        }

        @Override // wallet.core.jni.proto.FIO.ActionOrBuilder
        public Transfer getTransferMessage() {
            if (this.messageOneofCase_ == 3) {
                return (Transfer) this.messageOneof_;
            }
            return Transfer.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransferMessage(Transfer value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTransferMessage(Transfer value) {
            value.getClass();
            if (this.messageOneofCase_ == 3 && this.messageOneof_ != Transfer.getDefaultInstance()) {
                this.messageOneof_ = Transfer.newBuilder((Transfer) this.messageOneof_).mergeFrom((Transfer.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransferMessage() {
            if (this.messageOneofCase_ == 3) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.FIO.ActionOrBuilder
        public boolean hasRenewFioAddressMessage() {
            return this.messageOneofCase_ == 4;
        }

        @Override // wallet.core.jni.proto.FIO.ActionOrBuilder
        public RenewFioAddress getRenewFioAddressMessage() {
            if (this.messageOneofCase_ == 4) {
                return (RenewFioAddress) this.messageOneof_;
            }
            return RenewFioAddress.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRenewFioAddressMessage(RenewFioAddress value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeRenewFioAddressMessage(RenewFioAddress value) {
            value.getClass();
            if (this.messageOneofCase_ == 4 && this.messageOneof_ != RenewFioAddress.getDefaultInstance()) {
                this.messageOneof_ = RenewFioAddress.newBuilder((RenewFioAddress) this.messageOneof_).mergeFrom((RenewFioAddress.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearRenewFioAddressMessage() {
            if (this.messageOneofCase_ == 4) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.FIO.ActionOrBuilder
        public boolean hasNewFundsRequestMessage() {
            return this.messageOneofCase_ == 5;
        }

        @Override // wallet.core.jni.proto.FIO.ActionOrBuilder
        public NewFundsRequest getNewFundsRequestMessage() {
            if (this.messageOneofCase_ == 5) {
                return (NewFundsRequest) this.messageOneof_;
            }
            return NewFundsRequest.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setNewFundsRequestMessage(NewFundsRequest value) {
            value.getClass();
            this.messageOneof_ = value;
            this.messageOneofCase_ = 5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeNewFundsRequestMessage(NewFundsRequest value) {
            value.getClass();
            if (this.messageOneofCase_ == 5 && this.messageOneof_ != NewFundsRequest.getDefaultInstance()) {
                this.messageOneof_ = NewFundsRequest.newBuilder((NewFundsRequest) this.messageOneof_).mergeFrom((NewFundsRequest.Builder) value).buildPartial();
            } else {
                this.messageOneof_ = value;
            }
            this.messageOneofCase_ = 5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearNewFundsRequestMessage() {
            if (this.messageOneofCase_ == 5) {
                this.messageOneofCase_ = 0;
                this.messageOneof_ = null;
            }
        }

        public static Action parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (Action) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Action parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Action) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Action parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (Action) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Action parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Action) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Action parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (Action) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Action parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Action) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Action parseFrom(InputStream input) throws IOException {
            return (Action) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Action parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Action) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Action parseDelimitedFrom(InputStream input) throws IOException {
            return (Action) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static Action parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Action) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Action parseFrom(CodedInputStream input) throws IOException {
            return (Action) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Action parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Action) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(Action prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Action, Builder> implements ActionOrBuilder {
            /* synthetic */ Builder(C79341 c79341) {
                this();
            }

            private Builder() {
                super(Action.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.FIO.ActionOrBuilder
            public MessageOneofCase getMessageOneofCase() {
                return ((Action) this.instance).getMessageOneofCase();
            }

            public Builder clearMessageOneof() {
                copyOnWrite();
                ((Action) this.instance).clearMessageOneof();
                return this;
            }

            @Override // wallet.core.jni.proto.FIO.ActionOrBuilder
            public boolean hasRegisterFioAddressMessage() {
                return ((Action) this.instance).hasRegisterFioAddressMessage();
            }

            @Override // wallet.core.jni.proto.FIO.ActionOrBuilder
            public RegisterFioAddress getRegisterFioAddressMessage() {
                return ((Action) this.instance).getRegisterFioAddressMessage();
            }

            public Builder setRegisterFioAddressMessage(RegisterFioAddress value) {
                copyOnWrite();
                ((Action) this.instance).setRegisterFioAddressMessage(value);
                return this;
            }

            public Builder setRegisterFioAddressMessage(RegisterFioAddress.Builder builderForValue) {
                copyOnWrite();
                ((Action) this.instance).setRegisterFioAddressMessage(builderForValue.build());
                return this;
            }

            public Builder mergeRegisterFioAddressMessage(RegisterFioAddress value) {
                copyOnWrite();
                ((Action) this.instance).mergeRegisterFioAddressMessage(value);
                return this;
            }

            public Builder clearRegisterFioAddressMessage() {
                copyOnWrite();
                ((Action) this.instance).clearRegisterFioAddressMessage();
                return this;
            }

            @Override // wallet.core.jni.proto.FIO.ActionOrBuilder
            public boolean hasAddPubAddressMessage() {
                return ((Action) this.instance).hasAddPubAddressMessage();
            }

            @Override // wallet.core.jni.proto.FIO.ActionOrBuilder
            public AddPubAddress getAddPubAddressMessage() {
                return ((Action) this.instance).getAddPubAddressMessage();
            }

            public Builder setAddPubAddressMessage(AddPubAddress value) {
                copyOnWrite();
                ((Action) this.instance).setAddPubAddressMessage(value);
                return this;
            }

            public Builder setAddPubAddressMessage(AddPubAddress.Builder builderForValue) {
                copyOnWrite();
                ((Action) this.instance).setAddPubAddressMessage(builderForValue.build());
                return this;
            }

            public Builder mergeAddPubAddressMessage(AddPubAddress value) {
                copyOnWrite();
                ((Action) this.instance).mergeAddPubAddressMessage(value);
                return this;
            }

            public Builder clearAddPubAddressMessage() {
                copyOnWrite();
                ((Action) this.instance).clearAddPubAddressMessage();
                return this;
            }

            @Override // wallet.core.jni.proto.FIO.ActionOrBuilder
            public boolean hasTransferMessage() {
                return ((Action) this.instance).hasTransferMessage();
            }

            @Override // wallet.core.jni.proto.FIO.ActionOrBuilder
            public Transfer getTransferMessage() {
                return ((Action) this.instance).getTransferMessage();
            }

            public Builder setTransferMessage(Transfer value) {
                copyOnWrite();
                ((Action) this.instance).setTransferMessage(value);
                return this;
            }

            public Builder setTransferMessage(Transfer.Builder builderForValue) {
                copyOnWrite();
                ((Action) this.instance).setTransferMessage(builderForValue.build());
                return this;
            }

            public Builder mergeTransferMessage(Transfer value) {
                copyOnWrite();
                ((Action) this.instance).mergeTransferMessage(value);
                return this;
            }

            public Builder clearTransferMessage() {
                copyOnWrite();
                ((Action) this.instance).clearTransferMessage();
                return this;
            }

            @Override // wallet.core.jni.proto.FIO.ActionOrBuilder
            public boolean hasRenewFioAddressMessage() {
                return ((Action) this.instance).hasRenewFioAddressMessage();
            }

            @Override // wallet.core.jni.proto.FIO.ActionOrBuilder
            public RenewFioAddress getRenewFioAddressMessage() {
                return ((Action) this.instance).getRenewFioAddressMessage();
            }

            public Builder setRenewFioAddressMessage(RenewFioAddress value) {
                copyOnWrite();
                ((Action) this.instance).setRenewFioAddressMessage(value);
                return this;
            }

            public Builder setRenewFioAddressMessage(RenewFioAddress.Builder builderForValue) {
                copyOnWrite();
                ((Action) this.instance).setRenewFioAddressMessage(builderForValue.build());
                return this;
            }

            public Builder mergeRenewFioAddressMessage(RenewFioAddress value) {
                copyOnWrite();
                ((Action) this.instance).mergeRenewFioAddressMessage(value);
                return this;
            }

            public Builder clearRenewFioAddressMessage() {
                copyOnWrite();
                ((Action) this.instance).clearRenewFioAddressMessage();
                return this;
            }

            @Override // wallet.core.jni.proto.FIO.ActionOrBuilder
            public boolean hasNewFundsRequestMessage() {
                return ((Action) this.instance).hasNewFundsRequestMessage();
            }

            @Override // wallet.core.jni.proto.FIO.ActionOrBuilder
            public NewFundsRequest getNewFundsRequestMessage() {
                return ((Action) this.instance).getNewFundsRequestMessage();
            }

            public Builder setNewFundsRequestMessage(NewFundsRequest value) {
                copyOnWrite();
                ((Action) this.instance).setNewFundsRequestMessage(value);
                return this;
            }

            public Builder setNewFundsRequestMessage(NewFundsRequest.Builder builderForValue) {
                copyOnWrite();
                ((Action) this.instance).setNewFundsRequestMessage(builderForValue.build());
                return this;
            }

            public Builder mergeNewFundsRequestMessage(NewFundsRequest value) {
                copyOnWrite();
                ((Action) this.instance).mergeNewFundsRequestMessage(value);
                return this;
            }

            public Builder clearNewFundsRequestMessage() {
                copyOnWrite();
                ((Action) this.instance).clearNewFundsRequestMessage();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C79341.f2153xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Action();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0001\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000", new Object[]{"messageOneof_", "messageOneofCase_", RegisterFioAddress.class, AddPubAddress.class, Transfer.class, RenewFioAddress.class, NewFundsRequest.class});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Action> parser = PARSER;
                    if (parser == null) {
                        synchronized (Action.class) {
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
            Action action = new Action();
            DEFAULT_INSTANCE = action;
            GeneratedMessageLite.registerDefaultInstance(Action.class, action);
        }

        public static Action getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Action> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class ChainParams extends GeneratedMessageLite<ChainParams, Builder> implements ChainParamsOrBuilder {
        public static final int CHAIN_ID_FIELD_NUMBER = 1;
        private static final ChainParams DEFAULT_INSTANCE;
        public static final int HEAD_BLOCK_NUMBER_FIELD_NUMBER = 2;
        private static volatile Parser<ChainParams> PARSER = null;
        public static final int REF_BLOCK_PREFIX_FIELD_NUMBER = 3;
        private ByteString chainId_ = ByteString.EMPTY;
        private long headBlockNumber_;
        private long refBlockPrefix_;

        private ChainParams() {
        }

        @Override // wallet.core.jni.proto.FIO.ChainParamsOrBuilder
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

        @Override // wallet.core.jni.proto.FIO.ChainParamsOrBuilder
        public long getHeadBlockNumber() {
            return this.headBlockNumber_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setHeadBlockNumber(long value) {
            this.headBlockNumber_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearHeadBlockNumber() {
            this.headBlockNumber_ = 0L;
        }

        @Override // wallet.core.jni.proto.FIO.ChainParamsOrBuilder
        public long getRefBlockPrefix() {
            return this.refBlockPrefix_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRefBlockPrefix(long value) {
            this.refBlockPrefix_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearRefBlockPrefix() {
            this.refBlockPrefix_ = 0L;
        }

        public static ChainParams parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (ChainParams) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static ChainParams parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (ChainParams) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static ChainParams parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (ChainParams) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static ChainParams parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (ChainParams) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static ChainParams parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (ChainParams) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static ChainParams parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (ChainParams) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static ChainParams parseFrom(InputStream input) throws IOException {
            return (ChainParams) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static ChainParams parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ChainParams) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static ChainParams parseDelimitedFrom(InputStream input) throws IOException {
            return (ChainParams) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static ChainParams parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ChainParams) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static ChainParams parseFrom(CodedInputStream input) throws IOException {
            return (ChainParams) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static ChainParams parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (ChainParams) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(ChainParams prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<ChainParams, Builder> implements ChainParamsOrBuilder {
            /* synthetic */ Builder(C79341 c79341) {
                this();
            }

            private Builder() {
                super(ChainParams.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.FIO.ChainParamsOrBuilder
            public ByteString getChainId() {
                return ((ChainParams) this.instance).getChainId();
            }

            public Builder setChainId(ByteString value) {
                copyOnWrite();
                ((ChainParams) this.instance).setChainId(value);
                return this;
            }

            public Builder clearChainId() {
                copyOnWrite();
                ((ChainParams) this.instance).clearChainId();
                return this;
            }

            @Override // wallet.core.jni.proto.FIO.ChainParamsOrBuilder
            public long getHeadBlockNumber() {
                return ((ChainParams) this.instance).getHeadBlockNumber();
            }

            public Builder setHeadBlockNumber(long value) {
                copyOnWrite();
                ((ChainParams) this.instance).setHeadBlockNumber(value);
                return this;
            }

            public Builder clearHeadBlockNumber() {
                copyOnWrite();
                ((ChainParams) this.instance).clearHeadBlockNumber();
                return this;
            }

            @Override // wallet.core.jni.proto.FIO.ChainParamsOrBuilder
            public long getRefBlockPrefix() {
                return ((ChainParams) this.instance).getRefBlockPrefix();
            }

            public Builder setRefBlockPrefix(long value) {
                copyOnWrite();
                ((ChainParams) this.instance).setRefBlockPrefix(value);
                return this;
            }

            public Builder clearRefBlockPrefix() {
                copyOnWrite();
                ((ChainParams) this.instance).clearRefBlockPrefix();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C79341.f2153xa1df5c61[method.ordinal()]) {
                case 1:
                    return new ChainParams();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\n\u0002\u0003\u0003\u0003", new Object[]{"chainId_", "headBlockNumber_", "refBlockPrefix_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<ChainParams> parser = PARSER;
                    if (parser == null) {
                        synchronized (ChainParams.class) {
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
            ChainParams chainParams = new ChainParams();
            DEFAULT_INSTANCE = chainParams;
            GeneratedMessageLite.registerDefaultInstance(ChainParams.class, chainParams);
        }

        public static ChainParams getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<ChainParams> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        public static final int ACTION_FIELD_NUMBER = 5;
        public static final int CHAIN_PARAMS_FIELD_NUMBER = 2;
        private static final SigningInput DEFAULT_INSTANCE;
        public static final int EXPIRY_FIELD_NUMBER = 1;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PRIVATE_KEY_FIELD_NUMBER = 3;
        public static final int TPID_FIELD_NUMBER = 4;
        private Action action_;
        private ChainParams chainParams_;
        private int expiry_;
        private ByteString privateKey_ = ByteString.EMPTY;
        private String tpid_ = "";

        private SigningInput() {
        }

        @Override // wallet.core.jni.proto.FIO.SigningInputOrBuilder
        public int getExpiry() {
            return this.expiry_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setExpiry(int value) {
            this.expiry_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearExpiry() {
            this.expiry_ = 0;
        }

        @Override // wallet.core.jni.proto.FIO.SigningInputOrBuilder
        public boolean hasChainParams() {
            return this.chainParams_ != null;
        }

        @Override // wallet.core.jni.proto.FIO.SigningInputOrBuilder
        public ChainParams getChainParams() {
            ChainParams chainParams = this.chainParams_;
            return chainParams == null ? ChainParams.getDefaultInstance() : chainParams;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChainParams(ChainParams value) {
            value.getClass();
            this.chainParams_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeChainParams(ChainParams value) {
            value.getClass();
            ChainParams chainParams = this.chainParams_;
            if (chainParams != null && chainParams != ChainParams.getDefaultInstance()) {
                this.chainParams_ = ChainParams.newBuilder(this.chainParams_).mergeFrom((ChainParams.Builder) value).buildPartial();
            } else {
                this.chainParams_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearChainParams() {
            this.chainParams_ = null;
        }

        @Override // wallet.core.jni.proto.FIO.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.FIO.SigningInputOrBuilder
        public String getTpid() {
            return this.tpid_;
        }

        @Override // wallet.core.jni.proto.FIO.SigningInputOrBuilder
        public ByteString getTpidBytes() {
            return ByteString.copyFromUtf8(this.tpid_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTpid(String value) {
            value.getClass();
            this.tpid_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTpid() {
            this.tpid_ = getDefaultInstance().getTpid();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTpidBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.tpid_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.FIO.SigningInputOrBuilder
        public boolean hasAction() {
            return this.action_ != null;
        }

        @Override // wallet.core.jni.proto.FIO.SigningInputOrBuilder
        public Action getAction() {
            Action action = this.action_;
            return action == null ? Action.getDefaultInstance() : action;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAction(Action value) {
            value.getClass();
            this.action_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeAction(Action value) {
            value.getClass();
            Action action = this.action_;
            if (action != null && action != Action.getDefaultInstance()) {
                this.action_ = Action.newBuilder(this.action_).mergeFrom((Action.Builder) value).buildPartial();
            } else {
                this.action_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAction() {
            this.action_ = null;
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
            /* synthetic */ Builder(C79341 c79341) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.FIO.SigningInputOrBuilder
            public int getExpiry() {
                return ((SigningInput) this.instance).getExpiry();
            }

            public Builder setExpiry(int value) {
                copyOnWrite();
                ((SigningInput) this.instance).setExpiry(value);
                return this;
            }

            public Builder clearExpiry() {
                copyOnWrite();
                ((SigningInput) this.instance).clearExpiry();
                return this;
            }

            @Override // wallet.core.jni.proto.FIO.SigningInputOrBuilder
            public boolean hasChainParams() {
                return ((SigningInput) this.instance).hasChainParams();
            }

            @Override // wallet.core.jni.proto.FIO.SigningInputOrBuilder
            public ChainParams getChainParams() {
                return ((SigningInput) this.instance).getChainParams();
            }

            public Builder setChainParams(ChainParams value) {
                copyOnWrite();
                ((SigningInput) this.instance).setChainParams(value);
                return this;
            }

            public Builder setChainParams(ChainParams.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setChainParams(builderForValue.build());
                return this;
            }

            public Builder mergeChainParams(ChainParams value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeChainParams(value);
                return this;
            }

            public Builder clearChainParams() {
                copyOnWrite();
                ((SigningInput) this.instance).clearChainParams();
                return this;
            }

            @Override // wallet.core.jni.proto.FIO.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.FIO.SigningInputOrBuilder
            public String getTpid() {
                return ((SigningInput) this.instance).getTpid();
            }

            @Override // wallet.core.jni.proto.FIO.SigningInputOrBuilder
            public ByteString getTpidBytes() {
                return ((SigningInput) this.instance).getTpidBytes();
            }

            public Builder setTpid(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setTpid(value);
                return this;
            }

            public Builder clearTpid() {
                copyOnWrite();
                ((SigningInput) this.instance).clearTpid();
                return this;
            }

            public Builder setTpidBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setTpidBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.FIO.SigningInputOrBuilder
            public boolean hasAction() {
                return ((SigningInput) this.instance).hasAction();
            }

            @Override // wallet.core.jni.proto.FIO.SigningInputOrBuilder
            public Action getAction() {
                return ((SigningInput) this.instance).getAction();
            }

            public Builder setAction(Action value) {
                copyOnWrite();
                ((SigningInput) this.instance).setAction(value);
                return this;
            }

            public Builder setAction(Action.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setAction(builderForValue.build());
                return this;
            }

            public Builder mergeAction(Action value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeAction(value);
                return this;
            }

            public Builder clearAction() {
                copyOnWrite();
                ((SigningInput) this.instance).clearAction();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C79341.f2153xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n\u0004Ȉ\u0005\t", new Object[]{"expiry_", "chainParams_", "privateKey_", "tpid_", "action_"});
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
        public static final int ERROR_FIELD_NUMBER = 2;
        public static final int JSON_FIELD_NUMBER = 1;
        private static volatile Parser<SigningOutput> PARSER;
        private int error_;
        private String json_ = "";

        private SigningOutput() {
        }

        @Override // wallet.core.jni.proto.FIO.SigningOutputOrBuilder
        public String getJson() {
            return this.json_;
        }

        @Override // wallet.core.jni.proto.FIO.SigningOutputOrBuilder
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

        @Override // wallet.core.jni.proto.FIO.SigningOutputOrBuilder
        public int getErrorValue() {
            return this.error_;
        }

        @Override // wallet.core.jni.proto.FIO.SigningOutputOrBuilder
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
            /* synthetic */ Builder(C79341 c79341) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.FIO.SigningOutputOrBuilder
            public String getJson() {
                return ((SigningOutput) this.instance).getJson();
            }

            @Override // wallet.core.jni.proto.FIO.SigningOutputOrBuilder
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

            @Override // wallet.core.jni.proto.FIO.SigningOutputOrBuilder
            public int getErrorValue() {
                return ((SigningOutput) this.instance).getErrorValue();
            }

            public Builder setErrorValue(int value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setErrorValue(value);
                return this;
            }

            @Override // wallet.core.jni.proto.FIO.SigningOutputOrBuilder
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
            switch (C79341.f2153xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\f", new Object[]{"json_", "error_"});
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
