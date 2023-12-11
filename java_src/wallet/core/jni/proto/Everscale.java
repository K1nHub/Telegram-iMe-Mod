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
/* loaded from: classes7.dex */
public final class Everscale {

    /* loaded from: classes7.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        SigningInput.ActionOneofCase getActionOneofCase();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getPrivateKey();

        Transfer getTransfer();

        boolean hasTransfer();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface SigningOutputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getEncoded();

        ByteString getEncodedBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface TransferOrBuilder extends MessageLiteOrBuilder {
        Transfer.AccountStateOneofCase getAccountStateOneofCase();

        long getAmount();

        MessageBehavior getBehavior();

        int getBehaviorValue();

        boolean getBounce();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getEncodedContractData();

        ByteString getEncodedContractDataBytes();

        int getExpiredAt();

        String getTo();

        ByteString getToBytes();

        boolean hasEncodedContractData();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private Everscale() {
    }

    /* loaded from: classes7.dex */
    public enum MessageBehavior implements Internal.EnumLite {
        SimpleTransfer(0),
        SendAllBalance(1),
        UNRECOGNIZED(-1);
        
        public static final int SendAllBalance_VALUE = 1;
        public static final int SimpleTransfer_VALUE = 0;
        private static final Internal.EnumLiteMap<MessageBehavior> internalValueMap = new Internal.EnumLiteMap<MessageBehavior>() { // from class: wallet.core.jni.proto.Everscale.MessageBehavior.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public MessageBehavior findValueByNumber(int number) {
                return MessageBehavior.forNumber(number);
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
        public static MessageBehavior valueOf(int value) {
            return forNumber(value);
        }

        public static MessageBehavior forNumber(int value) {
            if (value != 0) {
                if (value != 1) {
                    return null;
                }
                return SendAllBalance;
            }
            return SimpleTransfer;
        }

        public static Internal.EnumLiteMap<MessageBehavior> internalGetValueMap() {
            return internalValueMap;
        }

        public static Internal.EnumVerifier internalGetVerifier() {
            return MessageBehaviorVerifier.INSTANCE;
        }

        /* loaded from: classes7.dex */
        private static final class MessageBehaviorVerifier implements Internal.EnumVerifier {
            static final Internal.EnumVerifier INSTANCE = new MessageBehaviorVerifier();

            private MessageBehaviorVerifier() {
            }

            @Override // com.google.protobuf.Internal.EnumVerifier
            public boolean isInRange(int number) {
                return MessageBehavior.forNumber(number) != null;
            }
        }

        MessageBehavior(int value) {
            this.value = value;
        }
    }

    /* loaded from: classes7.dex */
    public static final class Transfer extends GeneratedMessageLite<Transfer, Builder> implements TransferOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 3;
        public static final int BEHAVIOR_FIELD_NUMBER = 2;
        public static final int BOUNCE_FIELD_NUMBER = 1;
        private static final Transfer DEFAULT_INSTANCE;
        public static final int ENCODED_CONTRACT_DATA_FIELD_NUMBER = 6;
        public static final int EXPIRED_AT_FIELD_NUMBER = 4;
        private static volatile Parser<Transfer> PARSER = null;
        public static final int TO_FIELD_NUMBER = 5;
        private Object accountStateOneof_;
        private long amount_;
        private int behavior_;
        private boolean bounce_;
        private int expiredAt_;
        private int accountStateOneofCase_ = 0;
        private String to_ = "";

        private Transfer() {
        }

        /* loaded from: classes7.dex */
        public enum AccountStateOneofCase {
            ENCODED_CONTRACT_DATA(6),
            ACCOUNTSTATEONEOF_NOT_SET(0);
            
            private final int value;

            AccountStateOneofCase(int value) {
                this.value = value;
            }

            @Deprecated
            public static AccountStateOneofCase valueOf(int value) {
                return forNumber(value);
            }

