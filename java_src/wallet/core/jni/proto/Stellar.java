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
/* loaded from: classes6.dex */
public final class Stellar {

    /* loaded from: classes6.dex */
    public interface AssetOrBuilder extends MessageLiteOrBuilder {
        String getAlphanum4();

        ByteString getAlphanum4Bytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getIssuer();

        ByteString getIssuerBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface ClaimantOrBuilder extends MessageLiteOrBuilder {
        String getAccount();

        ByteString getAccountBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ClaimPredicate getPredicate();

        int getPredicateValue();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface MemoHashOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getHash();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface MemoIdOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        long getId();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface MemoTextOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getText();

        ByteString getTextBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface MemoVoidOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface OperationChangeTrustOrBuilder extends MessageLiteOrBuilder {
        Asset getAsset();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        long getValidBefore();

        boolean hasAsset();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface OperationClaimClaimableBalanceOrBuilder extends MessageLiteOrBuilder {
        ByteString getBalanceId();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface OperationCreateAccountOrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getDestination();

        ByteString getDestinationBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface OperationCreateClaimableBalanceOrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        Asset getAsset();

        Claimant getClaimants(int index);

        int getClaimantsCount();

        List<Claimant> getClaimantsList();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        boolean hasAsset();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface OperationPaymentOrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        Asset getAsset();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getDestination();

        ByteString getDestinationBytes();

        boolean hasAsset();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        String getAccount();

        ByteString getAccountBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        int getFee();

        MemoHash getMemoHash();

        MemoId getMemoId();

        MemoHash getMemoReturnHash();

        MemoText getMemoText();

        SigningInput.MemoTypeOneofCase getMemoTypeOneofCase();

        MemoVoid getMemoVoid();

        OperationChangeTrust getOpChangeTrust();

        OperationClaimClaimableBalance getOpClaimClaimableBalance();

        OperationCreateAccount getOpCreateAccount();

        OperationCreateClaimableBalance getOpCreateClaimableBalance();

        OperationPayment getOpPayment();

        SigningInput.OperationOneofCase getOperationOneofCase();

        String getPassphrase();

        ByteString getPassphraseBytes();

        ByteString getPrivateKey();

        long getSequence();

        boolean hasMemoHash();

        boolean hasMemoId();

        boolean hasMemoReturnHash();

        boolean hasMemoText();

        boolean hasMemoVoid();

        boolean hasOpChangeTrust();

        boolean hasOpClaimClaimableBalance();

        boolean hasOpCreateAccount();

        boolean hasOpCreateClaimableBalance();

        boolean hasOpPayment();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SigningOutputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getSignature();

        ByteString getSignatureBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private Stellar() {
    }

    /* loaded from: classes6.dex */
    public enum ClaimPredicate implements Internal.EnumLite {
        Predicate_unconditional(0),
        UNRECOGNIZED(-1);
        
        public static final int Predicate_unconditional_VALUE = 0;
        private static final Internal.EnumLiteMap<ClaimPredicate> internalValueMap = new Internal.EnumLiteMap<ClaimPredicate>() { // from class: wallet.core.jni.proto.Stellar.ClaimPredicate.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public ClaimPredicate findValueByNumber(int number) {
                return ClaimPredicate.forNumber(number);
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
        public static ClaimPredicate valueOf(int value) {
            return forNumber(value);
        }

        public static ClaimPredicate forNumber(int value) {
            if (value != 0) {
                return null;
            }
            return Predicate_unconditional;
        }

        public static Internal.EnumLiteMap<ClaimPredicate> internalGetValueMap() {
            return internalValueMap;
        }

        public static Internal.EnumVerifier internalGetVerifier() {
            return ClaimPredicateVerifier.INSTANCE;
        }

        /* loaded from: classes6.dex */
        private static final class ClaimPredicateVerifier implements Internal.EnumVerifier {
            static final Internal.EnumVerifier INSTANCE = new ClaimPredicateVerifier();

            private ClaimPredicateVerifier() {
            }

            @Override // com.google.protobuf.Internal.EnumVerifier
            public boolean isInRange(int number) {
                return ClaimPredicate.forNumber(number) != null;
            }
        }

        ClaimPredicate(int value) {
            this.value = value;
        }
    }

    /* loaded from: classes6.dex */
    public static final class Asset extends GeneratedMessageLite<Asset, Builder> implements AssetOrBuilder {
        public static final int ALPHANUM4_FIELD_NUMBER = 2;
        private static final Asset DEFAULT_INSTANCE;
        public static final int ISSUER_FIELD_NUMBER = 1;
        private static volatile Parser<Asset> PARSER;
        private String issuer_ = "";
        private String alphanum4_ = "";

        private Asset() {
        }

        @Override // wallet.core.jni.proto.Stellar.AssetOrBuilder
        public String getIssuer() {
            return this.issuer_;
        }

        @Override // wallet.core.jni.proto.Stellar.AssetOrBuilder
        public ByteString getIssuerBytes() {
            return ByteString.copyFromUtf8(this.issuer_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setIssuer(String value) {
            value.getClass();
            this.issuer_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearIssuer() {
            this.issuer_ = getDefaultInstance().getIssuer();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setIssuerBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.issuer_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Stellar.AssetOrBuilder
        public String getAlphanum4() {
            return this.alphanum4_;
        }

        @Override // wallet.core.jni.proto.Stellar.AssetOrBuilder
        public ByteString getAlphanum4Bytes() {
            return ByteString.copyFromUtf8(this.alphanum4_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAlphanum4(String value) {
            value.getClass();
            this.alphanum4_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAlphanum4() {
            this.alphanum4_ = getDefaultInstance().getAlphanum4();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAlphanum4Bytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.alphanum4_ = value.toStringUtf8();
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
            /* synthetic */ Builder(C68301 c68301) {
                this();
            }

            private Builder() {
                super(Asset.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Stellar.AssetOrBuilder
            public String getIssuer() {
                return ((Asset) this.instance).getIssuer();
            }

            @Override // wallet.core.jni.proto.Stellar.AssetOrBuilder
            public ByteString getIssuerBytes() {
                return ((Asset) this.instance).getIssuerBytes();
            }

            public Builder setIssuer(String value) {
                copyOnWrite();
                ((Asset) this.instance).setIssuer(value);
                return this;
            }

            public Builder clearIssuer() {
                copyOnWrite();
                ((Asset) this.instance).clearIssuer();
                return this;
            }

            public Builder setIssuerBytes(ByteString value) {
                copyOnWrite();
                ((Asset) this.instance).setIssuerBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Stellar.AssetOrBuilder
            public String getAlphanum4() {
                return ((Asset) this.instance).getAlphanum4();
            }

            @Override // wallet.core.jni.proto.Stellar.AssetOrBuilder
            public ByteString getAlphanum4Bytes() {
                return ((Asset) this.instance).getAlphanum4Bytes();
            }

            public Builder setAlphanum4(String value) {
                copyOnWrite();
                ((Asset) this.instance).setAlphanum4(value);
                return this;
            }

            public Builder clearAlphanum4() {
                copyOnWrite();
                ((Asset) this.instance).clearAlphanum4();
                return this;
            }

            public Builder setAlphanum4Bytes(ByteString value) {
                copyOnWrite();
                ((Asset) this.instance).setAlphanum4Bytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68301.f1896xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Asset();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ", new Object[]{"issuer_", "alphanum4_"});
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

    /* renamed from: wallet.core.jni.proto.Stellar$1 */
    /* loaded from: classes6.dex */
    static /* synthetic */ class C68301 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f1896xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f1896xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1896xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1896xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1896xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1896xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1896xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1896xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class OperationCreateAccount extends GeneratedMessageLite<OperationCreateAccount, Builder> implements OperationCreateAccountOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 2;
        private static final OperationCreateAccount DEFAULT_INSTANCE;
        public static final int DESTINATION_FIELD_NUMBER = 1;
        private static volatile Parser<OperationCreateAccount> PARSER;
        private long amount_;
        private String destination_ = "";

        private OperationCreateAccount() {
        }

        @Override // wallet.core.jni.proto.Stellar.OperationCreateAccountOrBuilder
        public String getDestination() {
            return this.destination_;
        }

        @Override // wallet.core.jni.proto.Stellar.OperationCreateAccountOrBuilder
        public ByteString getDestinationBytes() {
            return ByteString.copyFromUtf8(this.destination_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDestination(String value) {
            value.getClass();
            this.destination_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDestination() {
            this.destination_ = getDefaultInstance().getDestination();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDestinationBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.destination_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Stellar.OperationCreateAccountOrBuilder
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

        public static OperationCreateAccount parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (OperationCreateAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationCreateAccount parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationCreateAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationCreateAccount parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (OperationCreateAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationCreateAccount parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationCreateAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationCreateAccount parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (OperationCreateAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationCreateAccount parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationCreateAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationCreateAccount parseFrom(InputStream input) throws IOException {
            return (OperationCreateAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationCreateAccount parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationCreateAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OperationCreateAccount parseDelimitedFrom(InputStream input) throws IOException {
            return (OperationCreateAccount) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationCreateAccount parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationCreateAccount) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OperationCreateAccount parseFrom(CodedInputStream input) throws IOException {
            return (OperationCreateAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationCreateAccount parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationCreateAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(OperationCreateAccount prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<OperationCreateAccount, Builder> implements OperationCreateAccountOrBuilder {
            /* synthetic */ Builder(C68301 c68301) {
                this();
            }

            private Builder() {
                super(OperationCreateAccount.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Stellar.OperationCreateAccountOrBuilder
            public String getDestination() {
                return ((OperationCreateAccount) this.instance).getDestination();
            }

            @Override // wallet.core.jni.proto.Stellar.OperationCreateAccountOrBuilder
            public ByteString getDestinationBytes() {
                return ((OperationCreateAccount) this.instance).getDestinationBytes();
            }

            public Builder setDestination(String value) {
                copyOnWrite();
                ((OperationCreateAccount) this.instance).setDestination(value);
                return this;
            }

            public Builder clearDestination() {
                copyOnWrite();
                ((OperationCreateAccount) this.instance).clearDestination();
                return this;
            }

            public Builder setDestinationBytes(ByteString value) {
                copyOnWrite();
                ((OperationCreateAccount) this.instance).setDestinationBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Stellar.OperationCreateAccountOrBuilder
            public long getAmount() {
                return ((OperationCreateAccount) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((OperationCreateAccount) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((OperationCreateAccount) this.instance).clearAmount();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68301.f1896xa1df5c61[method.ordinal()]) {
                case 1:
                    return new OperationCreateAccount();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\u0002", new Object[]{"destination_", "amount_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<OperationCreateAccount> parser = PARSER;
                    if (parser == null) {
                        synchronized (OperationCreateAccount.class) {
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
            OperationCreateAccount operationCreateAccount = new OperationCreateAccount();
            DEFAULT_INSTANCE = operationCreateAccount;
            GeneratedMessageLite.registerDefaultInstance(OperationCreateAccount.class, operationCreateAccount);
        }

        public static OperationCreateAccount getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<OperationCreateAccount> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class OperationPayment extends GeneratedMessageLite<OperationPayment, Builder> implements OperationPaymentOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 3;
        public static final int ASSET_FIELD_NUMBER = 2;
        private static final OperationPayment DEFAULT_INSTANCE;
        public static final int DESTINATION_FIELD_NUMBER = 1;
        private static volatile Parser<OperationPayment> PARSER;
        private long amount_;
        private Asset asset_;
        private String destination_ = "";

        private OperationPayment() {
        }

        @Override // wallet.core.jni.proto.Stellar.OperationPaymentOrBuilder
        public String getDestination() {
            return this.destination_;
        }

        @Override // wallet.core.jni.proto.Stellar.OperationPaymentOrBuilder
        public ByteString getDestinationBytes() {
            return ByteString.copyFromUtf8(this.destination_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDestination(String value) {
            value.getClass();
            this.destination_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDestination() {
            this.destination_ = getDefaultInstance().getDestination();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDestinationBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.destination_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Stellar.OperationPaymentOrBuilder
        public boolean hasAsset() {
            return this.asset_ != null;
        }

        @Override // wallet.core.jni.proto.Stellar.OperationPaymentOrBuilder
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

        @Override // wallet.core.jni.proto.Stellar.OperationPaymentOrBuilder
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

        public static OperationPayment parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (OperationPayment) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationPayment parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationPayment) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationPayment parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (OperationPayment) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationPayment parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationPayment) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationPayment parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (OperationPayment) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationPayment parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationPayment) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationPayment parseFrom(InputStream input) throws IOException {
            return (OperationPayment) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationPayment parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationPayment) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OperationPayment parseDelimitedFrom(InputStream input) throws IOException {
            return (OperationPayment) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationPayment parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationPayment) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OperationPayment parseFrom(CodedInputStream input) throws IOException {
            return (OperationPayment) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationPayment parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationPayment) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(OperationPayment prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<OperationPayment, Builder> implements OperationPaymentOrBuilder {
            /* synthetic */ Builder(C68301 c68301) {
                this();
            }

            private Builder() {
                super(OperationPayment.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Stellar.OperationPaymentOrBuilder
            public String getDestination() {
                return ((OperationPayment) this.instance).getDestination();
            }

            @Override // wallet.core.jni.proto.Stellar.OperationPaymentOrBuilder
            public ByteString getDestinationBytes() {
                return ((OperationPayment) this.instance).getDestinationBytes();
            }

            public Builder setDestination(String value) {
                copyOnWrite();
                ((OperationPayment) this.instance).setDestination(value);
                return this;
            }

            public Builder clearDestination() {
                copyOnWrite();
                ((OperationPayment) this.instance).clearDestination();
                return this;
            }

            public Builder setDestinationBytes(ByteString value) {
                copyOnWrite();
                ((OperationPayment) this.instance).setDestinationBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Stellar.OperationPaymentOrBuilder
            public boolean hasAsset() {
                return ((OperationPayment) this.instance).hasAsset();
            }

            @Override // wallet.core.jni.proto.Stellar.OperationPaymentOrBuilder
            public Asset getAsset() {
                return ((OperationPayment) this.instance).getAsset();
            }

            public Builder setAsset(Asset value) {
                copyOnWrite();
                ((OperationPayment) this.instance).setAsset(value);
                return this;
            }

            public Builder setAsset(Asset.Builder builderForValue) {
                copyOnWrite();
                ((OperationPayment) this.instance).setAsset(builderForValue.build());
                return this;
            }

            public Builder mergeAsset(Asset value) {
                copyOnWrite();
                ((OperationPayment) this.instance).mergeAsset(value);
                return this;
            }

            public Builder clearAsset() {
                copyOnWrite();
                ((OperationPayment) this.instance).clearAsset();
                return this;
            }

            @Override // wallet.core.jni.proto.Stellar.OperationPaymentOrBuilder
            public long getAmount() {
                return ((OperationPayment) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((OperationPayment) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((OperationPayment) this.instance).clearAmount();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68301.f1896xa1df5c61[method.ordinal()]) {
                case 1:
                    return new OperationPayment();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\t\u0003\u0002", new Object[]{"destination_", "asset_", "amount_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<OperationPayment> parser = PARSER;
                    if (parser == null) {
                        synchronized (OperationPayment.class) {
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
            OperationPayment operationPayment = new OperationPayment();
            DEFAULT_INSTANCE = operationPayment;
            GeneratedMessageLite.registerDefaultInstance(OperationPayment.class, operationPayment);
        }

        public static OperationPayment getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<OperationPayment> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class OperationChangeTrust extends GeneratedMessageLite<OperationChangeTrust, Builder> implements OperationChangeTrustOrBuilder {
        public static final int ASSET_FIELD_NUMBER = 1;
        private static final OperationChangeTrust DEFAULT_INSTANCE;
        private static volatile Parser<OperationChangeTrust> PARSER = null;
        public static final int VALID_BEFORE_FIELD_NUMBER = 2;
        private Asset asset_;
        private long validBefore_;

        private OperationChangeTrust() {
        }

        @Override // wallet.core.jni.proto.Stellar.OperationChangeTrustOrBuilder
        public boolean hasAsset() {
            return this.asset_ != null;
        }

        @Override // wallet.core.jni.proto.Stellar.OperationChangeTrustOrBuilder
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

        @Override // wallet.core.jni.proto.Stellar.OperationChangeTrustOrBuilder
        public long getValidBefore() {
            return this.validBefore_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setValidBefore(long value) {
            this.validBefore_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearValidBefore() {
            this.validBefore_ = 0L;
        }

        public static OperationChangeTrust parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (OperationChangeTrust) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationChangeTrust parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationChangeTrust) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationChangeTrust parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (OperationChangeTrust) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationChangeTrust parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationChangeTrust) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationChangeTrust parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (OperationChangeTrust) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationChangeTrust parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationChangeTrust) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationChangeTrust parseFrom(InputStream input) throws IOException {
            return (OperationChangeTrust) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationChangeTrust parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationChangeTrust) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OperationChangeTrust parseDelimitedFrom(InputStream input) throws IOException {
            return (OperationChangeTrust) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationChangeTrust parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationChangeTrust) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OperationChangeTrust parseFrom(CodedInputStream input) throws IOException {
            return (OperationChangeTrust) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationChangeTrust parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationChangeTrust) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(OperationChangeTrust prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<OperationChangeTrust, Builder> implements OperationChangeTrustOrBuilder {
            /* synthetic */ Builder(C68301 c68301) {
                this();
            }

            private Builder() {
                super(OperationChangeTrust.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Stellar.OperationChangeTrustOrBuilder
            public boolean hasAsset() {
                return ((OperationChangeTrust) this.instance).hasAsset();
            }

            @Override // wallet.core.jni.proto.Stellar.OperationChangeTrustOrBuilder
            public Asset getAsset() {
                return ((OperationChangeTrust) this.instance).getAsset();
            }

            public Builder setAsset(Asset value) {
                copyOnWrite();
                ((OperationChangeTrust) this.instance).setAsset(value);
                return this;
            }

            public Builder setAsset(Asset.Builder builderForValue) {
                copyOnWrite();
                ((OperationChangeTrust) this.instance).setAsset(builderForValue.build());
                return this;
            }

            public Builder mergeAsset(Asset value) {
                copyOnWrite();
                ((OperationChangeTrust) this.instance).mergeAsset(value);
                return this;
            }

            public Builder clearAsset() {
                copyOnWrite();
                ((OperationChangeTrust) this.instance).clearAsset();
                return this;
            }

            @Override // wallet.core.jni.proto.Stellar.OperationChangeTrustOrBuilder
            public long getValidBefore() {
                return ((OperationChangeTrust) this.instance).getValidBefore();
            }

            public Builder setValidBefore(long value) {
                copyOnWrite();
                ((OperationChangeTrust) this.instance).setValidBefore(value);
                return this;
            }

            public Builder clearValidBefore() {
                copyOnWrite();
                ((OperationChangeTrust) this.instance).clearValidBefore();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68301.f1896xa1df5c61[method.ordinal()]) {
                case 1:
                    return new OperationChangeTrust();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u0002", new Object[]{"asset_", "validBefore_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<OperationChangeTrust> parser = PARSER;
                    if (parser == null) {
                        synchronized (OperationChangeTrust.class) {
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
            OperationChangeTrust operationChangeTrust = new OperationChangeTrust();
            DEFAULT_INSTANCE = operationChangeTrust;
            GeneratedMessageLite.registerDefaultInstance(OperationChangeTrust.class, operationChangeTrust);
        }

        public static OperationChangeTrust getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<OperationChangeTrust> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class Claimant extends GeneratedMessageLite<Claimant, Builder> implements ClaimantOrBuilder {
        public static final int ACCOUNT_FIELD_NUMBER = 1;
        private static final Claimant DEFAULT_INSTANCE;
        private static volatile Parser<Claimant> PARSER = null;
        public static final int PREDICATE_FIELD_NUMBER = 2;
        private String account_ = "";
        private int predicate_;

        private Claimant() {
        }

        @Override // wallet.core.jni.proto.Stellar.ClaimantOrBuilder
        public String getAccount() {
            return this.account_;
        }

        @Override // wallet.core.jni.proto.Stellar.ClaimantOrBuilder
        public ByteString getAccountBytes() {
            return ByteString.copyFromUtf8(this.account_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAccount(String value) {
            value.getClass();
            this.account_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAccount() {
            this.account_ = getDefaultInstance().getAccount();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAccountBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.account_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Stellar.ClaimantOrBuilder
        public int getPredicateValue() {
            return this.predicate_;
        }

        @Override // wallet.core.jni.proto.Stellar.ClaimantOrBuilder
        public ClaimPredicate getPredicate() {
            ClaimPredicate forNumber = ClaimPredicate.forNumber(this.predicate_);
            return forNumber == null ? ClaimPredicate.UNRECOGNIZED : forNumber;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPredicateValue(int value) {
            this.predicate_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPredicate(ClaimPredicate value) {
            this.predicate_ = value.getNumber();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPredicate() {
            this.predicate_ = 0;
        }

        public static Claimant parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (Claimant) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Claimant parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Claimant) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Claimant parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (Claimant) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Claimant parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Claimant) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Claimant parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (Claimant) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Claimant parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Claimant) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Claimant parseFrom(InputStream input) throws IOException {
            return (Claimant) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Claimant parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Claimant) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Claimant parseDelimitedFrom(InputStream input) throws IOException {
            return (Claimant) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static Claimant parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Claimant) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Claimant parseFrom(CodedInputStream input) throws IOException {
            return (Claimant) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Claimant parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Claimant) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(Claimant prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Claimant, Builder> implements ClaimantOrBuilder {
            /* synthetic */ Builder(C68301 c68301) {
                this();
            }

            private Builder() {
                super(Claimant.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Stellar.ClaimantOrBuilder
            public String getAccount() {
                return ((Claimant) this.instance).getAccount();
            }

            @Override // wallet.core.jni.proto.Stellar.ClaimantOrBuilder
            public ByteString getAccountBytes() {
                return ((Claimant) this.instance).getAccountBytes();
            }

            public Builder setAccount(String value) {
                copyOnWrite();
                ((Claimant) this.instance).setAccount(value);
                return this;
            }

            public Builder clearAccount() {
                copyOnWrite();
                ((Claimant) this.instance).clearAccount();
                return this;
            }

            public Builder setAccountBytes(ByteString value) {
                copyOnWrite();
                ((Claimant) this.instance).setAccountBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Stellar.ClaimantOrBuilder
            public int getPredicateValue() {
                return ((Claimant) this.instance).getPredicateValue();
            }

            public Builder setPredicateValue(int value) {
                copyOnWrite();
                ((Claimant) this.instance).setPredicateValue(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Stellar.ClaimantOrBuilder
            public ClaimPredicate getPredicate() {
                return ((Claimant) this.instance).getPredicate();
            }

            public Builder setPredicate(ClaimPredicate value) {
                copyOnWrite();
                ((Claimant) this.instance).setPredicate(value);
                return this;
            }

            public Builder clearPredicate() {
                copyOnWrite();
                ((Claimant) this.instance).clearPredicate();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68301.f1896xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Claimant();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\f", new Object[]{"account_", "predicate_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Claimant> parser = PARSER;
                    if (parser == null) {
                        synchronized (Claimant.class) {
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
            Claimant claimant = new Claimant();
            DEFAULT_INSTANCE = claimant;
            GeneratedMessageLite.registerDefaultInstance(Claimant.class, claimant);
        }

        public static Claimant getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Claimant> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class OperationCreateClaimableBalance extends GeneratedMessageLite<OperationCreateClaimableBalance, Builder> implements OperationCreateClaimableBalanceOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 2;
        public static final int ASSET_FIELD_NUMBER = 1;
        public static final int CLAIMANTS_FIELD_NUMBER = 3;
        private static final OperationCreateClaimableBalance DEFAULT_INSTANCE;
        private static volatile Parser<OperationCreateClaimableBalance> PARSER;
        private long amount_;
        private Asset asset_;
        private Internal.ProtobufList<Claimant> claimants_ = GeneratedMessageLite.emptyProtobufList();

        private OperationCreateClaimableBalance() {
        }

        @Override // wallet.core.jni.proto.Stellar.OperationCreateClaimableBalanceOrBuilder
        public boolean hasAsset() {
            return this.asset_ != null;
        }

        @Override // wallet.core.jni.proto.Stellar.OperationCreateClaimableBalanceOrBuilder
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

        @Override // wallet.core.jni.proto.Stellar.OperationCreateClaimableBalanceOrBuilder
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

        @Override // wallet.core.jni.proto.Stellar.OperationCreateClaimableBalanceOrBuilder
        public List<Claimant> getClaimantsList() {
            return this.claimants_;
        }

        public List<? extends ClaimantOrBuilder> getClaimantsOrBuilderList() {
            return this.claimants_;
        }

        @Override // wallet.core.jni.proto.Stellar.OperationCreateClaimableBalanceOrBuilder
        public int getClaimantsCount() {
            return this.claimants_.size();
        }

        @Override // wallet.core.jni.proto.Stellar.OperationCreateClaimableBalanceOrBuilder
        public Claimant getClaimants(int index) {
            return this.claimants_.get(index);
        }

        public ClaimantOrBuilder getClaimantsOrBuilder(int index) {
            return this.claimants_.get(index);
        }

        private void ensureClaimantsIsMutable() {
            Internal.ProtobufList<Claimant> protobufList = this.claimants_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.claimants_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setClaimants(int index, Claimant value) {
            value.getClass();
            ensureClaimantsIsMutable();
            this.claimants_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addClaimants(Claimant value) {
            value.getClass();
            ensureClaimantsIsMutable();
            this.claimants_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addClaimants(int index, Claimant value) {
            value.getClass();
            ensureClaimantsIsMutable();
            this.claimants_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllClaimants(Iterable<? extends Claimant> values) {
            ensureClaimantsIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.claimants_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearClaimants() {
            this.claimants_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeClaimants(int index) {
            ensureClaimantsIsMutable();
            this.claimants_.remove(index);
        }

        public static OperationCreateClaimableBalance parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (OperationCreateClaimableBalance) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationCreateClaimableBalance parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationCreateClaimableBalance) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationCreateClaimableBalance parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (OperationCreateClaimableBalance) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationCreateClaimableBalance parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationCreateClaimableBalance) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationCreateClaimableBalance parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (OperationCreateClaimableBalance) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationCreateClaimableBalance parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationCreateClaimableBalance) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationCreateClaimableBalance parseFrom(InputStream input) throws IOException {
            return (OperationCreateClaimableBalance) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationCreateClaimableBalance parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationCreateClaimableBalance) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OperationCreateClaimableBalance parseDelimitedFrom(InputStream input) throws IOException {
            return (OperationCreateClaimableBalance) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationCreateClaimableBalance parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationCreateClaimableBalance) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OperationCreateClaimableBalance parseFrom(CodedInputStream input) throws IOException {
            return (OperationCreateClaimableBalance) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationCreateClaimableBalance parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationCreateClaimableBalance) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(OperationCreateClaimableBalance prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<OperationCreateClaimableBalance, Builder> implements OperationCreateClaimableBalanceOrBuilder {
            /* synthetic */ Builder(C68301 c68301) {
                this();
            }

            private Builder() {
                super(OperationCreateClaimableBalance.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Stellar.OperationCreateClaimableBalanceOrBuilder
            public boolean hasAsset() {
                return ((OperationCreateClaimableBalance) this.instance).hasAsset();
            }

            @Override // wallet.core.jni.proto.Stellar.OperationCreateClaimableBalanceOrBuilder
            public Asset getAsset() {
                return ((OperationCreateClaimableBalance) this.instance).getAsset();
            }

            public Builder setAsset(Asset value) {
                copyOnWrite();
                ((OperationCreateClaimableBalance) this.instance).setAsset(value);
                return this;
            }

            public Builder setAsset(Asset.Builder builderForValue) {
                copyOnWrite();
                ((OperationCreateClaimableBalance) this.instance).setAsset(builderForValue.build());
                return this;
            }

            public Builder mergeAsset(Asset value) {
                copyOnWrite();
                ((OperationCreateClaimableBalance) this.instance).mergeAsset(value);
                return this;
            }

            public Builder clearAsset() {
                copyOnWrite();
                ((OperationCreateClaimableBalance) this.instance).clearAsset();
                return this;
            }

            @Override // wallet.core.jni.proto.Stellar.OperationCreateClaimableBalanceOrBuilder
            public long getAmount() {
                return ((OperationCreateClaimableBalance) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((OperationCreateClaimableBalance) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((OperationCreateClaimableBalance) this.instance).clearAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.Stellar.OperationCreateClaimableBalanceOrBuilder
            public List<Claimant> getClaimantsList() {
                return Collections.unmodifiableList(((OperationCreateClaimableBalance) this.instance).getClaimantsList());
            }

            @Override // wallet.core.jni.proto.Stellar.OperationCreateClaimableBalanceOrBuilder
            public int getClaimantsCount() {
                return ((OperationCreateClaimableBalance) this.instance).getClaimantsCount();
            }

            @Override // wallet.core.jni.proto.Stellar.OperationCreateClaimableBalanceOrBuilder
            public Claimant getClaimants(int index) {
                return ((OperationCreateClaimableBalance) this.instance).getClaimants(index);
            }

            public Builder setClaimants(int index, Claimant value) {
                copyOnWrite();
                ((OperationCreateClaimableBalance) this.instance).setClaimants(index, value);
                return this;
            }

            public Builder setClaimants(int index, Claimant.Builder builderForValue) {
                copyOnWrite();
                ((OperationCreateClaimableBalance) this.instance).setClaimants(index, builderForValue.build());
                return this;
            }

            public Builder addClaimants(Claimant value) {
                copyOnWrite();
                ((OperationCreateClaimableBalance) this.instance).addClaimants(value);
                return this;
            }

            public Builder addClaimants(int index, Claimant value) {
                copyOnWrite();
                ((OperationCreateClaimableBalance) this.instance).addClaimants(index, value);
                return this;
            }

            public Builder addClaimants(Claimant.Builder builderForValue) {
                copyOnWrite();
                ((OperationCreateClaimableBalance) this.instance).addClaimants(builderForValue.build());
                return this;
            }

            public Builder addClaimants(int index, Claimant.Builder builderForValue) {
                copyOnWrite();
                ((OperationCreateClaimableBalance) this.instance).addClaimants(index, builderForValue.build());
                return this;
            }

            public Builder addAllClaimants(Iterable<? extends Claimant> values) {
                copyOnWrite();
                ((OperationCreateClaimableBalance) this.instance).addAllClaimants(values);
                return this;
            }

            public Builder clearClaimants() {
                copyOnWrite();
                ((OperationCreateClaimableBalance) this.instance).clearClaimants();
                return this;
            }

            public Builder removeClaimants(int index) {
                copyOnWrite();
                ((OperationCreateClaimableBalance) this.instance).removeClaimants(index);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68301.f1896xa1df5c61[method.ordinal()]) {
                case 1:
                    return new OperationCreateClaimableBalance();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0001\u0000\u0001\t\u0002\u0002\u0003\u001b", new Object[]{"asset_", "amount_", "claimants_", Claimant.class});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<OperationCreateClaimableBalance> parser = PARSER;
                    if (parser == null) {
                        synchronized (OperationCreateClaimableBalance.class) {
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
            OperationCreateClaimableBalance operationCreateClaimableBalance = new OperationCreateClaimableBalance();
            DEFAULT_INSTANCE = operationCreateClaimableBalance;
            GeneratedMessageLite.registerDefaultInstance(OperationCreateClaimableBalance.class, operationCreateClaimableBalance);
        }

        public static OperationCreateClaimableBalance getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<OperationCreateClaimableBalance> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class OperationClaimClaimableBalance extends GeneratedMessageLite<OperationClaimClaimableBalance, Builder> implements OperationClaimClaimableBalanceOrBuilder {
        public static final int BALANCE_ID_FIELD_NUMBER = 1;
        private static final OperationClaimClaimableBalance DEFAULT_INSTANCE;
        private static volatile Parser<OperationClaimClaimableBalance> PARSER;
        private ByteString balanceId_ = ByteString.EMPTY;

        private OperationClaimClaimableBalance() {
        }

        @Override // wallet.core.jni.proto.Stellar.OperationClaimClaimableBalanceOrBuilder
        public ByteString getBalanceId() {
            return this.balanceId_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBalanceId(ByteString value) {
            value.getClass();
            this.balanceId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearBalanceId() {
            this.balanceId_ = getDefaultInstance().getBalanceId();
        }

        public static OperationClaimClaimableBalance parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (OperationClaimClaimableBalance) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationClaimClaimableBalance parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationClaimClaimableBalance) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationClaimClaimableBalance parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (OperationClaimClaimableBalance) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationClaimClaimableBalance parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationClaimClaimableBalance) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationClaimClaimableBalance parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (OperationClaimClaimableBalance) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationClaimClaimableBalance parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationClaimClaimableBalance) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationClaimClaimableBalance parseFrom(InputStream input) throws IOException {
            return (OperationClaimClaimableBalance) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationClaimClaimableBalance parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationClaimClaimableBalance) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OperationClaimClaimableBalance parseDelimitedFrom(InputStream input) throws IOException {
            return (OperationClaimClaimableBalance) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationClaimClaimableBalance parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationClaimClaimableBalance) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OperationClaimClaimableBalance parseFrom(CodedInputStream input) throws IOException {
            return (OperationClaimClaimableBalance) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationClaimClaimableBalance parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationClaimClaimableBalance) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(OperationClaimClaimableBalance prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<OperationClaimClaimableBalance, Builder> implements OperationClaimClaimableBalanceOrBuilder {
            /* synthetic */ Builder(C68301 c68301) {
                this();
            }

            private Builder() {
                super(OperationClaimClaimableBalance.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Stellar.OperationClaimClaimableBalanceOrBuilder
            public ByteString getBalanceId() {
                return ((OperationClaimClaimableBalance) this.instance).getBalanceId();
            }

            public Builder setBalanceId(ByteString value) {
                copyOnWrite();
                ((OperationClaimClaimableBalance) this.instance).setBalanceId(value);
                return this;
            }

            public Builder clearBalanceId() {
                copyOnWrite();
                ((OperationClaimClaimableBalance) this.instance).clearBalanceId();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68301.f1896xa1df5c61[method.ordinal()]) {
                case 1:
                    return new OperationClaimClaimableBalance();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\n", new Object[]{"balanceId_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<OperationClaimClaimableBalance> parser = PARSER;
                    if (parser == null) {
                        synchronized (OperationClaimClaimableBalance.class) {
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
            OperationClaimClaimableBalance operationClaimClaimableBalance = new OperationClaimClaimableBalance();
            DEFAULT_INSTANCE = operationClaimClaimableBalance;
            GeneratedMessageLite.registerDefaultInstance(OperationClaimClaimableBalance.class, operationClaimClaimableBalance);
        }

        public static OperationClaimClaimableBalance getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<OperationClaimClaimableBalance> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class MemoVoid extends GeneratedMessageLite<MemoVoid, Builder> implements MemoVoidOrBuilder {
        private static final MemoVoid DEFAULT_INSTANCE;
        private static volatile Parser<MemoVoid> PARSER;

        private MemoVoid() {
        }

        public static MemoVoid parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (MemoVoid) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static MemoVoid parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (MemoVoid) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static MemoVoid parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (MemoVoid) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static MemoVoid parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (MemoVoid) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static MemoVoid parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (MemoVoid) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static MemoVoid parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (MemoVoid) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static MemoVoid parseFrom(InputStream input) throws IOException {
            return (MemoVoid) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static MemoVoid parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MemoVoid) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static MemoVoid parseDelimitedFrom(InputStream input) throws IOException {
            return (MemoVoid) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static MemoVoid parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MemoVoid) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static MemoVoid parseFrom(CodedInputStream input) throws IOException {
            return (MemoVoid) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static MemoVoid parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MemoVoid) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(MemoVoid prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<MemoVoid, Builder> implements MemoVoidOrBuilder {
            /* synthetic */ Builder(C68301 c68301) {
                this();
            }

            private Builder() {
                super(MemoVoid.DEFAULT_INSTANCE);
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68301.f1896xa1df5c61[method.ordinal()]) {
                case 1:
                    return new MemoVoid();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0000", null);
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<MemoVoid> parser = PARSER;
                    if (parser == null) {
                        synchronized (MemoVoid.class) {
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
            MemoVoid memoVoid = new MemoVoid();
            DEFAULT_INSTANCE = memoVoid;
            GeneratedMessageLite.registerDefaultInstance(MemoVoid.class, memoVoid);
        }

        public static MemoVoid getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<MemoVoid> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class MemoText extends GeneratedMessageLite<MemoText, Builder> implements MemoTextOrBuilder {
        private static final MemoText DEFAULT_INSTANCE;
        private static volatile Parser<MemoText> PARSER = null;
        public static final int TEXT_FIELD_NUMBER = 1;
        private String text_ = "";

        private MemoText() {
        }

        @Override // wallet.core.jni.proto.Stellar.MemoTextOrBuilder
        public String getText() {
            return this.text_;
        }

        @Override // wallet.core.jni.proto.Stellar.MemoTextOrBuilder
        public ByteString getTextBytes() {
            return ByteString.copyFromUtf8(this.text_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setText(String value) {
            value.getClass();
            this.text_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearText() {
            this.text_ = getDefaultInstance().getText();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTextBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.text_ = value.toStringUtf8();
        }

        public static MemoText parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (MemoText) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static MemoText parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (MemoText) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static MemoText parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (MemoText) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static MemoText parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (MemoText) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static MemoText parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (MemoText) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static MemoText parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (MemoText) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static MemoText parseFrom(InputStream input) throws IOException {
            return (MemoText) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static MemoText parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MemoText) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static MemoText parseDelimitedFrom(InputStream input) throws IOException {
            return (MemoText) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static MemoText parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MemoText) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static MemoText parseFrom(CodedInputStream input) throws IOException {
            return (MemoText) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static MemoText parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MemoText) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(MemoText prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<MemoText, Builder> implements MemoTextOrBuilder {
            /* synthetic */ Builder(C68301 c68301) {
                this();
            }

            private Builder() {
                super(MemoText.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Stellar.MemoTextOrBuilder
            public String getText() {
                return ((MemoText) this.instance).getText();
            }

            @Override // wallet.core.jni.proto.Stellar.MemoTextOrBuilder
            public ByteString getTextBytes() {
                return ((MemoText) this.instance).getTextBytes();
            }

            public Builder setText(String value) {
                copyOnWrite();
                ((MemoText) this.instance).setText(value);
                return this;
            }

            public Builder clearText() {
                copyOnWrite();
                ((MemoText) this.instance).clearText();
                return this;
            }

            public Builder setTextBytes(ByteString value) {
                copyOnWrite();
                ((MemoText) this.instance).setTextBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68301.f1896xa1df5c61[method.ordinal()]) {
                case 1:
                    return new MemoText();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"text_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<MemoText> parser = PARSER;
                    if (parser == null) {
                        synchronized (MemoText.class) {
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
            MemoText memoText = new MemoText();
            DEFAULT_INSTANCE = memoText;
            GeneratedMessageLite.registerDefaultInstance(MemoText.class, memoText);
        }

        public static MemoText getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<MemoText> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class MemoId extends GeneratedMessageLite<MemoId, Builder> implements MemoIdOrBuilder {
        private static final MemoId DEFAULT_INSTANCE;
        public static final int ID_FIELD_NUMBER = 1;
        private static volatile Parser<MemoId> PARSER;
        private long id_;

        private MemoId() {
        }

        @Override // wallet.core.jni.proto.Stellar.MemoIdOrBuilder
        public long getId() {
            return this.id_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setId(long value) {
            this.id_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearId() {
            this.id_ = 0L;
        }

        public static MemoId parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (MemoId) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static MemoId parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (MemoId) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static MemoId parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (MemoId) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static MemoId parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (MemoId) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static MemoId parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (MemoId) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static MemoId parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (MemoId) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static MemoId parseFrom(InputStream input) throws IOException {
            return (MemoId) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static MemoId parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MemoId) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static MemoId parseDelimitedFrom(InputStream input) throws IOException {
            return (MemoId) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static MemoId parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MemoId) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static MemoId parseFrom(CodedInputStream input) throws IOException {
            return (MemoId) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static MemoId parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MemoId) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(MemoId prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<MemoId, Builder> implements MemoIdOrBuilder {
            /* synthetic */ Builder(C68301 c68301) {
                this();
            }

            private Builder() {
                super(MemoId.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Stellar.MemoIdOrBuilder
            public long getId() {
                return ((MemoId) this.instance).getId();
            }

            public Builder setId(long value) {
                copyOnWrite();
                ((MemoId) this.instance).setId(value);
                return this;
            }

            public Builder clearId() {
                copyOnWrite();
                ((MemoId) this.instance).clearId();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68301.f1896xa1df5c61[method.ordinal()]) {
                case 1:
                    return new MemoId();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0002", new Object[]{"id_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<MemoId> parser = PARSER;
                    if (parser == null) {
                        synchronized (MemoId.class) {
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
            MemoId memoId = new MemoId();
            DEFAULT_INSTANCE = memoId;
            GeneratedMessageLite.registerDefaultInstance(MemoId.class, memoId);
        }

        public static MemoId getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<MemoId> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class MemoHash extends GeneratedMessageLite<MemoHash, Builder> implements MemoHashOrBuilder {
        private static final MemoHash DEFAULT_INSTANCE;
        public static final int HASH_FIELD_NUMBER = 1;
        private static volatile Parser<MemoHash> PARSER;
        private ByteString hash_ = ByteString.EMPTY;

        private MemoHash() {
        }

        @Override // wallet.core.jni.proto.Stellar.MemoHashOrBuilder
        public ByteString getHash() {
            return this.hash_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setHash(ByteString value) {
            value.getClass();
            this.hash_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearHash() {
            this.hash_ = getDefaultInstance().getHash();
        }

        public static MemoHash parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (MemoHash) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static MemoHash parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (MemoHash) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static MemoHash parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (MemoHash) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static MemoHash parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (MemoHash) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static MemoHash parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (MemoHash) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static MemoHash parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (MemoHash) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static MemoHash parseFrom(InputStream input) throws IOException {
            return (MemoHash) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static MemoHash parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MemoHash) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static MemoHash parseDelimitedFrom(InputStream input) throws IOException {
            return (MemoHash) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static MemoHash parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MemoHash) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static MemoHash parseFrom(CodedInputStream input) throws IOException {
            return (MemoHash) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static MemoHash parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (MemoHash) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(MemoHash prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<MemoHash, Builder> implements MemoHashOrBuilder {
            /* synthetic */ Builder(C68301 c68301) {
                this();
            }

            private Builder() {
                super(MemoHash.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Stellar.MemoHashOrBuilder
            public ByteString getHash() {
                return ((MemoHash) this.instance).getHash();
            }

            public Builder setHash(ByteString value) {
                copyOnWrite();
                ((MemoHash) this.instance).setHash(value);
                return this;
            }

            public Builder clearHash() {
                copyOnWrite();
                ((MemoHash) this.instance).clearHash();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68301.f1896xa1df5c61[method.ordinal()]) {
                case 1:
                    return new MemoHash();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\n", new Object[]{"hash_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<MemoHash> parser = PARSER;
                    if (parser == null) {
                        synchronized (MemoHash.class) {
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
            MemoHash memoHash = new MemoHash();
            DEFAULT_INSTANCE = memoHash;
            GeneratedMessageLite.registerDefaultInstance(MemoHash.class, memoHash);
        }

        public static MemoHash getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<MemoHash> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        public static final int ACCOUNT_FIELD_NUMBER = 3;
        private static final SigningInput DEFAULT_INSTANCE;
        public static final int FEE_FIELD_NUMBER = 1;
        public static final int MEMO_HASH_FIELD_NUMBER = 12;
        public static final int MEMO_ID_FIELD_NUMBER = 11;
        public static final int MEMO_RETURN_HASH_FIELD_NUMBER = 13;
        public static final int MEMO_TEXT_FIELD_NUMBER = 10;
        public static final int MEMO_VOID_FIELD_NUMBER = 9;
        public static final int OP_CHANGE_TRUST_FIELD_NUMBER = 8;
        public static final int OP_CLAIM_CLAIMABLE_BALANCE_FIELD_NUMBER = 15;
        public static final int OP_CREATE_ACCOUNT_FIELD_NUMBER = 6;
        public static final int OP_CREATE_CLAIMABLE_BALANCE_FIELD_NUMBER = 14;
        public static final int OP_PAYMENT_FIELD_NUMBER = 7;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PASSPHRASE_FIELD_NUMBER = 5;
        public static final int PRIVATE_KEY_FIELD_NUMBER = 4;
        public static final int SEQUENCE_FIELD_NUMBER = 2;
        private int fee_;
        private Object memoTypeOneof_;
        private Object operationOneof_;
        private long sequence_;
        private int operationOneofCase_ = 0;
        private int memoTypeOneofCase_ = 0;
        private String account_ = "";
        private ByteString privateKey_ = ByteString.EMPTY;
        private String passphrase_ = "";

        private SigningInput() {
        }

        /* loaded from: classes6.dex */
        public enum OperationOneofCase {
            OP_CREATE_ACCOUNT(6),
            OP_PAYMENT(7),
            OP_CHANGE_TRUST(8),
            OP_CREATE_CLAIMABLE_BALANCE(14),
            OP_CLAIM_CLAIMABLE_BALANCE(15),
            OPERATIONONEOF_NOT_SET(0);
            
            private final int value;

            OperationOneofCase(int value) {
                this.value = value;
            }

            @Deprecated
            public static OperationOneofCase valueOf(int value) {
                return forNumber(value);
            }

            public static OperationOneofCase forNumber(int value) {
                if (value != 0) {
                    if (value != 6) {
                        if (value != 7) {
                            if (value != 8) {
                                if (value != 14) {
                                    if (value != 15) {
                                        return null;
                                    }
                                    return OP_CLAIM_CLAIMABLE_BALANCE;
                                }
                                return OP_CREATE_CLAIMABLE_BALANCE;
                            }
                            return OP_CHANGE_TRUST;
                        }
                        return OP_PAYMENT;
                    }
                    return OP_CREATE_ACCOUNT;
                }
                return OPERATIONONEOF_NOT_SET;
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
        public OperationOneofCase getOperationOneofCase() {
            return OperationOneofCase.forNumber(this.operationOneofCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOperationOneof() {
            this.operationOneofCase_ = 0;
            this.operationOneof_ = null;
        }

        /* loaded from: classes6.dex */
        public enum MemoTypeOneofCase {
            MEMO_VOID(9),
            MEMO_TEXT(10),
            MEMO_ID(11),
            MEMO_HASH(12),
            MEMO_RETURN_HASH(13),
            MEMOTYPEONEOF_NOT_SET(0);
            
            private final int value;

            MemoTypeOneofCase(int value) {
                this.value = value;
            }

            @Deprecated
            public static MemoTypeOneofCase valueOf(int value) {
                return forNumber(value);
            }

            public static MemoTypeOneofCase forNumber(int value) {
                if (value != 0) {
                    switch (value) {
                        case 9:
                            return MEMO_VOID;
                        case 10:
                            return MEMO_TEXT;
                        case 11:
                            return MEMO_ID;
                        case 12:
                            return MEMO_HASH;
                        case 13:
                            return MEMO_RETURN_HASH;
                        default:
                            return null;
                    }
                }
                return MEMOTYPEONEOF_NOT_SET;
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
        public MemoTypeOneofCase getMemoTypeOneofCase() {
            return MemoTypeOneofCase.forNumber(this.memoTypeOneofCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMemoTypeOneof() {
            this.memoTypeOneofCase_ = 0;
            this.memoTypeOneof_ = null;
        }

        @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
        public int getFee() {
            return this.fee_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFee(int value) {
            this.fee_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFee() {
            this.fee_ = 0;
        }

        @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
        public String getAccount() {
            return this.account_;
        }

        @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
        public ByteString getAccountBytes() {
            return ByteString.copyFromUtf8(this.account_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAccount(String value) {
            value.getClass();
            this.account_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAccount() {
            this.account_ = getDefaultInstance().getAccount();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAccountBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.account_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
        public String getPassphrase() {
            return this.passphrase_;
        }

        @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
        public ByteString getPassphraseBytes() {
            return ByteString.copyFromUtf8(this.passphrase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPassphrase(String value) {
            value.getClass();
            this.passphrase_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPassphrase() {
            this.passphrase_ = getDefaultInstance().getPassphrase();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPassphraseBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.passphrase_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
        public boolean hasOpCreateAccount() {
            return this.operationOneofCase_ == 6;
        }

        @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
        public OperationCreateAccount getOpCreateAccount() {
            if (this.operationOneofCase_ == 6) {
                return (OperationCreateAccount) this.operationOneof_;
            }
            return OperationCreateAccount.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOpCreateAccount(OperationCreateAccount value) {
            value.getClass();
            this.operationOneof_ = value;
            this.operationOneofCase_ = 6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeOpCreateAccount(OperationCreateAccount value) {
            value.getClass();
            if (this.operationOneofCase_ == 6 && this.operationOneof_ != OperationCreateAccount.getDefaultInstance()) {
                this.operationOneof_ = OperationCreateAccount.newBuilder((OperationCreateAccount) this.operationOneof_).mergeFrom((OperationCreateAccount.Builder) value).buildPartial();
            } else {
                this.operationOneof_ = value;
            }
            this.operationOneofCase_ = 6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOpCreateAccount() {
            if (this.operationOneofCase_ == 6) {
                this.operationOneofCase_ = 0;
                this.operationOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
        public boolean hasOpPayment() {
            return this.operationOneofCase_ == 7;
        }

        @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
        public OperationPayment getOpPayment() {
            if (this.operationOneofCase_ == 7) {
                return (OperationPayment) this.operationOneof_;
            }
            return OperationPayment.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOpPayment(OperationPayment value) {
            value.getClass();
            this.operationOneof_ = value;
            this.operationOneofCase_ = 7;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeOpPayment(OperationPayment value) {
            value.getClass();
            if (this.operationOneofCase_ == 7 && this.operationOneof_ != OperationPayment.getDefaultInstance()) {
                this.operationOneof_ = OperationPayment.newBuilder((OperationPayment) this.operationOneof_).mergeFrom((OperationPayment.Builder) value).buildPartial();
            } else {
                this.operationOneof_ = value;
            }
            this.operationOneofCase_ = 7;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOpPayment() {
            if (this.operationOneofCase_ == 7) {
                this.operationOneofCase_ = 0;
                this.operationOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
        public boolean hasOpChangeTrust() {
            return this.operationOneofCase_ == 8;
        }

        @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
        public OperationChangeTrust getOpChangeTrust() {
            if (this.operationOneofCase_ == 8) {
                return (OperationChangeTrust) this.operationOneof_;
            }
            return OperationChangeTrust.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOpChangeTrust(OperationChangeTrust value) {
            value.getClass();
            this.operationOneof_ = value;
            this.operationOneofCase_ = 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeOpChangeTrust(OperationChangeTrust value) {
            value.getClass();
            if (this.operationOneofCase_ == 8 && this.operationOneof_ != OperationChangeTrust.getDefaultInstance()) {
                this.operationOneof_ = OperationChangeTrust.newBuilder((OperationChangeTrust) this.operationOneof_).mergeFrom((OperationChangeTrust.Builder) value).buildPartial();
            } else {
                this.operationOneof_ = value;
            }
            this.operationOneofCase_ = 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOpChangeTrust() {
            if (this.operationOneofCase_ == 8) {
                this.operationOneofCase_ = 0;
                this.operationOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
        public boolean hasOpCreateClaimableBalance() {
            return this.operationOneofCase_ == 14;
        }

        @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
        public OperationCreateClaimableBalance getOpCreateClaimableBalance() {
            if (this.operationOneofCase_ == 14) {
                return (OperationCreateClaimableBalance) this.operationOneof_;
            }
            return OperationCreateClaimableBalance.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOpCreateClaimableBalance(OperationCreateClaimableBalance value) {
            value.getClass();
            this.operationOneof_ = value;
            this.operationOneofCase_ = 14;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeOpCreateClaimableBalance(OperationCreateClaimableBalance value) {
            value.getClass();
            if (this.operationOneofCase_ == 14 && this.operationOneof_ != OperationCreateClaimableBalance.getDefaultInstance()) {
                this.operationOneof_ = OperationCreateClaimableBalance.newBuilder((OperationCreateClaimableBalance) this.operationOneof_).mergeFrom((OperationCreateClaimableBalance.Builder) value).buildPartial();
            } else {
                this.operationOneof_ = value;
            }
            this.operationOneofCase_ = 14;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOpCreateClaimableBalance() {
            if (this.operationOneofCase_ == 14) {
                this.operationOneofCase_ = 0;
                this.operationOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
        public boolean hasOpClaimClaimableBalance() {
            return this.operationOneofCase_ == 15;
        }

        @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
        public OperationClaimClaimableBalance getOpClaimClaimableBalance() {
            if (this.operationOneofCase_ == 15) {
                return (OperationClaimClaimableBalance) this.operationOneof_;
            }
            return OperationClaimClaimableBalance.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOpClaimClaimableBalance(OperationClaimClaimableBalance value) {
            value.getClass();
            this.operationOneof_ = value;
            this.operationOneofCase_ = 15;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeOpClaimClaimableBalance(OperationClaimClaimableBalance value) {
            value.getClass();
            if (this.operationOneofCase_ == 15 && this.operationOneof_ != OperationClaimClaimableBalance.getDefaultInstance()) {
                this.operationOneof_ = OperationClaimClaimableBalance.newBuilder((OperationClaimClaimableBalance) this.operationOneof_).mergeFrom((OperationClaimClaimableBalance.Builder) value).buildPartial();
            } else {
                this.operationOneof_ = value;
            }
            this.operationOneofCase_ = 15;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOpClaimClaimableBalance() {
            if (this.operationOneofCase_ == 15) {
                this.operationOneofCase_ = 0;
                this.operationOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
        public boolean hasMemoVoid() {
            return this.memoTypeOneofCase_ == 9;
        }

        @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
        public MemoVoid getMemoVoid() {
            if (this.memoTypeOneofCase_ == 9) {
                return (MemoVoid) this.memoTypeOneof_;
            }
            return MemoVoid.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMemoVoid(MemoVoid value) {
            value.getClass();
            this.memoTypeOneof_ = value;
            this.memoTypeOneofCase_ = 9;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeMemoVoid(MemoVoid value) {
            value.getClass();
            if (this.memoTypeOneofCase_ == 9 && this.memoTypeOneof_ != MemoVoid.getDefaultInstance()) {
                this.memoTypeOneof_ = MemoVoid.newBuilder((MemoVoid) this.memoTypeOneof_).mergeFrom((MemoVoid.Builder) value).buildPartial();
            } else {
                this.memoTypeOneof_ = value;
            }
            this.memoTypeOneofCase_ = 9;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMemoVoid() {
            if (this.memoTypeOneofCase_ == 9) {
                this.memoTypeOneofCase_ = 0;
                this.memoTypeOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
        public boolean hasMemoText() {
            return this.memoTypeOneofCase_ == 10;
        }

        @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
        public MemoText getMemoText() {
            if (this.memoTypeOneofCase_ == 10) {
                return (MemoText) this.memoTypeOneof_;
            }
            return MemoText.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMemoText(MemoText value) {
            value.getClass();
            this.memoTypeOneof_ = value;
            this.memoTypeOneofCase_ = 10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeMemoText(MemoText value) {
            value.getClass();
            if (this.memoTypeOneofCase_ == 10 && this.memoTypeOneof_ != MemoText.getDefaultInstance()) {
                this.memoTypeOneof_ = MemoText.newBuilder((MemoText) this.memoTypeOneof_).mergeFrom((MemoText.Builder) value).buildPartial();
            } else {
                this.memoTypeOneof_ = value;
            }
            this.memoTypeOneofCase_ = 10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMemoText() {
            if (this.memoTypeOneofCase_ == 10) {
                this.memoTypeOneofCase_ = 0;
                this.memoTypeOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
        public boolean hasMemoId() {
            return this.memoTypeOneofCase_ == 11;
        }

        @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
        public MemoId getMemoId() {
            if (this.memoTypeOneofCase_ == 11) {
                return (MemoId) this.memoTypeOneof_;
            }
            return MemoId.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMemoId(MemoId value) {
            value.getClass();
            this.memoTypeOneof_ = value;
            this.memoTypeOneofCase_ = 11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeMemoId(MemoId value) {
            value.getClass();
            if (this.memoTypeOneofCase_ == 11 && this.memoTypeOneof_ != MemoId.getDefaultInstance()) {
                this.memoTypeOneof_ = MemoId.newBuilder((MemoId) this.memoTypeOneof_).mergeFrom((MemoId.Builder) value).buildPartial();
            } else {
                this.memoTypeOneof_ = value;
            }
            this.memoTypeOneofCase_ = 11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMemoId() {
            if (this.memoTypeOneofCase_ == 11) {
                this.memoTypeOneofCase_ = 0;
                this.memoTypeOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
        public boolean hasMemoHash() {
            return this.memoTypeOneofCase_ == 12;
        }

        @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
        public MemoHash getMemoHash() {
            if (this.memoTypeOneofCase_ == 12) {
                return (MemoHash) this.memoTypeOneof_;
            }
            return MemoHash.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMemoHash(MemoHash value) {
            value.getClass();
            this.memoTypeOneof_ = value;
            this.memoTypeOneofCase_ = 12;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeMemoHash(MemoHash value) {
            value.getClass();
            if (this.memoTypeOneofCase_ == 12 && this.memoTypeOneof_ != MemoHash.getDefaultInstance()) {
                this.memoTypeOneof_ = MemoHash.newBuilder((MemoHash) this.memoTypeOneof_).mergeFrom((MemoHash.Builder) value).buildPartial();
            } else {
                this.memoTypeOneof_ = value;
            }
            this.memoTypeOneofCase_ = 12;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMemoHash() {
            if (this.memoTypeOneofCase_ == 12) {
                this.memoTypeOneofCase_ = 0;
                this.memoTypeOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
        public boolean hasMemoReturnHash() {
            return this.memoTypeOneofCase_ == 13;
        }

        @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
        public MemoHash getMemoReturnHash() {
            if (this.memoTypeOneofCase_ == 13) {
                return (MemoHash) this.memoTypeOneof_;
            }
            return MemoHash.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMemoReturnHash(MemoHash value) {
            value.getClass();
            this.memoTypeOneof_ = value;
            this.memoTypeOneofCase_ = 13;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeMemoReturnHash(MemoHash value) {
            value.getClass();
            if (this.memoTypeOneofCase_ == 13 && this.memoTypeOneof_ != MemoHash.getDefaultInstance()) {
                this.memoTypeOneof_ = MemoHash.newBuilder((MemoHash) this.memoTypeOneof_).mergeFrom((MemoHash.Builder) value).buildPartial();
            } else {
                this.memoTypeOneof_ = value;
            }
            this.memoTypeOneofCase_ = 13;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMemoReturnHash() {
            if (this.memoTypeOneofCase_ == 13) {
                this.memoTypeOneofCase_ = 0;
                this.memoTypeOneof_ = null;
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
            /* synthetic */ Builder(C68301 c68301) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
            public OperationOneofCase getOperationOneofCase() {
                return ((SigningInput) this.instance).getOperationOneofCase();
            }

            public Builder clearOperationOneof() {
                copyOnWrite();
                ((SigningInput) this.instance).clearOperationOneof();
                return this;
            }

            @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
            public MemoTypeOneofCase getMemoTypeOneofCase() {
                return ((SigningInput) this.instance).getMemoTypeOneofCase();
            }

            public Builder clearMemoTypeOneof() {
                copyOnWrite();
                ((SigningInput) this.instance).clearMemoTypeOneof();
                return this;
            }

            @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
            public int getFee() {
                return ((SigningInput) this.instance).getFee();
            }

            public Builder setFee(int value) {
                copyOnWrite();
                ((SigningInput) this.instance).setFee(value);
                return this;
            }

            public Builder clearFee() {
                copyOnWrite();
                ((SigningInput) this.instance).clearFee();
                return this;
            }

            @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
            public String getAccount() {
                return ((SigningInput) this.instance).getAccount();
            }

            @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
            public ByteString getAccountBytes() {
                return ((SigningInput) this.instance).getAccountBytes();
            }

            public Builder setAccount(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setAccount(value);
                return this;
            }

            public Builder clearAccount() {
                copyOnWrite();
                ((SigningInput) this.instance).clearAccount();
                return this;
            }

            public Builder setAccountBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setAccountBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
            public String getPassphrase() {
                return ((SigningInput) this.instance).getPassphrase();
            }

            @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
            public ByteString getPassphraseBytes() {
                return ((SigningInput) this.instance).getPassphraseBytes();
            }

            public Builder setPassphrase(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setPassphrase(value);
                return this;
            }

            public Builder clearPassphrase() {
                copyOnWrite();
                ((SigningInput) this.instance).clearPassphrase();
                return this;
            }

            public Builder setPassphraseBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setPassphraseBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
            public boolean hasOpCreateAccount() {
                return ((SigningInput) this.instance).hasOpCreateAccount();
            }

            @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
            public OperationCreateAccount getOpCreateAccount() {
                return ((SigningInput) this.instance).getOpCreateAccount();
            }

            public Builder setOpCreateAccount(OperationCreateAccount value) {
                copyOnWrite();
                ((SigningInput) this.instance).setOpCreateAccount(value);
                return this;
            }

            public Builder setOpCreateAccount(OperationCreateAccount.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setOpCreateAccount(builderForValue.build());
                return this;
            }

            public Builder mergeOpCreateAccount(OperationCreateAccount value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeOpCreateAccount(value);
                return this;
            }

            public Builder clearOpCreateAccount() {
                copyOnWrite();
                ((SigningInput) this.instance).clearOpCreateAccount();
                return this;
            }

            @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
            public boolean hasOpPayment() {
                return ((SigningInput) this.instance).hasOpPayment();
            }

            @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
            public OperationPayment getOpPayment() {
                return ((SigningInput) this.instance).getOpPayment();
            }

            public Builder setOpPayment(OperationPayment value) {
                copyOnWrite();
                ((SigningInput) this.instance).setOpPayment(value);
                return this;
            }

            public Builder setOpPayment(OperationPayment.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setOpPayment(builderForValue.build());
                return this;
            }

            public Builder mergeOpPayment(OperationPayment value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeOpPayment(value);
                return this;
            }

            public Builder clearOpPayment() {
                copyOnWrite();
                ((SigningInput) this.instance).clearOpPayment();
                return this;
            }

            @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
            public boolean hasOpChangeTrust() {
                return ((SigningInput) this.instance).hasOpChangeTrust();
            }

            @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
            public OperationChangeTrust getOpChangeTrust() {
                return ((SigningInput) this.instance).getOpChangeTrust();
            }

            public Builder setOpChangeTrust(OperationChangeTrust value) {
                copyOnWrite();
                ((SigningInput) this.instance).setOpChangeTrust(value);
                return this;
            }

            public Builder setOpChangeTrust(OperationChangeTrust.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setOpChangeTrust(builderForValue.build());
                return this;
            }

            public Builder mergeOpChangeTrust(OperationChangeTrust value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeOpChangeTrust(value);
                return this;
            }

            public Builder clearOpChangeTrust() {
                copyOnWrite();
                ((SigningInput) this.instance).clearOpChangeTrust();
                return this;
            }

            @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
            public boolean hasOpCreateClaimableBalance() {
                return ((SigningInput) this.instance).hasOpCreateClaimableBalance();
            }

            @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
            public OperationCreateClaimableBalance getOpCreateClaimableBalance() {
                return ((SigningInput) this.instance).getOpCreateClaimableBalance();
            }

            public Builder setOpCreateClaimableBalance(OperationCreateClaimableBalance value) {
                copyOnWrite();
                ((SigningInput) this.instance).setOpCreateClaimableBalance(value);
                return this;
            }

            public Builder setOpCreateClaimableBalance(OperationCreateClaimableBalance.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setOpCreateClaimableBalance(builderForValue.build());
                return this;
            }

            public Builder mergeOpCreateClaimableBalance(OperationCreateClaimableBalance value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeOpCreateClaimableBalance(value);
                return this;
            }

            public Builder clearOpCreateClaimableBalance() {
                copyOnWrite();
                ((SigningInput) this.instance).clearOpCreateClaimableBalance();
                return this;
            }

            @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
            public boolean hasOpClaimClaimableBalance() {
                return ((SigningInput) this.instance).hasOpClaimClaimableBalance();
            }

            @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
            public OperationClaimClaimableBalance getOpClaimClaimableBalance() {
                return ((SigningInput) this.instance).getOpClaimClaimableBalance();
            }

            public Builder setOpClaimClaimableBalance(OperationClaimClaimableBalance value) {
                copyOnWrite();
                ((SigningInput) this.instance).setOpClaimClaimableBalance(value);
                return this;
            }

            public Builder setOpClaimClaimableBalance(OperationClaimClaimableBalance.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setOpClaimClaimableBalance(builderForValue.build());
                return this;
            }

            public Builder mergeOpClaimClaimableBalance(OperationClaimClaimableBalance value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeOpClaimClaimableBalance(value);
                return this;
            }

            public Builder clearOpClaimClaimableBalance() {
                copyOnWrite();
                ((SigningInput) this.instance).clearOpClaimClaimableBalance();
                return this;
            }

            @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
            public boolean hasMemoVoid() {
                return ((SigningInput) this.instance).hasMemoVoid();
            }

            @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
            public MemoVoid getMemoVoid() {
                return ((SigningInput) this.instance).getMemoVoid();
            }

            public Builder setMemoVoid(MemoVoid value) {
                copyOnWrite();
                ((SigningInput) this.instance).setMemoVoid(value);
                return this;
            }

            public Builder setMemoVoid(MemoVoid.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setMemoVoid(builderForValue.build());
                return this;
            }

            public Builder mergeMemoVoid(MemoVoid value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeMemoVoid(value);
                return this;
            }

            public Builder clearMemoVoid() {
                copyOnWrite();
                ((SigningInput) this.instance).clearMemoVoid();
                return this;
            }

            @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
            public boolean hasMemoText() {
                return ((SigningInput) this.instance).hasMemoText();
            }

            @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
            public MemoText getMemoText() {
                return ((SigningInput) this.instance).getMemoText();
            }

            public Builder setMemoText(MemoText value) {
                copyOnWrite();
                ((SigningInput) this.instance).setMemoText(value);
                return this;
            }

            public Builder setMemoText(MemoText.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setMemoText(builderForValue.build());
                return this;
            }

            public Builder mergeMemoText(MemoText value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeMemoText(value);
                return this;
            }

            public Builder clearMemoText() {
                copyOnWrite();
                ((SigningInput) this.instance).clearMemoText();
                return this;
            }

            @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
            public boolean hasMemoId() {
                return ((SigningInput) this.instance).hasMemoId();
            }

            @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
            public MemoId getMemoId() {
                return ((SigningInput) this.instance).getMemoId();
            }

            public Builder setMemoId(MemoId value) {
                copyOnWrite();
                ((SigningInput) this.instance).setMemoId(value);
                return this;
            }

            public Builder setMemoId(MemoId.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setMemoId(builderForValue.build());
                return this;
            }

            public Builder mergeMemoId(MemoId value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeMemoId(value);
                return this;
            }

            public Builder clearMemoId() {
                copyOnWrite();
                ((SigningInput) this.instance).clearMemoId();
                return this;
            }

            @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
            public boolean hasMemoHash() {
                return ((SigningInput) this.instance).hasMemoHash();
            }

            @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
            public MemoHash getMemoHash() {
                return ((SigningInput) this.instance).getMemoHash();
            }

            public Builder setMemoHash(MemoHash value) {
                copyOnWrite();
                ((SigningInput) this.instance).setMemoHash(value);
                return this;
            }

            public Builder setMemoHash(MemoHash.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setMemoHash(builderForValue.build());
                return this;
            }

            public Builder mergeMemoHash(MemoHash value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeMemoHash(value);
                return this;
            }

            public Builder clearMemoHash() {
                copyOnWrite();
                ((SigningInput) this.instance).clearMemoHash();
                return this;
            }

            @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
            public boolean hasMemoReturnHash() {
                return ((SigningInput) this.instance).hasMemoReturnHash();
            }

            @Override // wallet.core.jni.proto.Stellar.SigningInputOrBuilder
            public MemoHash getMemoReturnHash() {
                return ((SigningInput) this.instance).getMemoReturnHash();
            }

            public Builder setMemoReturnHash(MemoHash value) {
                copyOnWrite();
                ((SigningInput) this.instance).setMemoReturnHash(value);
                return this;
            }

            public Builder setMemoReturnHash(MemoHash.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setMemoReturnHash(builderForValue.build());
                return this;
            }

            public Builder mergeMemoReturnHash(MemoHash value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeMemoReturnHash(value);
                return this;
            }

            public Builder clearMemoReturnHash() {
                copyOnWrite();
                ((SigningInput) this.instance).clearMemoReturnHash();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68301.f1896xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u000f\u0002\u0000\u0001\u000f\u000f\u0000\u0000\u0000\u0001\u0004\u0002\u0002\u0003Ȉ\u0004\n\u0005Ȉ\u0006<\u0000\u0007<\u0000\b<\u0000\t<\u0001\n<\u0001\u000b<\u0001\f<\u0001\r<\u0001\u000e<\u0000\u000f<\u0000", new Object[]{"operationOneof_", "operationOneofCase_", "memoTypeOneof_", "memoTypeOneofCase_", "fee_", "sequence_", "account_", "privateKey_", "passphrase_", OperationCreateAccount.class, OperationPayment.class, OperationChangeTrust.class, MemoVoid.class, MemoText.class, MemoId.class, MemoHash.class, MemoHash.class, OperationCreateClaimableBalance.class, OperationClaimClaimableBalance.class});
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
        private static volatile Parser<SigningOutput> PARSER = null;
        public static final int SIGNATURE_FIELD_NUMBER = 1;
        private String signature_ = "";

        private SigningOutput() {
        }

        @Override // wallet.core.jni.proto.Stellar.SigningOutputOrBuilder
        public String getSignature() {
            return this.signature_;
        }

        @Override // wallet.core.jni.proto.Stellar.SigningOutputOrBuilder
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
            /* synthetic */ Builder(C68301 c68301) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Stellar.SigningOutputOrBuilder
            public String getSignature() {
                return ((SigningOutput) this.instance).getSignature();
            }

            @Override // wallet.core.jni.proto.Stellar.SigningOutputOrBuilder
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
            switch (C68301.f1896xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"signature_"});
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
