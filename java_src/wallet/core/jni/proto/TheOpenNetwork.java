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
public final class TheOpenNetwork {

    /* loaded from: classes6.dex */
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

    /* loaded from: classes6.dex */
    public interface SigningOutputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getEncoded();

        ByteString getEncodedBytes();

        Common.SigningError getError();

        String getErrorMessage();

        ByteString getErrorMessageBytes();

        int getErrorValue();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TransferOrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        String getComment();

        ByteString getCommentBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getDest();

        ByteString getDestBytes();

        int getExpireAt();

        int getMode();

        int getSequenceNumber();

        WalletVersion getWalletVersion();

        int getWalletVersionValue();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private TheOpenNetwork() {
    }

    /* loaded from: classes6.dex */
    public enum WalletVersion implements Internal.EnumLite {
        WALLET_V3_R1(0),
        WALLET_V3_R2(1),
        WALLET_V4_R2(2),
        UNRECOGNIZED(-1);
        
        public static final int WALLET_V3_R1_VALUE = 0;
        public static final int WALLET_V3_R2_VALUE = 1;
        public static final int WALLET_V4_R2_VALUE = 2;
        private static final Internal.EnumLiteMap<WalletVersion> internalValueMap = new Internal.EnumLiteMap<WalletVersion>() { // from class: wallet.core.jni.proto.TheOpenNetwork.WalletVersion.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public WalletVersion findValueByNumber(int number) {
                return WalletVersion.forNumber(number);
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
        public static WalletVersion valueOf(int value) {
            return forNumber(value);
        }

        public static WalletVersion forNumber(int value) {
            if (value != 0) {
                if (value != 1) {
                    if (value != 2) {
                        return null;
                    }
                    return WALLET_V4_R2;
                }
                return WALLET_V3_R2;
            }
            return WALLET_V3_R1;
        }

        public static Internal.EnumLiteMap<WalletVersion> internalGetValueMap() {
            return internalValueMap;
        }

        public static Internal.EnumVerifier internalGetVerifier() {
            return WalletVersionVerifier.INSTANCE;
        }

        /* loaded from: classes6.dex */
        private static final class WalletVersionVerifier implements Internal.EnumVerifier {
            static final Internal.EnumVerifier INSTANCE = new WalletVersionVerifier();

            private WalletVersionVerifier() {
            }

            @Override // com.google.protobuf.Internal.EnumVerifier
            public boolean isInRange(int number) {
                return WalletVersion.forNumber(number) != null;
            }
        }

        WalletVersion(int value) {
            this.value = value;
        }
    }

    /* loaded from: classes6.dex */
    public enum SendMode implements Internal.EnumLite {
        DEFAULT(0),
        PAY_FEES_SEPARATELY(1),
        IGNORE_ACTION_PHASE_ERRORS(2),
        DESTROY_ON_ZERO_BALANCE(32),
        ATTACH_ALL_INBOUND_MESSAGE_VALUE(64),
        ATTACH_ALL_CONTRACT_BALANCE(128),
        UNRECOGNIZED(-1);
        