            public static AccountStateOneofCase forNumber(int value) {
                if (value != 0) {
                    if (value != 6) {
                        return null;
                    }
                    return ENCODED_CONTRACT_DATA;
                }
                return ACCOUNTSTATEONEOF_NOT_SET;
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.Everscale.TransferOrBuilder
        public AccountStateOneofCase getAccountStateOneofCase() {
            return AccountStateOneofCase.forNumber(this.accountStateOneofCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAccountStateOneof() {
            this.accountStateOneofCase_ = 0;
            this.accountStateOneof_ = null;
        }

        @Override // wallet.core.jni.proto.Everscale.TransferOrBuilder
        public boolean getBounce() {
            return this.bounce_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBounce(boolean value) {
            this.bounce_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearBounce() {
            this.bounce_ = false;
        }

        @Override // wallet.core.jni.proto.Everscale.TransferOrBuilder
        public int getBehaviorValue() {
            return this.behavior_;
        }

        @Override // wallet.core.jni.proto.Everscale.TransferOrBuilder
        public MessageBehavior getBehavior() {
            MessageBehavior forNumber = MessageBehavior.forNumber(this.behavior_);
            return forNumber == null ? MessageBehavior.UNRECOGNIZED : forNumber;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBehaviorValue(int value) {
            this.behavior_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBehavior(MessageBehavior value) {
            this.behavior_ = value.getNumber();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearBehavior() {
            this.behavior_ = 0;
        }

        @Override // wallet.core.jni.proto.Everscale.TransferOrBuilder
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

        @Override // wallet.core.jni.proto.Everscale.TransferOrBuilder
        public int getExpiredAt() {
            return this.expiredAt_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setExpiredAt(int value) {
            this.expiredAt_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearExpiredAt() {
            this.expiredAt_ = 0;
        }

        @Override // wallet.core.jni.proto.Everscale.TransferOrBuilder
        public String getTo() {
            return this.to_;
        }

        @Override // wallet.core.jni.proto.Everscale.TransferOrBuilder
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

        @Override // wallet.core.jni.proto.Everscale.TransferOrBuilder
        public boolean hasEncodedContractData() {
            return this.accountStateOneofCase_ == 6;
        }

        @Override // wallet.core.jni.proto.Everscale.TransferOrBuilder
        public String getEncodedContractData() {
            return this.accountStateOneofCase_ == 6 ? (String) this.accountStateOneof_ : "";
        }

        @Override // wallet.core.jni.proto.Everscale.TransferOrBuilder
        public ByteString getEncodedContractDataBytes() {
            return ByteString.copyFromUtf8(this.accountStateOneofCase_ == 6 ? (String) this.accountStateOneof_ : "");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setEncodedContractData(String value) {
            value.getClass();
            this.accountStateOneofCase_ = 6;
            this.accountStateOneof_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearEncodedContractData() {
            if (this.accountStateOneofCase_ == 6) {
                this.accountStateOneofCase_ = 0;
                this.accountStateOneof_ = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setEncodedContractDataBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.accountStateOneof_ = value.toStringUtf8();
            this.accountStateOneofCase_ = 6;
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
            /* synthetic */ Builder(C77401 c77401) {
                this();
            }

            private Builder() {
                super(Transfer.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Everscale.TransferOrBuilder
            public AccountStateOneofCase getAccountStateOneofCase() {
                return ((Transfer) this.instance).getAccountStateOneofCase();
            }

            public Builder clearAccountStateOneof() {
                copyOnWrite();
                ((Transfer) this.instance).clearAccountStateOneof();
                return this;
            }

            @Override // wallet.core.jni.proto.Everscale.TransferOrBuilder
            public boolean getBounce() {
                return ((Transfer) this.instance).getBounce();
            }

            public Builder setBounce(boolean value) {
                copyOnWrite();
                ((Transfer) this.instance).setBounce(value);
                return this;
            }

            public Builder clearBounce() {
                copyOnWrite();
                ((Transfer) this.instance).clearBounce();
                return this;
            }

            @Override // wallet.core.jni.proto.Everscale.TransferOrBuilder
            public int getBehaviorValue() {
                return ((Transfer) this.instance).getBehaviorValue();
            }

            public Builder setBehaviorValue(int value) {
                copyOnWrite();
                ((Transfer) this.instance).setBehaviorValue(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Everscale.TransferOrBuilder
            public MessageBehavior getBehavior() {
                return ((Transfer) this.instance).getBehavior();
            }

            public Builder setBehavior(MessageBehavior value) {
                copyOnWrite();
                ((Transfer) this.instance).setBehavior(value);
                return this;
            }

            public Builder clearBehavior() {
                copyOnWrite();
                ((Transfer) this.instance).clearBehavior();
                return this;
            }

            @Override // wallet.core.jni.proto.Everscale.TransferOrBuilder
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

            @Override // wallet.core.jni.proto.Everscale.TransferOrBuilder
            public int getExpiredAt() {
                return ((Transfer) this.instance).getExpiredAt();
            }

            public Builder setExpiredAt(int value) {
                copyOnWrite();
                ((Transfer) this.instance).setExpiredAt(value);
                return this;
            }

            public Builder clearExpiredAt() {
                copyOnWrite();
                ((Transfer) this.instance).clearExpiredAt();
                return this;
            }

            @Override // wallet.core.jni.proto.Everscale.TransferOrBuilder
            public String getTo() {
                return ((Transfer) this.instance).getTo();
            }

            @Override // wallet.core.jni.proto.Everscale.TransferOrBuilder
            public ByteString getToBytes() {
                return ((Transfer) this.instance).getToBytes();
            }

            public Builder setTo(String value) {
                copyOnWrite();
                ((Transfer) this.instance).setTo(value);
                return this;
            }

            public Builder clearTo() {
                copyOnWrite();
                ((Transfer) this.instance).clearTo();
                return this;
            }

            public Builder setToBytes(ByteString value) {
                copyOnWrite();
                ((Transfer) this.instance).setToBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Everscale.TransferOrBuilder
            public boolean hasEncodedContractData() {
                return ((Transfer) this.instance).hasEncodedContractData();
            }

            @Override // wallet.core.jni.proto.Everscale.TransferOrBuilder
            public String getEncodedContractData() {
                return ((Transfer) this.instance).getEncodedContractData();
            }

            @Override // wallet.core.jni.proto.Everscale.TransferOrBuilder
            public ByteString getEncodedContractDataBytes() {
                return ((Transfer) this.instance).getEncodedContractDataBytes();
            }

            public Builder setEncodedContractData(String value) {
                copyOnWrite();
                ((Transfer) this.instance).setEncodedContractData(value);
                return this;
            }

            public Builder clearEncodedContractData() {
                copyOnWrite();
                ((Transfer) this.instance).clearEncodedContractData();
                return this;
            }

            public Builder setEncodedContractDataBytes(ByteString value) {
                copyOnWrite();
                ((Transfer) this.instance).setEncodedContractDataBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77401.f2134xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Transfer();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0006\u0001\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0007\u0002\f\u0003\u0003\u0004\u000b\u0005Ȉ\u0006Ȼ\u0000", new Object[]{"accountStateOneof_", "accountStateOneofCase_", "bounce_", "behavior_", "amount_", "expiredAt_", "to_"});
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

    /* renamed from: wallet.core.jni.proto.Everscale$1 */
    /* loaded from: classes7.dex */
    static /* synthetic */ class C77401 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f2134xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f2134xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2134xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2134xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2134xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2134xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2134xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2134xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes7.dex */
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        private static final SigningInput DEFAULT_INSTANCE;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PRIVATE_KEY_FIELD_NUMBER = 2;
        public static final int TRANSFER_FIELD_NUMBER = 1;
        private Object actionOneof_;
        private int actionOneofCase_ = 0;
        private ByteString privateKey_ = ByteString.EMPTY;

        private SigningInput() {
        }

        /* loaded from: classes7.dex */
        public enum ActionOneofCase {
            TRANSFER(1),
            ACTIONONEOF_NOT_SET(0);
            
            private final int value;

            ActionOneofCase(int value) {
                this.value = value;
            }

            @Deprecated
            public static ActionOneofCase valueOf(int value) {
                return forNumber(value);
            }

            public static ActionOneofCase forNumber(int value) {
                if (value != 0) {
                    if (value != 1) {
                        return null;
                    }
                    return TRANSFER;
                }
                return ACTIONONEOF_NOT_SET;
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.Everscale.SigningInputOrBuilder
        public ActionOneofCase getActionOneofCase() {
            return ActionOneofCase.forNumber(this.actionOneofCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearActionOneof() {
            this.actionOneofCase_ = 0;
            this.actionOneof_ = null;
        }

        @Override // wallet.core.jni.proto.Everscale.SigningInputOrBuilder
        public boolean hasTransfer() {
            return this.actionOneofCase_ == 1;
        }

        @Override // wallet.core.jni.proto.Everscale.SigningInputOrBuilder
        public Transfer getTransfer() {
            if (this.actionOneofCase_ == 1) {
                return (Transfer) this.actionOneof_;
            }
            return Transfer.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransfer(Transfer value) {
            value.getClass();
            this.actionOneof_ = value;
            this.actionOneofCase_ = 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTransfer(Transfer value) {
            value.getClass();
            if (this.actionOneofCase_ == 1 && this.actionOneof_ != Transfer.getDefaultInstance()) {
                this.actionOneof_ = Transfer.newBuilder((Transfer) this.actionOneof_).mergeFrom((Transfer.Builder) value).buildPartial();
            } else {
                this.actionOneof_ = value;
            }
            this.actionOneofCase_ = 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransfer() {
            if (this.actionOneofCase_ == 1) {
                this.actionOneofCase_ = 0;
                this.actionOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Everscale.SigningInputOrBuilder
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

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<SigningInput, Builder> implements SigningInputOrBuilder {
            /* synthetic */ Builder(C77401 c77401) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Everscale.SigningInputOrBuilder
            public ActionOneofCase getActionOneofCase() {
                return ((SigningInput) this.instance).getActionOneofCase();
            }

            public Builder clearActionOneof() {
                copyOnWrite();
                ((SigningInput) this.instance).clearActionOneof();
                return this;
            }

            @Override // wallet.core.jni.proto.Everscale.SigningInputOrBuilder
            public boolean hasTransfer() {
                return ((SigningInput) this.instance).hasTransfer();
            }

            @Override // wallet.core.jni.proto.Everscale.SigningInputOrBuilder
            public Transfer getTransfer() {
                return ((SigningInput) this.instance).getTransfer();
            }

            public Builder setTransfer(Transfer value) {
                copyOnWrite();
                ((SigningInput) this.instance).setTransfer(value);
                return this;
            }

            public Builder setTransfer(Transfer.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setTransfer(builderForValue.build());
                return this;
            }

            public Builder mergeTransfer(Transfer value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeTransfer(value);
                return this;
            }

            public Builder clearTransfer() {
                copyOnWrite();
                ((SigningInput) this.instance).clearTransfer();
                return this;
            }

            @Override // wallet.core.jni.proto.Everscale.SigningInputOrBuilder
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
            switch (C77401.f2134xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001<\u0000\u0002\n", new Object[]{"actionOneof_", "actionOneofCase_", Transfer.class, "privateKey_"});
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
        public static final int ENCODED_FIELD_NUMBER = 1;
        private static volatile Parser<SigningOutput> PARSER;
        private String encoded_ = "";

        private SigningOutput() {
        }

        @Override // wallet.core.jni.proto.Everscale.SigningOutputOrBuilder
        public String getEncoded() {
            return this.encoded_;
        }

        @Override // wallet.core.jni.proto.Everscale.SigningOutputOrBuilder
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
            /* synthetic */ Builder(C77401 c77401) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Everscale.SigningOutputOrBuilder
            public String getEncoded() {
                return ((SigningOutput) this.instance).getEncoded();
            }

            @Override // wallet.core.jni.proto.Everscale.SigningOutputOrBuilder
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
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C77401.f2134xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"encoded_"});
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
