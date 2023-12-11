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
import wallet.core.jni.proto.Binance;
import wallet.core.jni.proto.Bitcoin;
import wallet.core.jni.proto.Ethereum;
/* loaded from: classes7.dex */
public final class THORChainSwap {

    /* loaded from: classes7.dex */
    public interface AssetOrBuilder extends MessageLiteOrBuilder {
        Chain getChain();

        int getChainValue();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getSymbol();

        ByteString getSymbolBytes();

        String getTokenId();

        ByteString getTokenIdBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface ErrorOrBuilder extends MessageLiteOrBuilder {
        ErrorCode getCode();

        int getCodeValue();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getMessage();

        ByteString getMessageBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface SwapInputOrBuilder extends MessageLiteOrBuilder {
        String getAffiliateFeeAddress();

        ByteString getAffiliateFeeAddressBytes();

        String getAffiliateFeeRateBp();

        ByteString getAffiliateFeeRateBpBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        long getExpirationTime();

        String getExtraMemo();

        ByteString getExtraMemoBytes();

        String getFromAddress();

        ByteString getFromAddressBytes();

        String getFromAmount();

        ByteString getFromAmountBytes();

        Asset getFromAsset();

        String getRouterAddress();

        ByteString getRouterAddressBytes();

        String getToAddress();

        ByteString getToAddressBytes();

        String getToAmountLimit();

        ByteString getToAmountLimitBytes();

        Asset getToAsset();

        String getVaultAddress();

        ByteString getVaultAddressBytes();

        boolean hasFromAsset();

        boolean hasToAsset();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface SwapOutputOrBuilder extends MessageLiteOrBuilder {
        Binance.SigningInput getBinance();

        Bitcoin.SigningInput getBitcoin();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        Error getError();

        Ethereum.SigningInput getEthereum();

        Chain getFromChain();

        int getFromChainValue();

        SwapOutput.SigningInputOneofCase getSigningInputOneofCase();

        Chain getToChain();

        int getToChainValue();

        boolean hasBinance();

        boolean hasBitcoin();

        boolean hasError();

        boolean hasEthereum();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private THORChainSwap() {
    }

    /* loaded from: classes7.dex */
    public enum Chain implements Internal.EnumLite {
        THOR(0),
        BTC(1),
        ETH(2),
        BNB(3),
        UNRECOGNIZED(-1);
        
        public static final int BNB_VALUE = 3;
        public static final int BTC_VALUE = 1;
        public static final int ETH_VALUE = 2;
        public static final int THOR_VALUE = 0;
        private static final Internal.EnumLiteMap<Chain> internalValueMap = new Internal.EnumLiteMap<Chain>() { // from class: wallet.core.jni.proto.THORChainSwap.Chain.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public Chain findValueByNumber(int number) {
                return Chain.forNumber(number);
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
        public static Chain valueOf(int value) {
            return forNumber(value);
        }

        public static Chain forNumber(int value) {
            if (value != 0) {
                if (value != 1) {
                    if (value != 2) {
                        if (value != 3) {
                            return null;
                        }
                        return BNB;
                    }
                    return ETH;
                }
                return BTC;
            }
            return THOR;
        }

        public static Internal.EnumLiteMap<Chain> internalGetValueMap() {
            return internalValueMap;
        }

        public static Internal.EnumVerifier internalGetVerifier() {
            return ChainVerifier.INSTANCE;
        }

        /* loaded from: classes7.dex */
        private static final class ChainVerifier implements Internal.EnumVerifier {
            static final Internal.EnumVerifier INSTANCE = new ChainVerifier();

            private ChainVerifier() {
            }

            @Override // com.google.protobuf.Internal.EnumVerifier
            public boolean isInRange(int number) {
                return Chain.forNumber(number) != null;
            }
        }

        Chain(int value) {
            this.value = value;
        }
    }

    /* loaded from: classes7.dex */
    public enum ErrorCode implements Internal.EnumLite {
        OK(0),
        Error_general(1),
        Error_Input_proto_deserialization(2),
        Error_Unsupported_from_chain(13),
        Error_Unsupported_to_chain(14),
        Error_Invalid_from_address(15),
        Error_Invalid_to_address(16),
        Error_Invalid_vault_address(21),
        Error_Invalid_router_address(22),
        UNRECOGNIZED(-1);
        
        public static final int Error_Input_proto_deserialization_VALUE = 2;
        public static final int Error_Invalid_from_address_VALUE = 15;
        public static final int Error_Invalid_router_address_VALUE = 22;
        public static final int Error_Invalid_to_address_VALUE = 16;
        public static final int Error_Invalid_vault_address_VALUE = 21;
        public static final int Error_Unsupported_from_chain_VALUE = 13;
        public static final int Error_Unsupported_to_chain_VALUE = 14;
        public static final int Error_general_VALUE = 1;
        public static final int OK_VALUE = 0;
        private static final Internal.EnumLiteMap<ErrorCode> internalValueMap = new Internal.EnumLiteMap<ErrorCode>() { // from class: wallet.core.jni.proto.THORChainSwap.ErrorCode.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public ErrorCode findValueByNumber(int number) {
                return ErrorCode.forNumber(number);
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
        public static ErrorCode valueOf(int value) {
            return forNumber(value);
        }

        public static ErrorCode forNumber(int value) {
            if (value != 0) {
                if (value != 1) {
                    if (value != 2) {
                        if (value != 21) {
                            if (value != 22) {
                                switch (value) {
                                    case 13:
                                        return Error_Unsupported_from_chain;
                                    case 14:
                                        return Error_Unsupported_to_chain;
                                    case 15:
                                        return Error_Invalid_from_address;
                                    case 16:
                                        return Error_Invalid_to_address;
                                    default:
                                        return null;
                                }
                            }
                            return Error_Invalid_router_address;
                        }
                        return Error_Invalid_vault_address;
                    }
                    return Error_Input_proto_deserialization;
                }
                return Error_general;
            }
            return OK;
        }

        public static Internal.EnumLiteMap<ErrorCode> internalGetValueMap() {
            return internalValueMap;
        }

        public static Internal.EnumVerifier internalGetVerifier() {
            return ErrorCodeVerifier.INSTANCE;
        }

        /* loaded from: classes7.dex */
        private static final class ErrorCodeVerifier implements Internal.EnumVerifier {
            static final Internal.EnumVerifier INSTANCE = new ErrorCodeVerifier();

            private ErrorCodeVerifier() {
            }

            @Override // com.google.protobuf.Internal.EnumVerifier
            public boolean isInRange(int number) {
                return ErrorCode.forNumber(number) != null;
            }
        }

        ErrorCode(int value) {
            this.value = value;
        }
    }

    /* loaded from: classes7.dex */
    public static final class Error extends GeneratedMessageLite<Error, Builder> implements ErrorOrBuilder {
        public static final int CODE_FIELD_NUMBER = 1;
        private static final Error DEFAULT_INSTANCE;
        public static final int MESSAGE_FIELD_NUMBER = 2;
        private static volatile Parser<Error> PARSER;
        private int code_;
        private String message_ = "";

        private Error() {
        }

        @Override // wallet.core.jni.proto.THORChainSwap.ErrorOrBuilder
        public int getCodeValue() {
            return this.code_;
        }

        @Override // wallet.core.jni.proto.THORChainSwap.ErrorOrBuilder
        public ErrorCode getCode() {
            ErrorCode forNumber = ErrorCode.forNumber(this.code_);
            return forNumber == null ? ErrorCode.UNRECOGNIZED : forNumber;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCodeValue(int value) {
            this.code_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCode(ErrorCode value) {
            this.code_ = value.getNumber();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCode() {
            this.code_ = 0;
        }

        @Override // wallet.core.jni.proto.THORChainSwap.ErrorOrBuilder
        public String getMessage() {
            return this.message_;
        }

        @Override // wallet.core.jni.proto.THORChainSwap.ErrorOrBuilder
        public ByteString getMessageBytes() {
            return ByteString.copyFromUtf8(this.message_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMessage(String value) {
            value.getClass();
            this.message_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMessage() {
            this.message_ = getDefaultInstance().getMessage();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMessageBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.message_ = value.toStringUtf8();
        }

        public static Error parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (Error) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Error parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Error) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Error parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (Error) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Error parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Error) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Error parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (Error) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Error parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Error) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Error parseFrom(InputStream input) throws IOException {
            return (Error) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Error parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Error) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Error parseDelimitedFrom(InputStream input) throws IOException {
            return (Error) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static Error parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Error) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Error parseFrom(CodedInputStream input) throws IOException {
            return (Error) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Error parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Error) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(Error prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Error, Builder> implements ErrorOrBuilder {
            /* synthetic */ Builder(C77651 c77651) {
                this();
            }

            private Builder() {
                super(Error.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.THORChainSwap.ErrorOrBuilder
            public int getCodeValue() {
                return ((Error) this.instance).getCodeValue();
            }

            public Builder setCodeValue(int value) {
                copyOnWrite();
                ((Error) this.instance).setCodeValue(value);
                return this;
            }

            @Override // wallet.core.jni.proto.THORChainSwap.ErrorOrBuilder
            public ErrorCode getCode() {
                return ((Error) this.instance).getCode();
            }

            public Builder setCode(ErrorCode value) {
                copyOnWrite();
                ((Error) this.instance).setCode(value);
                return this;
            }

            public Builder clearCode() {
                copyOnWrite();
                ((Error) this.instance).clearCode();
                return this;
            }

            @Override // wallet.core.jni.proto.THORChainSwap.ErrorOrBuilder
            public String getMessage() {
                return ((Error) this.instance).getMessage();
            }

            @Override // wallet.core.jni.proto.THORChainSwap.ErrorOrBuilder
            public ByteString getMessageBytes() {
                return ((Error) this.instance).getMessageBytes();
            }

            public Builder setMessage(String value) {
                copyOnWrite();
                ((Error) this.instance).setMessage(value);
                return this;
            }

            public Builder clearMessage() {
                copyOnWrite();
                ((Error) this.instance).clearMessage();
                return this;
            }

            public Builder setMessageBytes(ByteString value) {
                copyOnWrite();
                ((Error) this.instance).setMessageBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77651.f2159xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Error();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002Ȉ", new Object[]{"code_", "message_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Error> parser = PARSER;
                    if (parser == null) {
                        synchronized (Error.class) {
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
            Error error = new Error();
            DEFAULT_INSTANCE = error;
            GeneratedMessageLite.registerDefaultInstance(Error.class, error);
        }

        public static Error getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Error> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* renamed from: wallet.core.jni.proto.THORChainSwap$1 */
    /* loaded from: classes7.dex */
    static /* synthetic */ class C77651 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f2159xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f2159xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2159xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2159xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2159xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2159xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2159xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2159xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes7.dex */
    public static final class Asset extends GeneratedMessageLite<Asset, Builder> implements AssetOrBuilder {
        public static final int CHAIN_FIELD_NUMBER = 1;
        private static final Asset DEFAULT_INSTANCE;
        private static volatile Parser<Asset> PARSER = null;
        public static final int SYMBOL_FIELD_NUMBER = 2;
        public static final int TOKEN_ID_FIELD_NUMBER = 3;
        private int chain_;
        private String symbol_ = "";
        private String tokenId_ = "";

        private Asset() {
        }

        @Override // wallet.core.jni.proto.THORChainSwap.AssetOrBuilder
        public int getChainValue() {
            return this.chain_;
        }

        @Override // wallet.core.jni.proto.THORChainSwap.AssetOrBuilder
        public Chain getChain() {
            Chain forNumber = Chain.forNumber(this.chain_);
            return forNumber == null ? Chain.UNRECOGNIZED : forNumber;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChainValue(int value) {
            this.chain_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChain(Chain value) {
            this.chain_ = value.getNumber();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearChain() {
            this.chain_ = 0;
        }

        @Override // wallet.core.jni.proto.THORChainSwap.AssetOrBuilder
        public String getSymbol() {
            return this.symbol_;
        }

        @Override // wallet.core.jni.proto.THORChainSwap.AssetOrBuilder
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

        @Override // wallet.core.jni.proto.THORChainSwap.AssetOrBuilder
        public String getTokenId() {
            return this.tokenId_;
        }

        @Override // wallet.core.jni.proto.THORChainSwap.AssetOrBuilder
        public ByteString getTokenIdBytes() {
            return ByteString.copyFromUtf8(this.tokenId_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTokenId(String value) {
            value.getClass();
            this.tokenId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTokenId() {
            this.tokenId_ = getDefaultInstance().getTokenId();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTokenIdBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.tokenId_ = value.toStringUtf8();
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

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Asset, Builder> implements AssetOrBuilder {
            /* synthetic */ Builder(C77651 c77651) {
                this();
            }

            private Builder() {
                super(Asset.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.THORChainSwap.AssetOrBuilder
            public int getChainValue() {
                return ((Asset) this.instance).getChainValue();
            }

            public Builder setChainValue(int value) {
                copyOnWrite();
                ((Asset) this.instance).setChainValue(value);
                return this;
            }

            @Override // wallet.core.jni.proto.THORChainSwap.AssetOrBuilder
            public Chain getChain() {
                return ((Asset) this.instance).getChain();
            }

            public Builder setChain(Chain value) {
                copyOnWrite();
                ((Asset) this.instance).setChain(value);
                return this;
            }

            public Builder clearChain() {
                copyOnWrite();
                ((Asset) this.instance).clearChain();
                return this;
            }

            @Override // wallet.core.jni.proto.THORChainSwap.AssetOrBuilder
            public String getSymbol() {
                return ((Asset) this.instance).getSymbol();
            }

            @Override // wallet.core.jni.proto.THORChainSwap.AssetOrBuilder
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

            @Override // wallet.core.jni.proto.THORChainSwap.AssetOrBuilder
            public String getTokenId() {
                return ((Asset) this.instance).getTokenId();
            }

            @Override // wallet.core.jni.proto.THORChainSwap.AssetOrBuilder
            public ByteString getTokenIdBytes() {
                return ((Asset) this.instance).getTokenIdBytes();
            }

            public Builder setTokenId(String value) {
                copyOnWrite();
                ((Asset) this.instance).setTokenId(value);
                return this;
            }

            public Builder clearTokenId() {
                copyOnWrite();
                ((Asset) this.instance).clearTokenId();
                return this;
            }

            public Builder setTokenIdBytes(ByteString value) {
                copyOnWrite();
                ((Asset) this.instance).setTokenIdBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77651.f2159xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Asset();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\f\u0002Ȉ\u0003Ȉ", new Object[]{"chain_", "symbol_", "tokenId_"});
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

    /* loaded from: classes7.dex */
    public static final class SwapInput extends GeneratedMessageLite<SwapInput, Builder> implements SwapInputOrBuilder {
        public static final int AFFILIATE_FEE_ADDRESS_FIELD_NUMBER = 9;
        public static final int AFFILIATE_FEE_RATE_BP_FIELD_NUMBER = 10;
        private static final SwapInput DEFAULT_INSTANCE;
        public static final int EXPIRATION_TIME_FIELD_NUMBER = 12;
        public static final int EXTRA_MEMO_FIELD_NUMBER = 11;
        public static final int FROM_ADDRESS_FIELD_NUMBER = 2;
        public static final int FROM_AMOUNT_FIELD_NUMBER = 7;
        public static final int FROM_ASSET_FIELD_NUMBER = 1;
        private static volatile Parser<SwapInput> PARSER = null;
        public static final int ROUTER_ADDRESS_FIELD_NUMBER = 6;
        public static final int TO_ADDRESS_FIELD_NUMBER = 4;
        public static final int TO_AMOUNT_LIMIT_FIELD_NUMBER = 8;
        public static final int TO_ASSET_FIELD_NUMBER = 3;
        public static final int VAULT_ADDRESS_FIELD_NUMBER = 5;
        private long expirationTime_;
        private Asset fromAsset_;
        private Asset toAsset_;
        private String fromAddress_ = "";
        private String toAddress_ = "";
        private String vaultAddress_ = "";
        private String routerAddress_ = "";
        private String fromAmount_ = "";
        private String toAmountLimit_ = "";
        private String affiliateFeeAddress_ = "";
        private String affiliateFeeRateBp_ = "";
        private String extraMemo_ = "";

        private SwapInput() {
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
        public boolean hasFromAsset() {
            return this.fromAsset_ != null;
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
        public Asset getFromAsset() {
            Asset asset = this.fromAsset_;
            return asset == null ? Asset.getDefaultInstance() : asset;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFromAsset(Asset value) {
            value.getClass();
            this.fromAsset_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeFromAsset(Asset value) {
            value.getClass();
            Asset asset = this.fromAsset_;
            if (asset != null && asset != Asset.getDefaultInstance()) {
                this.fromAsset_ = Asset.newBuilder(this.fromAsset_).mergeFrom((Asset.Builder) value).buildPartial();
            } else {
                this.fromAsset_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFromAsset() {
            this.fromAsset_ = null;
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
        public String getFromAddress() {
            return this.fromAddress_;
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
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

        @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
        public boolean hasToAsset() {
            return this.toAsset_ != null;
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
        public Asset getToAsset() {
            Asset asset = this.toAsset_;
            return asset == null ? Asset.getDefaultInstance() : asset;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setToAsset(Asset value) {
            value.getClass();
            this.toAsset_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeToAsset(Asset value) {
            value.getClass();
            Asset asset = this.toAsset_;
            if (asset != null && asset != Asset.getDefaultInstance()) {
                this.toAsset_ = Asset.newBuilder(this.toAsset_).mergeFrom((Asset.Builder) value).buildPartial();
            } else {
                this.toAsset_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearToAsset() {
            this.toAsset_ = null;
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
        public String getToAddress() {
            return this.toAddress_;
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
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

        @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
        public String getVaultAddress() {
            return this.vaultAddress_;
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
        public ByteString getVaultAddressBytes() {
            return ByteString.copyFromUtf8(this.vaultAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setVaultAddress(String value) {
            value.getClass();
            this.vaultAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearVaultAddress() {
            this.vaultAddress_ = getDefaultInstance().getVaultAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setVaultAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.vaultAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
        public String getRouterAddress() {
            return this.routerAddress_;
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
        public ByteString getRouterAddressBytes() {
            return ByteString.copyFromUtf8(this.routerAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRouterAddress(String value) {
            value.getClass();
            this.routerAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearRouterAddress() {
            this.routerAddress_ = getDefaultInstance().getRouterAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRouterAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.routerAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
        public String getFromAmount() {
            return this.fromAmount_;
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
        public ByteString getFromAmountBytes() {
            return ByteString.copyFromUtf8(this.fromAmount_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFromAmount(String value) {
            value.getClass();
            this.fromAmount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFromAmount() {
            this.fromAmount_ = getDefaultInstance().getFromAmount();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFromAmountBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.fromAmount_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
        public String getToAmountLimit() {
            return this.toAmountLimit_;
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
        public ByteString getToAmountLimitBytes() {
            return ByteString.copyFromUtf8(this.toAmountLimit_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setToAmountLimit(String value) {
            value.getClass();
            this.toAmountLimit_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearToAmountLimit() {
            this.toAmountLimit_ = getDefaultInstance().getToAmountLimit();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setToAmountLimitBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.toAmountLimit_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
        public String getAffiliateFeeAddress() {
            return this.affiliateFeeAddress_;
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
        public ByteString getAffiliateFeeAddressBytes() {
            return ByteString.copyFromUtf8(this.affiliateFeeAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAffiliateFeeAddress(String value) {
            value.getClass();
            this.affiliateFeeAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAffiliateFeeAddress() {
            this.affiliateFeeAddress_ = getDefaultInstance().getAffiliateFeeAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAffiliateFeeAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.affiliateFeeAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
        public String getAffiliateFeeRateBp() {
            return this.affiliateFeeRateBp_;
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
        public ByteString getAffiliateFeeRateBpBytes() {
            return ByteString.copyFromUtf8(this.affiliateFeeRateBp_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAffiliateFeeRateBp(String value) {
            value.getClass();
            this.affiliateFeeRateBp_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAffiliateFeeRateBp() {
            this.affiliateFeeRateBp_ = getDefaultInstance().getAffiliateFeeRateBp();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAffiliateFeeRateBpBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.affiliateFeeRateBp_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
        public String getExtraMemo() {
            return this.extraMemo_;
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
        public ByteString getExtraMemoBytes() {
            return ByteString.copyFromUtf8(this.extraMemo_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setExtraMemo(String value) {
            value.getClass();
            this.extraMemo_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearExtraMemo() {
            this.extraMemo_ = getDefaultInstance().getExtraMemo();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setExtraMemoBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.extraMemo_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
        public long getExpirationTime() {
            return this.expirationTime_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setExpirationTime(long value) {
            this.expirationTime_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearExpirationTime() {
            this.expirationTime_ = 0L;
        }

        public static SwapInput parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (SwapInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SwapInput parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SwapInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SwapInput parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (SwapInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SwapInput parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SwapInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SwapInput parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (SwapInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SwapInput parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SwapInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SwapInput parseFrom(InputStream input) throws IOException {
            return (SwapInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static SwapInput parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SwapInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static SwapInput parseDelimitedFrom(InputStream input) throws IOException {
            return (SwapInput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static SwapInput parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SwapInput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static SwapInput parseFrom(CodedInputStream input) throws IOException {
            return (SwapInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static SwapInput parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SwapInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(SwapInput prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<SwapInput, Builder> implements SwapInputOrBuilder {
            /* synthetic */ Builder(C77651 c77651) {
                this();
            }

            private Builder() {
                super(SwapInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
            public boolean hasFromAsset() {
                return ((SwapInput) this.instance).hasFromAsset();
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
            public Asset getFromAsset() {
                return ((SwapInput) this.instance).getFromAsset();
            }

            public Builder setFromAsset(Asset value) {
                copyOnWrite();
                ((SwapInput) this.instance).setFromAsset(value);
                return this;
            }

            public Builder setFromAsset(Asset.Builder builderForValue) {
                copyOnWrite();
                ((SwapInput) this.instance).setFromAsset(builderForValue.build());
                return this;
            }

            public Builder mergeFromAsset(Asset value) {
                copyOnWrite();
                ((SwapInput) this.instance).mergeFromAsset(value);
                return this;
            }

            public Builder clearFromAsset() {
                copyOnWrite();
                ((SwapInput) this.instance).clearFromAsset();
                return this;
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
            public String getFromAddress() {
                return ((SwapInput) this.instance).getFromAddress();
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
            public ByteString getFromAddressBytes() {
                return ((SwapInput) this.instance).getFromAddressBytes();
            }

            public Builder setFromAddress(String value) {
                copyOnWrite();
                ((SwapInput) this.instance).setFromAddress(value);
                return this;
            }

            public Builder clearFromAddress() {
                copyOnWrite();
                ((SwapInput) this.instance).clearFromAddress();
                return this;
            }

            public Builder setFromAddressBytes(ByteString value) {
                copyOnWrite();
                ((SwapInput) this.instance).setFromAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
            public boolean hasToAsset() {
                return ((SwapInput) this.instance).hasToAsset();
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
            public Asset getToAsset() {
                return ((SwapInput) this.instance).getToAsset();
            }

            public Builder setToAsset(Asset value) {
                copyOnWrite();
                ((SwapInput) this.instance).setToAsset(value);
                return this;
            }

            public Builder setToAsset(Asset.Builder builderForValue) {
                copyOnWrite();
                ((SwapInput) this.instance).setToAsset(builderForValue.build());
                return this;
            }

            public Builder mergeToAsset(Asset value) {
                copyOnWrite();
                ((SwapInput) this.instance).mergeToAsset(value);
                return this;
            }

            public Builder clearToAsset() {
                copyOnWrite();
                ((SwapInput) this.instance).clearToAsset();
                return this;
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
            public String getToAddress() {
                return ((SwapInput) this.instance).getToAddress();
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
            public ByteString getToAddressBytes() {
                return ((SwapInput) this.instance).getToAddressBytes();
            }

            public Builder setToAddress(String value) {
                copyOnWrite();
                ((SwapInput) this.instance).setToAddress(value);
                return this;
            }

            public Builder clearToAddress() {
                copyOnWrite();
                ((SwapInput) this.instance).clearToAddress();
                return this;
            }

            public Builder setToAddressBytes(ByteString value) {
                copyOnWrite();
                ((SwapInput) this.instance).setToAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
            public String getVaultAddress() {
                return ((SwapInput) this.instance).getVaultAddress();
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
            public ByteString getVaultAddressBytes() {
                return ((SwapInput) this.instance).getVaultAddressBytes();
            }

            public Builder setVaultAddress(String value) {
                copyOnWrite();
                ((SwapInput) this.instance).setVaultAddress(value);
                return this;
            }

            public Builder clearVaultAddress() {
                copyOnWrite();
                ((SwapInput) this.instance).clearVaultAddress();
                return this;
            }

            public Builder setVaultAddressBytes(ByteString value) {
                copyOnWrite();
                ((SwapInput) this.instance).setVaultAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
            public String getRouterAddress() {
                return ((SwapInput) this.instance).getRouterAddress();
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
            public ByteString getRouterAddressBytes() {
                return ((SwapInput) this.instance).getRouterAddressBytes();
            }

            public Builder setRouterAddress(String value) {
                copyOnWrite();
                ((SwapInput) this.instance).setRouterAddress(value);
                return this;
            }

            public Builder clearRouterAddress() {
                copyOnWrite();
                ((SwapInput) this.instance).clearRouterAddress();
                return this;
            }

            public Builder setRouterAddressBytes(ByteString value) {
                copyOnWrite();
                ((SwapInput) this.instance).setRouterAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
            public String getFromAmount() {
                return ((SwapInput) this.instance).getFromAmount();
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
            public ByteString getFromAmountBytes() {
                return ((SwapInput) this.instance).getFromAmountBytes();
            }

            public Builder setFromAmount(String value) {
                copyOnWrite();
                ((SwapInput) this.instance).setFromAmount(value);
                return this;
            }

            public Builder clearFromAmount() {
                copyOnWrite();
                ((SwapInput) this.instance).clearFromAmount();
                return this;
            }

            public Builder setFromAmountBytes(ByteString value) {
                copyOnWrite();
                ((SwapInput) this.instance).setFromAmountBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
            public String getToAmountLimit() {
                return ((SwapInput) this.instance).getToAmountLimit();
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
            public ByteString getToAmountLimitBytes() {
                return ((SwapInput) this.instance).getToAmountLimitBytes();
            }

            public Builder setToAmountLimit(String value) {
                copyOnWrite();
                ((SwapInput) this.instance).setToAmountLimit(value);
                return this;
            }

            public Builder clearToAmountLimit() {
                copyOnWrite();
                ((SwapInput) this.instance).clearToAmountLimit();
                return this;
            }

            public Builder setToAmountLimitBytes(ByteString value) {
                copyOnWrite();
                ((SwapInput) this.instance).setToAmountLimitBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
            public String getAffiliateFeeAddress() {
                return ((SwapInput) this.instance).getAffiliateFeeAddress();
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
            public ByteString getAffiliateFeeAddressBytes() {
                return ((SwapInput) this.instance).getAffiliateFeeAddressBytes();
            }

            public Builder setAffiliateFeeAddress(String value) {
                copyOnWrite();
                ((SwapInput) this.instance).setAffiliateFeeAddress(value);
                return this;
            }

            public Builder clearAffiliateFeeAddress() {
                copyOnWrite();
                ((SwapInput) this.instance).clearAffiliateFeeAddress();
                return this;
            }

            public Builder setAffiliateFeeAddressBytes(ByteString value) {
                copyOnWrite();
                ((SwapInput) this.instance).setAffiliateFeeAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
            public String getAffiliateFeeRateBp() {
                return ((SwapInput) this.instance).getAffiliateFeeRateBp();
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
            public ByteString getAffiliateFeeRateBpBytes() {
                return ((SwapInput) this.instance).getAffiliateFeeRateBpBytes();
            }

            public Builder setAffiliateFeeRateBp(String value) {
                copyOnWrite();
                ((SwapInput) this.instance).setAffiliateFeeRateBp(value);
                return this;
            }

            public Builder clearAffiliateFeeRateBp() {
                copyOnWrite();
                ((SwapInput) this.instance).clearAffiliateFeeRateBp();
                return this;
            }

            public Builder setAffiliateFeeRateBpBytes(ByteString value) {
                copyOnWrite();
                ((SwapInput) this.instance).setAffiliateFeeRateBpBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
            public String getExtraMemo() {
                return ((SwapInput) this.instance).getExtraMemo();
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
            public ByteString getExtraMemoBytes() {
                return ((SwapInput) this.instance).getExtraMemoBytes();
            }

            public Builder setExtraMemo(String value) {
                copyOnWrite();
                ((SwapInput) this.instance).setExtraMemo(value);
                return this;
            }

            public Builder clearExtraMemo() {
                copyOnWrite();
                ((SwapInput) this.instance).clearExtraMemo();
                return this;
            }

            public Builder setExtraMemoBytes(ByteString value) {
                copyOnWrite();
                ((SwapInput) this.instance).setExtraMemoBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapInputOrBuilder
            public long getExpirationTime() {
                return ((SwapInput) this.instance).getExpirationTime();
            }

            public Builder setExpirationTime(long value) {
                copyOnWrite();
                ((SwapInput) this.instance).setExpirationTime(value);
                return this;
            }

            public Builder clearExpirationTime() {
                copyOnWrite();
                ((SwapInput) this.instance).clearExpirationTime();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77651.f2159xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SwapInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\f\u0000\u0000\u0001\f\f\u0000\u0000\u0000\u0001\t\u0002Ȉ\u0003\t\u0004Ȉ\u0005Ȉ\u0006Ȉ\u0007Ȉ\bȈ\tȈ\nȈ\u000bȈ\f\u0003", new Object[]{"fromAsset_", "fromAddress_", "toAsset_", "toAddress_", "vaultAddress_", "routerAddress_", "fromAmount_", "toAmountLimit_", "affiliateFeeAddress_", "affiliateFeeRateBp_", "extraMemo_", "expirationTime_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<SwapInput> parser = PARSER;
                    if (parser == null) {
                        synchronized (SwapInput.class) {
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
            SwapInput swapInput = new SwapInput();
            DEFAULT_INSTANCE = swapInput;
            GeneratedMessageLite.registerDefaultInstance(SwapInput.class, swapInput);
        }

        public static SwapInput getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<SwapInput> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes7.dex */
    public static final class SwapOutput extends GeneratedMessageLite<SwapOutput, Builder> implements SwapOutputOrBuilder {
        public static final int BINANCE_FIELD_NUMBER = 6;
        public static final int BITCOIN_FIELD_NUMBER = 4;
        private static final SwapOutput DEFAULT_INSTANCE;
        public static final int ERROR_FIELD_NUMBER = 3;
        public static final int ETHEREUM_FIELD_NUMBER = 5;
        public static final int FROM_CHAIN_FIELD_NUMBER = 1;
        private static volatile Parser<SwapOutput> PARSER = null;
        public static final int TO_CHAIN_FIELD_NUMBER = 2;
        private Error error_;
        private int fromChain_;
        private int signingInputOneofCase_ = 0;
        private Object signingInputOneof_;
        private int toChain_;

        private SwapOutput() {
        }

        /* loaded from: classes7.dex */
        public enum SigningInputOneofCase {
            BITCOIN(4),
            ETHEREUM(5),
            BINANCE(6),
            SIGNINGINPUTONEOF_NOT_SET(0);
            
            private final int value;

            SigningInputOneofCase(int value) {
                this.value = value;
            }

            @Deprecated
            public static SigningInputOneofCase valueOf(int value) {
                return forNumber(value);
            }

            public static SigningInputOneofCase forNumber(int value) {
                if (value != 0) {
                    if (value != 4) {
                        if (value != 5) {
                            if (value != 6) {
                                return null;
                            }
                            return BINANCE;
                        }
                        return ETHEREUM;
                    }
                    return BITCOIN;
                }
                return SIGNINGINPUTONEOF_NOT_SET;
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapOutputOrBuilder
        public SigningInputOneofCase getSigningInputOneofCase() {
            return SigningInputOneofCase.forNumber(this.signingInputOneofCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSigningInputOneof() {
            this.signingInputOneofCase_ = 0;
            this.signingInputOneof_ = null;
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapOutputOrBuilder
        public int getFromChainValue() {
            return this.fromChain_;
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapOutputOrBuilder
        public Chain getFromChain() {
            Chain forNumber = Chain.forNumber(this.fromChain_);
            return forNumber == null ? Chain.UNRECOGNIZED : forNumber;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFromChainValue(int value) {
            this.fromChain_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFromChain(Chain value) {
            this.fromChain_ = value.getNumber();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFromChain() {
            this.fromChain_ = 0;
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapOutputOrBuilder
        public int getToChainValue() {
            return this.toChain_;
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapOutputOrBuilder
        public Chain getToChain() {
            Chain forNumber = Chain.forNumber(this.toChain_);
            return forNumber == null ? Chain.UNRECOGNIZED : forNumber;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setToChainValue(int value) {
            this.toChain_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setToChain(Chain value) {
            this.toChain_ = value.getNumber();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearToChain() {
            this.toChain_ = 0;
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapOutputOrBuilder
        public boolean hasError() {
            return this.error_ != null;
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapOutputOrBuilder
        public Error getError() {
            Error error = this.error_;
            return error == null ? Error.getDefaultInstance() : error;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setError(Error value) {
            value.getClass();
            this.error_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeError(Error value) {
            value.getClass();
            Error error = this.error_;
            if (error != null && error != Error.getDefaultInstance()) {
                this.error_ = Error.newBuilder(this.error_).mergeFrom((Error.Builder) value).buildPartial();
            } else {
                this.error_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearError() {
            this.error_ = null;
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapOutputOrBuilder
        public boolean hasBitcoin() {
            return this.signingInputOneofCase_ == 4;
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapOutputOrBuilder
        public Bitcoin.SigningInput getBitcoin() {
            if (this.signingInputOneofCase_ == 4) {
                return (Bitcoin.SigningInput) this.signingInputOneof_;
            }
            return Bitcoin.SigningInput.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBitcoin(Bitcoin.SigningInput value) {
            value.getClass();
            this.signingInputOneof_ = value;
            this.signingInputOneofCase_ = 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeBitcoin(Bitcoin.SigningInput value) {
            value.getClass();
            if (this.signingInputOneofCase_ == 4 && this.signingInputOneof_ != Bitcoin.SigningInput.getDefaultInstance()) {
                this.signingInputOneof_ = Bitcoin.SigningInput.newBuilder((Bitcoin.SigningInput) this.signingInputOneof_).mergeFrom((Bitcoin.SigningInput.Builder) value).buildPartial();
            } else {
                this.signingInputOneof_ = value;
            }
            this.signingInputOneofCase_ = 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearBitcoin() {
            if (this.signingInputOneofCase_ == 4) {
                this.signingInputOneofCase_ = 0;
                this.signingInputOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapOutputOrBuilder
        public boolean hasEthereum() {
            return this.signingInputOneofCase_ == 5;
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapOutputOrBuilder
        public Ethereum.SigningInput getEthereum() {
            if (this.signingInputOneofCase_ == 5) {
                return (Ethereum.SigningInput) this.signingInputOneof_;
            }
            return Ethereum.SigningInput.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setEthereum(Ethereum.SigningInput value) {
            value.getClass();
            this.signingInputOneof_ = value;
            this.signingInputOneofCase_ = 5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeEthereum(Ethereum.SigningInput value) {
            value.getClass();
            if (this.signingInputOneofCase_ == 5 && this.signingInputOneof_ != Ethereum.SigningInput.getDefaultInstance()) {
                this.signingInputOneof_ = Ethereum.SigningInput.newBuilder((Ethereum.SigningInput) this.signingInputOneof_).mergeFrom((Ethereum.SigningInput.Builder) value).buildPartial();
            } else {
                this.signingInputOneof_ = value;
            }
            this.signingInputOneofCase_ = 5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearEthereum() {
            if (this.signingInputOneofCase_ == 5) {
                this.signingInputOneofCase_ = 0;
                this.signingInputOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapOutputOrBuilder
        public boolean hasBinance() {
            return this.signingInputOneofCase_ == 6;
        }

        @Override // wallet.core.jni.proto.THORChainSwap.SwapOutputOrBuilder
        public Binance.SigningInput getBinance() {
            if (this.signingInputOneofCase_ == 6) {
                return (Binance.SigningInput) this.signingInputOneof_;
            }
            return Binance.SigningInput.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBinance(Binance.SigningInput value) {
            value.getClass();
            this.signingInputOneof_ = value;
            this.signingInputOneofCase_ = 6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeBinance(Binance.SigningInput value) {
            value.getClass();
            if (this.signingInputOneofCase_ == 6 && this.signingInputOneof_ != Binance.SigningInput.getDefaultInstance()) {
                this.signingInputOneof_ = Binance.SigningInput.newBuilder((Binance.SigningInput) this.signingInputOneof_).mergeFrom((Binance.SigningInput.Builder) value).buildPartial();
            } else {
                this.signingInputOneof_ = value;
            }
            this.signingInputOneofCase_ = 6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearBinance() {
            if (this.signingInputOneofCase_ == 6) {
                this.signingInputOneofCase_ = 0;
                this.signingInputOneof_ = null;
            }
        }

        public static SwapOutput parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (SwapOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SwapOutput parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SwapOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SwapOutput parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (SwapOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SwapOutput parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SwapOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SwapOutput parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (SwapOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static SwapOutput parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (SwapOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static SwapOutput parseFrom(InputStream input) throws IOException {
            return (SwapOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static SwapOutput parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SwapOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static SwapOutput parseDelimitedFrom(InputStream input) throws IOException {
            return (SwapOutput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static SwapOutput parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SwapOutput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static SwapOutput parseFrom(CodedInputStream input) throws IOException {
            return (SwapOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static SwapOutput parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (SwapOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(SwapOutput prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<SwapOutput, Builder> implements SwapOutputOrBuilder {
            /* synthetic */ Builder(C77651 c77651) {
                this();
            }

            private Builder() {
                super(SwapOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapOutputOrBuilder
            public SigningInputOneofCase getSigningInputOneofCase() {
                return ((SwapOutput) this.instance).getSigningInputOneofCase();
            }

            public Builder clearSigningInputOneof() {
                copyOnWrite();
                ((SwapOutput) this.instance).clearSigningInputOneof();
                return this;
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapOutputOrBuilder
            public int getFromChainValue() {
                return ((SwapOutput) this.instance).getFromChainValue();
            }

            public Builder setFromChainValue(int value) {
                copyOnWrite();
                ((SwapOutput) this.instance).setFromChainValue(value);
                return this;
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapOutputOrBuilder
            public Chain getFromChain() {
                return ((SwapOutput) this.instance).getFromChain();
            }

            public Builder setFromChain(Chain value) {
                copyOnWrite();
                ((SwapOutput) this.instance).setFromChain(value);
                return this;
            }

            public Builder clearFromChain() {
                copyOnWrite();
                ((SwapOutput) this.instance).clearFromChain();
                return this;
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapOutputOrBuilder
            public int getToChainValue() {
                return ((SwapOutput) this.instance).getToChainValue();
            }

            public Builder setToChainValue(int value) {
                copyOnWrite();
                ((SwapOutput) this.instance).setToChainValue(value);
                return this;
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapOutputOrBuilder
            public Chain getToChain() {
                return ((SwapOutput) this.instance).getToChain();
            }

            public Builder setToChain(Chain value) {
                copyOnWrite();
                ((SwapOutput) this.instance).setToChain(value);
                return this;
            }

            public Builder clearToChain() {
                copyOnWrite();
                ((SwapOutput) this.instance).clearToChain();
                return this;
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapOutputOrBuilder
            public boolean hasError() {
                return ((SwapOutput) this.instance).hasError();
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapOutputOrBuilder
            public Error getError() {
                return ((SwapOutput) this.instance).getError();
            }

            public Builder setError(Error value) {
                copyOnWrite();
                ((SwapOutput) this.instance).setError(value);
                return this;
            }

            public Builder setError(Error.Builder builderForValue) {
                copyOnWrite();
                ((SwapOutput) this.instance).setError(builderForValue.build());
                return this;
            }

            public Builder mergeError(Error value) {
                copyOnWrite();
                ((SwapOutput) this.instance).mergeError(value);
                return this;
            }

            public Builder clearError() {
                copyOnWrite();
                ((SwapOutput) this.instance).clearError();
                return this;
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapOutputOrBuilder
            public boolean hasBitcoin() {
                return ((SwapOutput) this.instance).hasBitcoin();
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapOutputOrBuilder
            public Bitcoin.SigningInput getBitcoin() {
                return ((SwapOutput) this.instance).getBitcoin();
            }

            public Builder setBitcoin(Bitcoin.SigningInput value) {
                copyOnWrite();
                ((SwapOutput) this.instance).setBitcoin(value);
                return this;
            }

            public Builder setBitcoin(Bitcoin.SigningInput.Builder builderForValue) {
                copyOnWrite();
                ((SwapOutput) this.instance).setBitcoin(builderForValue.build());
                return this;
            }

            public Builder mergeBitcoin(Bitcoin.SigningInput value) {
                copyOnWrite();
                ((SwapOutput) this.instance).mergeBitcoin(value);
                return this;
            }

            public Builder clearBitcoin() {
                copyOnWrite();
                ((SwapOutput) this.instance).clearBitcoin();
                return this;
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapOutputOrBuilder
            public boolean hasEthereum() {
                return ((SwapOutput) this.instance).hasEthereum();
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapOutputOrBuilder
            public Ethereum.SigningInput getEthereum() {
                return ((SwapOutput) this.instance).getEthereum();
            }

            public Builder setEthereum(Ethereum.SigningInput value) {
                copyOnWrite();
                ((SwapOutput) this.instance).setEthereum(value);
                return this;
            }

            public Builder setEthereum(Ethereum.SigningInput.Builder builderForValue) {
                copyOnWrite();
                ((SwapOutput) this.instance).setEthereum(builderForValue.build());
                return this;
            }

            public Builder mergeEthereum(Ethereum.SigningInput value) {
                copyOnWrite();
                ((SwapOutput) this.instance).mergeEthereum(value);
                return this;
            }

            public Builder clearEthereum() {
                copyOnWrite();
                ((SwapOutput) this.instance).clearEthereum();
                return this;
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapOutputOrBuilder
            public boolean hasBinance() {
                return ((SwapOutput) this.instance).hasBinance();
            }

            @Override // wallet.core.jni.proto.THORChainSwap.SwapOutputOrBuilder
            public Binance.SigningInput getBinance() {
                return ((SwapOutput) this.instance).getBinance();
            }

            public Builder setBinance(Binance.SigningInput value) {
                copyOnWrite();
                ((SwapOutput) this.instance).setBinance(value);
                return this;
            }

            public Builder setBinance(Binance.SigningInput.Builder builderForValue) {
                copyOnWrite();
                ((SwapOutput) this.instance).setBinance(builderForValue.build());
                return this;
            }

            public Builder mergeBinance(Binance.SigningInput value) {
                copyOnWrite();
                ((SwapOutput) this.instance).mergeBinance(value);
                return this;
            }

            public Builder clearBinance() {
                copyOnWrite();
                ((SwapOutput) this.instance).clearBinance();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77651.f2159xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SwapOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0006\u0001\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\f\u0002\f\u0003\t\u0004<\u0000\u0005<\u0000\u0006<\u0000", new Object[]{"signingInputOneof_", "signingInputOneofCase_", "fromChain_", "toChain_", "error_", Bitcoin.SigningInput.class, Ethereum.SigningInput.class, Binance.SigningInput.class});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<SwapOutput> parser = PARSER;
                    if (parser == null) {
                        synchronized (SwapOutput.class) {
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
            SwapOutput swapOutput = new SwapOutput();
            DEFAULT_INSTANCE = swapOutput;
            GeneratedMessageLite.registerDefaultInstance(SwapOutput.class, swapOutput);
        }

        public static SwapOutput getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<SwapOutput> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }
}