        public static final int ATTACH_ALL_CONTRACT_BALANCE_VALUE = 128;
        public static final int ATTACH_ALL_INBOUND_MESSAGE_VALUE_VALUE = 64;
        public static final int DEFAULT_VALUE = 0;
        public static final int DESTROY_ON_ZERO_BALANCE_VALUE = 32;
        public static final int IGNORE_ACTION_PHASE_ERRORS_VALUE = 2;
        public static final int PAY_FEES_SEPARATELY_VALUE = 1;
        private static final Internal.EnumLiteMap<SendMode> internalValueMap = new Internal.EnumLiteMap<SendMode>() { // from class: wallet.core.jni.proto.TheOpenNetwork.SendMode.1
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public SendMode findValueByNumber(int number) {
                return SendMode.forNumber(number);
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
        public static SendMode valueOf(int value) {
            return forNumber(value);
        }

        public static SendMode forNumber(int value) {
            if (value != 0) {
                if (value != 1) {
                    if (value != 2) {
                        if (value != 32) {
                            if (value != 64) {
                                if (value != 128) {
                                    return null;
                                }
                                return ATTACH_ALL_CONTRACT_BALANCE;
                            }
                            return ATTACH_ALL_INBOUND_MESSAGE_VALUE;
                        }
                        return DESTROY_ON_ZERO_BALANCE;
                    }
                    return IGNORE_ACTION_PHASE_ERRORS;
                }
                return PAY_FEES_SEPARATELY;
            }
            return DEFAULT;
        }

        public static Internal.EnumLiteMap<SendMode> internalGetValueMap() {
            return internalValueMap;
        }

        public static Internal.EnumVerifier internalGetVerifier() {
            return SendModeVerifier.INSTANCE;
        }

        /* loaded from: classes6.dex */
        private static final class SendModeVerifier implements Internal.EnumVerifier {
            static final Internal.EnumVerifier INSTANCE = new SendModeVerifier();

            private SendModeVerifier() {
            }

            @Override // com.google.protobuf.Internal.EnumVerifier
            public boolean isInRange(int number) {
                return SendMode.forNumber(number) != null;
            }
        }

        SendMode(int value) {
            this.value = value;
        }
    }

    /* loaded from: classes6.dex */
    public static final class Transfer extends GeneratedMessageLite<Transfer, Builder> implements TransferOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 3;
        public static final int COMMENT_FIELD_NUMBER = 7;
        private static final Transfer DEFAULT_INSTANCE;
        public static final int DEST_FIELD_NUMBER = 2;
        public static final int EXPIRE_AT_FIELD_NUMBER = 6;
        public static final int MODE_FIELD_NUMBER = 5;
        private static volatile Parser<Transfer> PARSER = null;
        public static final int SEQUENCE_NUMBER_FIELD_NUMBER = 4;
        public static final int WALLET_VERSION_FIELD_NUMBER = 1;
        private long amount_;
        private int expireAt_;
        private int mode_;
        private int sequenceNumber_;
        private int walletVersion_;
        private String dest_ = "";
        private String comment_ = "";

        private Transfer() {
        }

        @Override // wallet.core.jni.proto.TheOpenNetwork.TransferOrBuilder
        public int getWalletVersionValue() {
            return this.walletVersion_;
        }

        @Override // wallet.core.jni.proto.TheOpenNetwork.TransferOrBuilder
        public WalletVersion getWalletVersion() {
            WalletVersion forNumber = WalletVersion.forNumber(this.walletVersion_);
            return forNumber == null ? WalletVersion.UNRECOGNIZED : forNumber;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setWalletVersionValue(int value) {
            this.walletVersion_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setWalletVersion(WalletVersion value) {
            this.walletVersion_ = value.getNumber();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearWalletVersion() {
            this.walletVersion_ = 0;
        }

        @Override // wallet.core.jni.proto.TheOpenNetwork.TransferOrBuilder
        public String getDest() {
            return this.dest_;
        }

        @Override // wallet.core.jni.proto.TheOpenNetwork.TransferOrBuilder
        public ByteString getDestBytes() {
            return ByteString.copyFromUtf8(this.dest_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDest(String value) {
            value.getClass();
            this.dest_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDest() {
            this.dest_ = getDefaultInstance().getDest();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDestBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.dest_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.TheOpenNetwork.TransferOrBuilder
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

        @Override // wallet.core.jni.proto.TheOpenNetwork.TransferOrBuilder
        public int getSequenceNumber() {
            return this.sequenceNumber_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSequenceNumber(int value) {
            this.sequenceNumber_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSequenceNumber() {
            this.sequenceNumber_ = 0;
        }

        @Override // wallet.core.jni.proto.TheOpenNetwork.TransferOrBuilder
        public int getMode() {
            return this.mode_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMode(int value) {
            this.mode_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMode() {
            this.mode_ = 0;
        }

        @Override // wallet.core.jni.proto.TheOpenNetwork.TransferOrBuilder
        public int getExpireAt() {
            return this.expireAt_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setExpireAt(int value) {
            this.expireAt_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearExpireAt() {
            this.expireAt_ = 0;
        }

        @Override // wallet.core.jni.proto.TheOpenNetwork.TransferOrBuilder
        public String getComment() {
            return this.comment_;
        }

        @Override // wallet.core.jni.proto.TheOpenNetwork.TransferOrBuilder
        public ByteString getCommentBytes() {
            return ByteString.copyFromUtf8(this.comment_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setComment(String value) {
            value.getClass();
            this.comment_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearComment() {
            this.comment_ = getDefaultInstance().getComment();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCommentBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.comment_ = value.toStringUtf8();
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

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Transfer, Builder> implements TransferOrBuilder {
            /* synthetic */ Builder(C68511 c68511) {
                this();
            }

            private Builder() {
                super(Transfer.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.TheOpenNetwork.TransferOrBuilder
            public int getWalletVersionValue() {
                return ((Transfer) this.instance).getWalletVersionValue();
            }

            public Builder setWalletVersionValue(int value) {
                copyOnWrite();
                ((Transfer) this.instance).setWalletVersionValue(value);
                return this;
            }

            @Override // wallet.core.jni.proto.TheOpenNetwork.TransferOrBuilder
            public WalletVersion getWalletVersion() {
                return ((Transfer) this.instance).getWalletVersion();
            }

            public Builder setWalletVersion(WalletVersion value) {
                copyOnWrite();
                ((Transfer) this.instance).setWalletVersion(value);
                return this;
            }

            public Builder clearWalletVersion() {
                copyOnWrite();
                ((Transfer) this.instance).clearWalletVersion();
                return this;
            }

            @Override // wallet.core.jni.proto.TheOpenNetwork.TransferOrBuilder
            public String getDest() {
                return ((Transfer) this.instance).getDest();
            }

            @Override // wallet.core.jni.proto.TheOpenNetwork.TransferOrBuilder
            public ByteString getDestBytes() {
                return ((Transfer) this.instance).getDestBytes();
            }

            public Builder setDest(String value) {
                copyOnWrite();
                ((Transfer) this.instance).setDest(value);
                return this;
            }

            public Builder clearDest() {
                copyOnWrite();
                ((Transfer) this.instance).clearDest();
                return this;
            }

            public Builder setDestBytes(ByteString value) {
                copyOnWrite();
                ((Transfer) this.instance).setDestBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.TheOpenNetwork.TransferOrBuilder
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

            @Override // wallet.core.jni.proto.TheOpenNetwork.TransferOrBuilder
            public int getSequenceNumber() {
                return ((Transfer) this.instance).getSequenceNumber();
            }

            public Builder setSequenceNumber(int value) {
                copyOnWrite();
                ((Transfer) this.instance).setSequenceNumber(value);
                return this;
            }

            public Builder clearSequenceNumber() {
                copyOnWrite();
                ((Transfer) this.instance).clearSequenceNumber();
                return this;
            }

            @Override // wallet.core.jni.proto.TheOpenNetwork.TransferOrBuilder
            public int getMode() {
                return ((Transfer) this.instance).getMode();
            }

            public Builder setMode(int value) {
                copyOnWrite();
                ((Transfer) this.instance).setMode(value);
                return this;
            }

            public Builder clearMode() {
                copyOnWrite();
                ((Transfer) this.instance).clearMode();
                return this;
            }

            @Override // wallet.core.jni.proto.TheOpenNetwork.TransferOrBuilder
            public int getExpireAt() {
                return ((Transfer) this.instance).getExpireAt();
            }

            public Builder setExpireAt(int value) {
                copyOnWrite();
                ((Transfer) this.instance).setExpireAt(value);
                return this;
            }

            public Builder clearExpireAt() {
                copyOnWrite();
                ((Transfer) this.instance).clearExpireAt();
                return this;
            }

            @Override // wallet.core.jni.proto.TheOpenNetwork.TransferOrBuilder
            public String getComment() {
                return ((Transfer) this.instance).getComment();
            }

            @Override // wallet.core.jni.proto.TheOpenNetwork.TransferOrBuilder
            public ByteString getCommentBytes() {
                return ((Transfer) this.instance).getCommentBytes();
            }

            public Builder setComment(String value) {
                copyOnWrite();
                ((Transfer) this.instance).setComment(value);
                return this;
            }

            public Builder clearComment() {
                copyOnWrite();
                ((Transfer) this.instance).clearComment();
                return this;
            }

            public Builder setCommentBytes(ByteString value) {
                copyOnWrite();
                ((Transfer) this.instance).setCommentBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68511.f1828xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Transfer();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001\f\u0002Ȉ\u0003\u0003\u0004\u000b\u0005\u000b\u0006\u000b\u0007Ȉ", new Object[]{"walletVersion_", "dest_", "amount_", "sequenceNumber_", "mode_", "expireAt_", "comment_"});
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

    /* renamed from: wallet.core.jni.proto.TheOpenNetwork$1 */
    /* loaded from: classes6.dex */
    static /* synthetic */ class C68511 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f1828xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f1828xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1828xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1828xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1828xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1828xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1828xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1828xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
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
        private Object actionOneof_;
        private int actionOneofCase_ = 0;
        private ByteString privateKey_ = ByteString.EMPTY;

        private SigningInput() {
        }

        /* loaded from: classes6.dex */
        public enum ActionOneofCase {
            TRANSFER(2),
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
                    if (value != 2) {
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

        @Override // wallet.core.jni.proto.TheOpenNetwork.SigningInputOrBuilder
        public ActionOneofCase getActionOneofCase() {
            return ActionOneofCase.forNumber(this.actionOneofCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearActionOneof() {
            this.actionOneofCase_ = 0;
            this.actionOneof_ = null;
        }

        @Override // wallet.core.jni.proto.TheOpenNetwork.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.TheOpenNetwork.SigningInputOrBuilder
        public boolean hasTransfer() {
            return this.actionOneofCase_ == 2;
        }

        @Override // wallet.core.jni.proto.TheOpenNetwork.SigningInputOrBuilder
        public Transfer getTransfer() {
            if (this.actionOneofCase_ == 2) {
                return (Transfer) this.actionOneof_;
            }
            return Transfer.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransfer(Transfer value) {
            value.getClass();
            this.actionOneof_ = value;
            this.actionOneofCase_ = 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTransfer(Transfer value) {
            value.getClass();
            if (this.actionOneofCase_ == 2 && this.actionOneof_ != Transfer.getDefaultInstance()) {
                this.actionOneof_ = Transfer.newBuilder((Transfer) this.actionOneof_).mergeFrom((Transfer.Builder) value).buildPartial();
            } else {
                this.actionOneof_ = value;
            }
            this.actionOneofCase_ = 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransfer() {
            if (this.actionOneofCase_ == 2) {
                this.actionOneofCase_ = 0;
                this.actionOneof_ = null;
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
            /* synthetic */ Builder(C68511 c68511) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.TheOpenNetwork.SigningInputOrBuilder
            public ActionOneofCase getActionOneofCase() {
                return ((SigningInput) this.instance).getActionOneofCase();
            }

            public Builder clearActionOneof() {
                copyOnWrite();
                ((SigningInput) this.instance).clearActionOneof();
                return this;
            }

            @Override // wallet.core.jni.proto.TheOpenNetwork.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.TheOpenNetwork.SigningInputOrBuilder
            public boolean hasTransfer() {
                return ((SigningInput) this.instance).hasTransfer();
            }

            @Override // wallet.core.jni.proto.TheOpenNetwork.SigningInputOrBuilder
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
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68511.f1828xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002<\u0000", new Object[]{"actionOneof_", "actionOneofCase_", "privateKey_", Transfer.class});
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
        public static final int ERROR_FIELD_NUMBER = 2;
        public static final int ERROR_MESSAGE_FIELD_NUMBER = 3;
        private static volatile Parser<SigningOutput> PARSER;
        private String encoded_ = "";
        private String errorMessage_ = "";
        private int error_;

        private SigningOutput() {
        }

        @Override // wallet.core.jni.proto.TheOpenNetwork.SigningOutputOrBuilder
        public String getEncoded() {
            return this.encoded_;
        }

        @Override // wallet.core.jni.proto.TheOpenNetwork.SigningOutputOrBuilder
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

        @Override // wallet.core.jni.proto.TheOpenNetwork.SigningOutputOrBuilder
        public int getErrorValue() {
            return this.error_;
        }

        @Override // wallet.core.jni.proto.TheOpenNetwork.SigningOutputOrBuilder
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

        @Override // wallet.core.jni.proto.TheOpenNetwork.SigningOutputOrBuilder
        public String getErrorMessage() {
            return this.errorMessage_;
        }

        @Override // wallet.core.jni.proto.TheOpenNetwork.SigningOutputOrBuilder
        public ByteString getErrorMessageBytes() {
            return ByteString.copyFromUtf8(this.errorMessage_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setErrorMessage(String value) {
            value.getClass();
            this.errorMessage_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearErrorMessage() {
            this.errorMessage_ = getDefaultInstance().getErrorMessage();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setErrorMessageBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.errorMessage_ = value.toStringUtf8();
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
            /* synthetic */ Builder(C68511 c68511) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.TheOpenNetwork.SigningOutputOrBuilder
            public String getEncoded() {
                return ((SigningOutput) this.instance).getEncoded();
            }

            @Override // wallet.core.jni.proto.TheOpenNetwork.SigningOutputOrBuilder
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

            @Override // wallet.core.jni.proto.TheOpenNetwork.SigningOutputOrBuilder
            public int getErrorValue() {
                return ((SigningOutput) this.instance).getErrorValue();
            }

            public Builder setErrorValue(int value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setErrorValue(value);
                return this;
            }

            @Override // wallet.core.jni.proto.TheOpenNetwork.SigningOutputOrBuilder
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

            @Override // wallet.core.jni.proto.TheOpenNetwork.SigningOutputOrBuilder
            public String getErrorMessage() {
                return ((SigningOutput) this.instance).getErrorMessage();
            }

            @Override // wallet.core.jni.proto.TheOpenNetwork.SigningOutputOrBuilder
            public ByteString getErrorMessageBytes() {
                return ((SigningOutput) this.instance).getErrorMessageBytes();
            }

            public Builder setErrorMessage(String value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setErrorMessage(value);
                return this;
            }

            public Builder clearErrorMessage() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearErrorMessage();
                return this;
            }

            public Builder setErrorMessageBytes(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setErrorMessageBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68511.f1828xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\f\u0003Ȉ", new Object[]{"encoded_", "error_", "errorMessage_"});
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
