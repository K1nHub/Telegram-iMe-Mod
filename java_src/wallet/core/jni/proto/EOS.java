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
import wallet.core.jni.proto.Common;
/* loaded from: classes6.dex */
public final class EOS {

    /* loaded from: classes6.dex */
    public interface AssetOrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        int getDecimals();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getSymbol();

        ByteString getSymbolBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        Asset getAsset();

        ByteString getChainId();

        String getCurrency();

        ByteString getCurrencyBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getMemo();

        ByteString getMemoBytes();

        ByteString getPrivateKey();

        KeyType getPrivateKeyType();

        int getPrivateKeyTypeValue();

        String getRecipient();

        ByteString getRecipientBytes();

        ByteString getReferenceBlockId();

        int getReferenceBlockTime();

        String getSender();

        ByteString getSenderBytes();

        boolean hasAsset();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SigningOutputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        Common.SigningError getError();

        int getErrorValue();

        String getJsonEncoded();

        ByteString getJsonEncodedBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private EOS() {
    }

    /* loaded from: classes6.dex */
    public enum KeyType implements Internal.EnumLite {
        LEGACY(0),
        MODERNK1(1),
        MODERNR1(2),
        UNRECOGNIZED(-1);
        
        public static final int LEGACY_VALUE = 0;
        public static final int MODERNK1_VALUE = 1;
        public static final int MODERNR1_VALUE = 2;
        private static final Internal.EnumLiteMap<KeyType> internalValueMap = new Internal.EnumLiteMap<KeyType>() { // from class: wallet.core.jni.proto.EOS.KeyType.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public KeyType findValueByNumber(int number) {
                return KeyType.forNumber(number);
            }
        };
        private final int value;

        @Override // com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            if (this == UNRECOGNIZED) {
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }
            return this.value;
        }

        @Deprecated
        public static KeyType valueOf(int value) {
            return forNumber(value);
        }

        public static KeyType forNumber(int value) {
            if (value != 0) {
                if (value != 1) {
                    if (value != 2) {
                        return null;
                    }
                    return MODERNR1;
                }
                return MODERNK1;
            }
            return LEGACY;
        }

        public static Internal.EnumLiteMap<KeyType> internalGetValueMap() {
            return internalValueMap;
        }

        public static Internal.EnumVerifier internalGetVerifier() {
            return KeyTypeVerifier.INSTANCE;
        }

        /* loaded from: classes6.dex */
        private static final class KeyTypeVerifier implements Internal.EnumVerifier {
            static final Internal.EnumVerifier INSTANCE = new KeyTypeVerifier();

            private KeyTypeVerifier() {
            }

            @Override // com.google.protobuf.Internal.EnumVerifier
            public boolean isInRange(int number) {
                return KeyType.forNumber(number) != null;
            }
        }

        KeyType(int value) {
            this.value = value;
        }
    }

    /* loaded from: classes6.dex */
    public static final class Asset extends GeneratedMessageLite<Asset, Builder> implements AssetOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 1;
        public static final int DECIMALS_FIELD_NUMBER = 2;
        private static final Asset DEFAULT_INSTANCE;
        private static volatile Parser<Asset> PARSER = null;
        public static final int SYMBOL_FIELD_NUMBER = 3;
        private long amount_;
        private int decimals_;
        private String symbol_ = "";

        private Asset() {
        }

        @Override // wallet.core.jni.proto.EOS.AssetOrBuilder
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

        @Override // wallet.core.jni.proto.EOS.AssetOrBuilder
        public int getDecimals() {
            return this.decimals_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDecimals(int value) {
            this.decimals_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDecimals() {
            this.decimals_ = 0;
        }

        @Override // wallet.core.jni.proto.EOS.AssetOrBuilder
        public String getSymbol() {
            return this.symbol_;
        }

        @Override // wallet.core.jni.proto.EOS.AssetOrBuilder
        public ByteString getSymbolBytes() {
            return ByteString.copyFromUtf8(this.symbol_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSymbol(String value) {
            value.getClass();
            this.symbol_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSymbol() {
            this.symbol_ = getDefaultInstance().getSymbol();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSymbolBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.symbol_ = value.toStringUtf8();
        }

        public static Asset parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (Asset) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Asset parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Asset) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Asset parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (Asset) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Asset parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Asset) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Asset parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (Asset) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Asset parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Asset) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Asset parseFrom(InputStream input) throws IOException {
            return (Asset) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Asset parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Asset) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Asset parseDelimitedFrom(InputStream input) throws IOException {
            return (Asset) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static Asset parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Asset) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Asset parseFrom(CodedInputStream input) throws IOException {
            return (Asset) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Asset parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Asset) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(Asset prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Asset, Builder> implements AssetOrBuilder {
            /* synthetic */ Builder(C67801 c67801) {
                this();
            }

            private Builder() {
                super(Asset.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.EOS.AssetOrBuilder
            public long getAmount() {
                return ((Asset) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((Asset) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((Asset) this.instance).clearAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.EOS.AssetOrBuilder
            public int getDecimals() {
                return ((Asset) this.instance).getDecimals();
            }

            public Builder setDecimals(int value) {
                copyOnWrite();
                ((Asset) this.instance).setDecimals(value);
                return this;
            }

            public Builder clearDecimals() {
                copyOnWrite();
                ((Asset) this.instance).clearDecimals();
                return this;
            }

            @Override // wallet.core.jni.proto.EOS.AssetOrBuilder
            public String getSymbol() {
                return ((Asset) this.instance).getSymbol();
            }

            @Override // wallet.core.jni.proto.EOS.AssetOrBuilder
            public ByteString getSymbolBytes() {
                return ((Asset) this.instance).getSymbolBytes();
            }

            public Builder setSymbol(String value) {
                copyOnWrite();
                ((Asset) this.instance).setSymbol(value);
                return this;
            }

            public Builder clearSymbol() {
                copyOnWrite();
                ((Asset) this.instance).clearSymbol();
                return this;
            }

            public Builder setSymbolBytes(ByteString value) {
                copyOnWrite();
                ((Asset) this.instance).setSymbolBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67801.f1865xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Asset();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0002\u0002\u000b\u0003Ȉ", new Object[]{"amount_", "decimals_", "symbol_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Asset> parser = PARSER;
                    if (parser == null) {
                        synchronized (Asset.class) {
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
            Asset asset = new Asset();
            DEFAULT_INSTANCE = asset;
            GeneratedMessageLite.registerDefaultInstance(Asset.class, asset);
        }

        public static Asset getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Asset> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* renamed from: wallet.core.jni.proto.EOS$1 */
    /* loaded from: classes6.dex */
    static /* synthetic */ class C67801 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f1865xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f1865xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1865xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1865xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1865xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1865xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1865xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1865xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        public static final int ASSET_FIELD_NUMBER = 8;
        public static final int CHAIN_ID_FIELD_NUMBER = 1;
        public static final int CURRENCY_FIELD_NUMBER = 4;
        private static final SigningInput DEFAULT_INSTANCE;
        public static final int MEMO_FIELD_NUMBER = 7;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PRIVATE_KEY_FIELD_NUMBER = 9;
        public static final int PRIVATE_KEY_TYPE_FIELD_NUMBER = 10;
        public static final int RECIPIENT_FIELD_NUMBER = 6;
        public static final int REFERENCE_BLOCK_ID_FIELD_NUMBER = 2;
        public static final int REFERENCE_BLOCK_TIME_FIELD_NUMBER = 3;
        public static final int SENDER_FIELD_NUMBER = 5;
        private Asset asset_;
        private ByteString chainId_;
        private String currency_;
        private String memo_;
        private int privateKeyType_;
        private ByteString privateKey_;
        private String recipient_;
        private ByteString referenceBlockId_;
        private int referenceBlockTime_;
        private String sender_;

        private SigningInput() {
            ByteString byteString = ByteString.EMPTY;
            this.chainId_ = byteString;
            this.referenceBlockId_ = byteString;
            this.currency_ = "";
            this.sender_ = "";
            this.recipient_ = "";
            this.memo_ = "";
            this.privateKey_ = byteString;
        }

        @Override // wallet.core.jni.proto.EOS.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.EOS.SigningInputOrBuilder
        public ByteString getReferenceBlockId() {
            return this.referenceBlockId_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setReferenceBlockId(ByteString value) {
            value.getClass();
            this.referenceBlockId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearReferenceBlockId() {
            this.referenceBlockId_ = getDefaultInstance().getReferenceBlockId();
        }

        @Override // wallet.core.jni.proto.EOS.SigningInputOrBuilder
        public int getReferenceBlockTime() {
            return this.referenceBlockTime_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setReferenceBlockTime(int value) {
            this.referenceBlockTime_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearReferenceBlockTime() {
            this.referenceBlockTime_ = 0;
        }

        @Override // wallet.core.jni.proto.EOS.SigningInputOrBuilder
        public String getCurrency() {
            return this.currency_;
        }

        @Override // wallet.core.jni.proto.EOS.SigningInputOrBuilder
        public ByteString getCurrencyBytes() {
            return ByteString.copyFromUtf8(this.currency_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCurrency(String value) {
            value.getClass();
            this.currency_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCurrency() {
            this.currency_ = getDefaultInstance().getCurrency();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCurrencyBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.currency_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.EOS.SigningInputOrBuilder
        public String getSender() {
            return this.sender_;
        }

        @Override // wallet.core.jni.proto.EOS.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.EOS.SigningInputOrBuilder
        public String getRecipient() {
            return this.recipient_;
        }

        @Override // wallet.core.jni.proto.EOS.SigningInputOrBuilder
        public ByteString getRecipientBytes() {
            return ByteString.copyFromUtf8(this.recipient_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRecipient(String value) {
            value.getClass();
            this.recipient_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearRecipient() {
            this.recipient_ = getDefaultInstance().getRecipient();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRecipientBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.recipient_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.EOS.SigningInputOrBuilder
        public String getMemo() {
            return this.memo_;
        }

        @Override // wallet.core.jni.proto.EOS.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.EOS.SigningInputOrBuilder
        public boolean hasAsset() {
            return this.asset_ != null;
        }

        @Override // wallet.core.jni.proto.EOS.SigningInputOrBuilder
        public Asset getAsset() {
            Asset asset = this.asset_;
            return asset == null ? Asset.getDefaultInstance() : asset;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAsset(Asset value) {
            value.getClass();
            this.asset_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeAsset(Asset value) {
            value.getClass();
            Asset asset = this.asset_;
            if (asset != null && asset != Asset.getDefaultInstance()) {
                this.asset_ = Asset.newBuilder(this.asset_).mergeFrom((Asset.Builder) value).buildPartial();
            } else {
                this.asset_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAsset() {
            this.asset_ = null;
        }

        @Override // wallet.core.jni.proto.EOS.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.EOS.SigningInputOrBuilder
        public int getPrivateKeyTypeValue() {
            return this.privateKeyType_;
        }

        @Override // wallet.core.jni.proto.EOS.SigningInputOrBuilder
        public KeyType getPrivateKeyType() {
            KeyType forNumber = KeyType.forNumber(this.privateKeyType_);
            return forNumber == null ? KeyType.UNRECOGNIZED : forNumber;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPrivateKeyTypeValue(int value) {
            this.privateKeyType_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPrivateKeyType(KeyType value) {
            this.privateKeyType_ = value.getNumber();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPrivateKeyType() {
            this.privateKeyType_ = 0;
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
            /* synthetic */ Builder(C67801 c67801) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.EOS.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.EOS.SigningInputOrBuilder
            public ByteString getReferenceBlockId() {
                return ((SigningInput) this.instance).getReferenceBlockId();
            }

            public Builder setReferenceBlockId(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setReferenceBlockId(value);
                return this;
            }

            public Builder clearReferenceBlockId() {
                copyOnWrite();
                ((SigningInput) this.instance).clearReferenceBlockId();
                return this;
            }

            @Override // wallet.core.jni.proto.EOS.SigningInputOrBuilder
            public int getReferenceBlockTime() {
                return ((SigningInput) this.instance).getReferenceBlockTime();
            }

            public Builder setReferenceBlockTime(int value) {
                copyOnWrite();
                ((SigningInput) this.instance).setReferenceBlockTime(value);
                return this;
            }

            public Builder clearReferenceBlockTime() {
                copyOnWrite();
                ((SigningInput) this.instance).clearReferenceBlockTime();
                return this;
            }

            @Override // wallet.core.jni.proto.EOS.SigningInputOrBuilder
            public String getCurrency() {
                return ((SigningInput) this.instance).getCurrency();
            }

            @Override // wallet.core.jni.proto.EOS.SigningInputOrBuilder
            public ByteString getCurrencyBytes() {
                return ((SigningInput) this.instance).getCurrencyBytes();
            }

            public Builder setCurrency(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setCurrency(value);
                return this;
            }

            public Builder clearCurrency() {
                copyOnWrite();
                ((SigningInput) this.instance).clearCurrency();
                return this;
            }

            public Builder setCurrencyBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setCurrencyBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.EOS.SigningInputOrBuilder
            public String getSender() {
                return ((SigningInput) this.instance).getSender();
            }

            @Override // wallet.core.jni.proto.EOS.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.EOS.SigningInputOrBuilder
            public String getRecipient() {
                return ((SigningInput) this.instance).getRecipient();
            }

            @Override // wallet.core.jni.proto.EOS.SigningInputOrBuilder
            public ByteString getRecipientBytes() {
                return ((SigningInput) this.instance).getRecipientBytes();
            }

            public Builder setRecipient(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setRecipient(value);
                return this;
            }

            public Builder clearRecipient() {
                copyOnWrite();
                ((SigningInput) this.instance).clearRecipient();
                return this;
            }

            public Builder setRecipientBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setRecipientBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.EOS.SigningInputOrBuilder
            public String getMemo() {
                return ((SigningInput) this.instance).getMemo();
            }

            @Override // wallet.core.jni.proto.EOS.SigningInputOrBuilder
            public ByteString getMemoBytes() {
                return ((SigningInput) this.instance).getMemoBytes();
            }

            public Builder setMemo(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setMemo(value);
                return this;
            }

            public Builder clearMemo() {
                copyOnWrite();
                ((SigningInput) this.instance).clearMemo();
                return this;
            }

            public Builder setMemoBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setMemoBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.EOS.SigningInputOrBuilder
            public boolean hasAsset() {
                return ((SigningInput) this.instance).hasAsset();
            }

            @Override // wallet.core.jni.proto.EOS.SigningInputOrBuilder
            public Asset getAsset() {
                return ((SigningInput) this.instance).getAsset();
            }

            public Builder setAsset(Asset value) {
                copyOnWrite();
                ((SigningInput) this.instance).setAsset(value);
                return this;
            }

            public Builder setAsset(Asset.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setAsset(builderForValue.build());
                return this;
            }

            public Builder mergeAsset(Asset value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeAsset(value);
                return this;
            }

            public Builder clearAsset() {
                copyOnWrite();
                ((SigningInput) this.instance).clearAsset();
                return this;
            }

            @Override // wallet.core.jni.proto.EOS.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.EOS.SigningInputOrBuilder
            public int getPrivateKeyTypeValue() {
                return ((SigningInput) this.instance).getPrivateKeyTypeValue();
            }

            public Builder setPrivateKeyTypeValue(int value) {
                copyOnWrite();
                ((SigningInput) this.instance).setPrivateKeyTypeValue(value);
                return this;
            }

            @Override // wallet.core.jni.proto.EOS.SigningInputOrBuilder
            public KeyType getPrivateKeyType() {
                return ((SigningInput) this.instance).getPrivateKeyType();
            }

            public Builder setPrivateKeyType(KeyType value) {
                copyOnWrite();
                ((SigningInput) this.instance).setPrivateKeyType(value);
                return this;
            }

            public Builder clearPrivateKeyType() {
                copyOnWrite();
                ((SigningInput) this.instance).clearPrivateKeyType();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67801.f1865xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\n\u0000\u0000\u0001\n\n\u0000\u0000\u0000\u0001\n\u0002\n\u0003\r\u0004Ȉ\u0005Ȉ\u0006Ȉ\u0007Ȉ\b\t\t\n\n\f", new Object[]{"chainId_", "referenceBlockId_", "referenceBlockTime_", "currency_", "sender_", "recipient_", "memo_", "asset_", "privateKey_", "privateKeyType_"});
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
        public static final int ERROR_FIELD_NUMBER = 2;
        public static final int JSON_ENCODED_FIELD_NUMBER = 1;
        private static volatile Parser<SigningOutput> PARSER;
        private int error_;
        private String jsonEncoded_ = "";

        private SigningOutput() {
        }

        @Override // wallet.core.jni.proto.EOS.SigningOutputOrBuilder
        public String getJsonEncoded() {
            return this.jsonEncoded_;
        }

        @Override // wallet.core.jni.proto.EOS.SigningOutputOrBuilder
        public ByteString getJsonEncodedBytes() {
            return ByteString.copyFromUtf8(this.jsonEncoded_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setJsonEncoded(String value) {
            value.getClass();
            this.jsonEncoded_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearJsonEncoded() {
            this.jsonEncoded_ = getDefaultInstance().getJsonEncoded();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setJsonEncodedBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.jsonEncoded_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.EOS.SigningOutputOrBuilder
        public int getErrorValue() {
            return this.error_;
        }

        @Override // wallet.core.jni.proto.EOS.SigningOutputOrBuilder
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

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<SigningOutput, Builder> implements SigningOutputOrBuilder {
            /* synthetic */ Builder(C67801 c67801) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.EOS.SigningOutputOrBuilder
            public String getJsonEncoded() {
                return ((SigningOutput) this.instance).getJsonEncoded();
            }

            @Override // wallet.core.jni.proto.EOS.SigningOutputOrBuilder
            public ByteString getJsonEncodedBytes() {
                return ((SigningOutput) this.instance).getJsonEncodedBytes();
            }

            public Builder setJsonEncoded(String value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setJsonEncoded(value);
                return this;
            }

            public Builder clearJsonEncoded() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearJsonEncoded();
                return this;
            }

            public Builder setJsonEncodedBytes(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setJsonEncodedBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.EOS.SigningOutputOrBuilder
            public int getErrorValue() {
                return ((SigningOutput) this.instance).getErrorValue();
            }

            public Builder setErrorValue(int value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setErrorValue(value);
                return this;
            }

            @Override // wallet.core.jni.proto.EOS.SigningOutputOrBuilder
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
            switch (C67801.f1865xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\f", new Object[]{"jsonEncoded_", "error_"});
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
