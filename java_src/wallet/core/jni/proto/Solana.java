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
public final class Solana {

    /* loaded from: classes6.dex */
    public interface CreateAndTransferTokenOrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        int getDecimals();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getMemo();

        ByteString getMemoBytes();

        String getRecipientMainAddress();

        ByteString getRecipientMainAddressBytes();

        String getRecipientTokenAddress();

        ByteString getRecipientTokenAddressBytes();

        String getReferences(int index);

        ByteString getReferencesBytes(int index);

        int getReferencesCount();

        List<String> getReferencesList();

        String getSenderTokenAddress();

        ByteString getSenderTokenAddressBytes();

        String getTokenMintAddress();

        ByteString getTokenMintAddressBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface CreateTokenAccountOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getMainAddress();

        ByteString getMainAddressBytes();

        String getTokenAddress();

        ByteString getTokenAddressBytes();

        String getTokenMintAddress();

        ByteString getTokenMintAddressBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface DeactivateAllStakeOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getStakeAccounts(int index);

        ByteString getStakeAccountsBytes(int index);

        int getStakeAccountsCount();

        List<String> getStakeAccountsList();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface DeactivateStakeOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getStakeAccount();

        ByteString getStakeAccountBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface DelegateStakeOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getStakeAccount();

        ByteString getStakeAccountBytes();

        String getValidatorPubkey();

        ByteString getValidatorPubkeyBytes();

        long getValue();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        CreateAndTransferToken getCreateAndTransferTokenTransaction();

        CreateTokenAccount getCreateTokenAccountTransaction();

        DeactivateAllStake getDeactivateAllStakeTransaction();

        DeactivateStake getDeactivateStakeTransaction();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        DelegateStake getDelegateStakeTransaction();

        ByteString getPrivateKey();

        String getRecentBlockhash();

        ByteString getRecentBlockhashBytes();

        TokenTransfer getTokenTransferTransaction();

        SigningInput.TransactionTypeCase getTransactionTypeCase();

        Transfer getTransferTransaction();

        boolean getV0Msg();

        WithdrawAllStake getWithdrawAllTransaction();

        WithdrawStake getWithdrawTransaction();

        boolean hasCreateAndTransferTokenTransaction();

        boolean hasCreateTokenAccountTransaction();

        boolean hasDeactivateAllStakeTransaction();

        boolean hasDeactivateStakeTransaction();

        boolean hasDelegateStakeTransaction();

        boolean hasTokenTransferTransaction();

        boolean hasTransferTransaction();

        boolean hasWithdrawAllTransaction();

        boolean hasWithdrawTransaction();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SigningOutputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getEncoded();

        ByteString getEncodedBytes();

        String getUnsignedTx();

        ByteString getUnsignedTxBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface StakeAccountValueOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getStakeAccount();

        ByteString getStakeAccountBytes();

        long getValue();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TokenTransferOrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        int getDecimals();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getMemo();

        ByteString getMemoBytes();

        String getRecipientTokenAddress();

        ByteString getRecipientTokenAddressBytes();

        String getReferences(int index);

        ByteString getReferencesBytes(int index);

        int getReferencesCount();

        List<String> getReferencesList();

        String getSenderTokenAddress();

        ByteString getSenderTokenAddressBytes();

        String getTokenMintAddress();

        ByteString getTokenMintAddressBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TransferOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getMemo();

        ByteString getMemoBytes();

        String getRecipient();

        ByteString getRecipientBytes();

        String getReferences(int index);

        ByteString getReferencesBytes(int index);

        int getReferencesCount();

        List<String> getReferencesList();

        long getValue();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface WithdrawAllStakeOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        StakeAccountValue getStakeAccounts(int index);

        int getStakeAccountsCount();

        List<StakeAccountValue> getStakeAccountsList();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface WithdrawStakeOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getStakeAccount();

        ByteString getStakeAccountBytes();

        long getValue();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private Solana() {
    }

    /* loaded from: classes6.dex */
    public static final class Transfer extends GeneratedMessageLite<Transfer, Builder> implements TransferOrBuilder {
        private static final Transfer DEFAULT_INSTANCE;
        public static final int MEMO_FIELD_NUMBER = 3;
        private static volatile Parser<Transfer> PARSER = null;
        public static final int RECIPIENT_FIELD_NUMBER = 1;
        public static final int REFERENCES_FIELD_NUMBER = 4;
        public static final int VALUE_FIELD_NUMBER = 2;
        private long value_;
        private String recipient_ = "";
        private String memo_ = "";
        private Internal.ProtobufList<String> references_ = GeneratedMessageLite.emptyProtobufList();

        private Transfer() {
        }

        @Override // wallet.core.jni.proto.Solana.TransferOrBuilder
        public String getRecipient() {
            return this.recipient_;
        }

        @Override // wallet.core.jni.proto.Solana.TransferOrBuilder
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

        @Override // wallet.core.jni.proto.Solana.TransferOrBuilder
        public long getValue() {
            return this.value_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setValue(long value) {
            this.value_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearValue() {
            this.value_ = 0L;
        }

        @Override // wallet.core.jni.proto.Solana.TransferOrBuilder
        public String getMemo() {
            return this.memo_;
        }

        @Override // wallet.core.jni.proto.Solana.TransferOrBuilder
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

        @Override // wallet.core.jni.proto.Solana.TransferOrBuilder
        public List<String> getReferencesList() {
            return this.references_;
        }

        @Override // wallet.core.jni.proto.Solana.TransferOrBuilder
        public int getReferencesCount() {
            return this.references_.size();
        }

        @Override // wallet.core.jni.proto.Solana.TransferOrBuilder
        public String getReferences(int index) {
            return this.references_.get(index);
        }

        @Override // wallet.core.jni.proto.Solana.TransferOrBuilder
        public ByteString getReferencesBytes(int index) {
            return ByteString.copyFromUtf8(this.references_.get(index));
        }

        private void ensureReferencesIsMutable() {
            Internal.ProtobufList<String> protobufList = this.references_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.references_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setReferences(int index, String value) {
            value.getClass();
            ensureReferencesIsMutable();
            this.references_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addReferences(String value) {
            value.getClass();
            ensureReferencesIsMutable();
            this.references_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllReferences(Iterable<String> values) {
            ensureReferencesIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.references_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearReferences() {
            this.references_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addReferencesBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            ensureReferencesIsMutable();
            this.references_.add(value.toStringUtf8());
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
            /* synthetic */ Builder(C67401 c67401) {
                this();
            }

            private Builder() {
                super(Transfer.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Solana.TransferOrBuilder
            public String getRecipient() {
                return ((Transfer) this.instance).getRecipient();
            }

            @Override // wallet.core.jni.proto.Solana.TransferOrBuilder
            public ByteString getRecipientBytes() {
                return ((Transfer) this.instance).getRecipientBytes();
            }

            public Builder setRecipient(String value) {
                copyOnWrite();
                ((Transfer) this.instance).setRecipient(value);
                return this;
            }

            public Builder clearRecipient() {
                copyOnWrite();
                ((Transfer) this.instance).clearRecipient();
                return this;
            }

            public Builder setRecipientBytes(ByteString value) {
                copyOnWrite();
                ((Transfer) this.instance).setRecipientBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.TransferOrBuilder
            public long getValue() {
                return ((Transfer) this.instance).getValue();
            }

            public Builder setValue(long value) {
                copyOnWrite();
                ((Transfer) this.instance).setValue(value);
                return this;
            }

            public Builder clearValue() {
                copyOnWrite();
                ((Transfer) this.instance).clearValue();
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.TransferOrBuilder
            public String getMemo() {
                return ((Transfer) this.instance).getMemo();
            }

            @Override // wallet.core.jni.proto.Solana.TransferOrBuilder
            public ByteString getMemoBytes() {
                return ((Transfer) this.instance).getMemoBytes();
            }

            public Builder setMemo(String value) {
                copyOnWrite();
                ((Transfer) this.instance).setMemo(value);
                return this;
            }

            public Builder clearMemo() {
                copyOnWrite();
                ((Transfer) this.instance).clearMemo();
                return this;
            }

            public Builder setMemoBytes(ByteString value) {
                copyOnWrite();
                ((Transfer) this.instance).setMemoBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.TransferOrBuilder
            public List<String> getReferencesList() {
                return Collections.unmodifiableList(((Transfer) this.instance).getReferencesList());
            }

            @Override // wallet.core.jni.proto.Solana.TransferOrBuilder
            public int getReferencesCount() {
                return ((Transfer) this.instance).getReferencesCount();
            }

            @Override // wallet.core.jni.proto.Solana.TransferOrBuilder
            public String getReferences(int index) {
                return ((Transfer) this.instance).getReferences(index);
            }

            @Override // wallet.core.jni.proto.Solana.TransferOrBuilder
            public ByteString getReferencesBytes(int index) {
                return ((Transfer) this.instance).getReferencesBytes(index);
            }

            public Builder setReferences(int index, String value) {
                copyOnWrite();
                ((Transfer) this.instance).setReferences(index, value);
                return this;
            }

            public Builder addReferences(String value) {
                copyOnWrite();
                ((Transfer) this.instance).addReferences(value);
                return this;
            }

            public Builder addAllReferences(Iterable<String> values) {
                copyOnWrite();
                ((Transfer) this.instance).addAllReferences(values);
                return this;
            }

            public Builder clearReferences() {
                copyOnWrite();
                ((Transfer) this.instance).clearReferences();
                return this;
            }

            public Builder addReferencesBytes(ByteString value) {
                copyOnWrite();
                ((Transfer) this.instance).addReferencesBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67401.f1814xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Transfer();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0001\u0000\u0001Ȉ\u0002\u0003\u0003Ȉ\u0004Ț", new Object[]{"recipient_", "value_", "memo_", "references_"});
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

    /* renamed from: wallet.core.jni.proto.Solana$1 */
    /* loaded from: classes6.dex */
    static /* synthetic */ class C67401 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f1814xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f1814xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1814xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1814xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1814xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1814xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1814xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1814xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class DelegateStake extends GeneratedMessageLite<DelegateStake, Builder> implements DelegateStakeOrBuilder {
        private static final DelegateStake DEFAULT_INSTANCE;
        private static volatile Parser<DelegateStake> PARSER = null;
        public static final int STAKE_ACCOUNT_FIELD_NUMBER = 3;
        public static final int VALIDATOR_PUBKEY_FIELD_NUMBER = 1;
        public static final int VALUE_FIELD_NUMBER = 2;
        private long value_;
        private String validatorPubkey_ = "";
        private String stakeAccount_ = "";

        private DelegateStake() {
        }

        @Override // wallet.core.jni.proto.Solana.DelegateStakeOrBuilder
        public String getValidatorPubkey() {
            return this.validatorPubkey_;
        }

        @Override // wallet.core.jni.proto.Solana.DelegateStakeOrBuilder
        public ByteString getValidatorPubkeyBytes() {
            return ByteString.copyFromUtf8(this.validatorPubkey_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setValidatorPubkey(String value) {
            value.getClass();
            this.validatorPubkey_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearValidatorPubkey() {
            this.validatorPubkey_ = getDefaultInstance().getValidatorPubkey();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setValidatorPubkeyBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.validatorPubkey_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Solana.DelegateStakeOrBuilder
        public long getValue() {
            return this.value_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setValue(long value) {
            this.value_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearValue() {
            this.value_ = 0L;
        }

        @Override // wallet.core.jni.proto.Solana.DelegateStakeOrBuilder
        public String getStakeAccount() {
            return this.stakeAccount_;
        }

        @Override // wallet.core.jni.proto.Solana.DelegateStakeOrBuilder
        public ByteString getStakeAccountBytes() {
            return ByteString.copyFromUtf8(this.stakeAccount_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakeAccount(String value) {
            value.getClass();
            this.stakeAccount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakeAccount() {
            this.stakeAccount_ = getDefaultInstance().getStakeAccount();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakeAccountBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.stakeAccount_ = value.toStringUtf8();
        }

        public static DelegateStake parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (DelegateStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DelegateStake parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DelegateStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DelegateStake parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (DelegateStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DelegateStake parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DelegateStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DelegateStake parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (DelegateStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DelegateStake parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DelegateStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DelegateStake parseFrom(InputStream input) throws IOException {
            return (DelegateStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DelegateStake parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DelegateStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DelegateStake parseDelimitedFrom(InputStream input) throws IOException {
            return (DelegateStake) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static DelegateStake parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DelegateStake) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DelegateStake parseFrom(CodedInputStream input) throws IOException {
            return (DelegateStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DelegateStake parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DelegateStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(DelegateStake prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<DelegateStake, Builder> implements DelegateStakeOrBuilder {
            /* synthetic */ Builder(C67401 c67401) {
                this();
            }

            private Builder() {
                super(DelegateStake.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Solana.DelegateStakeOrBuilder
            public String getValidatorPubkey() {
                return ((DelegateStake) this.instance).getValidatorPubkey();
            }

            @Override // wallet.core.jni.proto.Solana.DelegateStakeOrBuilder
            public ByteString getValidatorPubkeyBytes() {
                return ((DelegateStake) this.instance).getValidatorPubkeyBytes();
            }

            public Builder setValidatorPubkey(String value) {
                copyOnWrite();
                ((DelegateStake) this.instance).setValidatorPubkey(value);
                return this;
            }

            public Builder clearValidatorPubkey() {
                copyOnWrite();
                ((DelegateStake) this.instance).clearValidatorPubkey();
                return this;
            }

            public Builder setValidatorPubkeyBytes(ByteString value) {
                copyOnWrite();
                ((DelegateStake) this.instance).setValidatorPubkeyBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.DelegateStakeOrBuilder
            public long getValue() {
                return ((DelegateStake) this.instance).getValue();
            }

            public Builder setValue(long value) {
                copyOnWrite();
                ((DelegateStake) this.instance).setValue(value);
                return this;
            }

            public Builder clearValue() {
                copyOnWrite();
                ((DelegateStake) this.instance).clearValue();
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.DelegateStakeOrBuilder
            public String getStakeAccount() {
                return ((DelegateStake) this.instance).getStakeAccount();
            }

            @Override // wallet.core.jni.proto.Solana.DelegateStakeOrBuilder
            public ByteString getStakeAccountBytes() {
                return ((DelegateStake) this.instance).getStakeAccountBytes();
            }

            public Builder setStakeAccount(String value) {
                copyOnWrite();
                ((DelegateStake) this.instance).setStakeAccount(value);
                return this;
            }

            public Builder clearStakeAccount() {
                copyOnWrite();
                ((DelegateStake) this.instance).clearStakeAccount();
                return this;
            }

            public Builder setStakeAccountBytes(ByteString value) {
                copyOnWrite();
                ((DelegateStake) this.instance).setStakeAccountBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67401.f1814xa1df5c61[method.ordinal()]) {
                case 1:
                    return new DelegateStake();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\u0003\u0003Ȉ", new Object[]{"validatorPubkey_", "value_", "stakeAccount_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<DelegateStake> parser = PARSER;
                    if (parser == null) {
                        synchronized (DelegateStake.class) {
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
            DelegateStake delegateStake = new DelegateStake();
            DEFAULT_INSTANCE = delegateStake;
            GeneratedMessageLite.registerDefaultInstance(DelegateStake.class, delegateStake);
        }

        public static DelegateStake getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<DelegateStake> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class DeactivateStake extends GeneratedMessageLite<DeactivateStake, Builder> implements DeactivateStakeOrBuilder {
        private static final DeactivateStake DEFAULT_INSTANCE;
        private static volatile Parser<DeactivateStake> PARSER = null;
        public static final int STAKE_ACCOUNT_FIELD_NUMBER = 1;
        private String stakeAccount_ = "";

        private DeactivateStake() {
        }

        @Override // wallet.core.jni.proto.Solana.DeactivateStakeOrBuilder
        public String getStakeAccount() {
            return this.stakeAccount_;
        }

        @Override // wallet.core.jni.proto.Solana.DeactivateStakeOrBuilder
        public ByteString getStakeAccountBytes() {
            return ByteString.copyFromUtf8(this.stakeAccount_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakeAccount(String value) {
            value.getClass();
            this.stakeAccount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakeAccount() {
            this.stakeAccount_ = getDefaultInstance().getStakeAccount();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakeAccountBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.stakeAccount_ = value.toStringUtf8();
        }

        public static DeactivateStake parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (DeactivateStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DeactivateStake parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DeactivateStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DeactivateStake parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (DeactivateStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DeactivateStake parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DeactivateStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DeactivateStake parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (DeactivateStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DeactivateStake parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DeactivateStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DeactivateStake parseFrom(InputStream input) throws IOException {
            return (DeactivateStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DeactivateStake parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DeactivateStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DeactivateStake parseDelimitedFrom(InputStream input) throws IOException {
            return (DeactivateStake) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static DeactivateStake parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DeactivateStake) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DeactivateStake parseFrom(CodedInputStream input) throws IOException {
            return (DeactivateStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DeactivateStake parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DeactivateStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(DeactivateStake prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<DeactivateStake, Builder> implements DeactivateStakeOrBuilder {
            /* synthetic */ Builder(C67401 c67401) {
                this();
            }

            private Builder() {
                super(DeactivateStake.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Solana.DeactivateStakeOrBuilder
            public String getStakeAccount() {
                return ((DeactivateStake) this.instance).getStakeAccount();
            }

            @Override // wallet.core.jni.proto.Solana.DeactivateStakeOrBuilder
            public ByteString getStakeAccountBytes() {
                return ((DeactivateStake) this.instance).getStakeAccountBytes();
            }

            public Builder setStakeAccount(String value) {
                copyOnWrite();
                ((DeactivateStake) this.instance).setStakeAccount(value);
                return this;
            }

            public Builder clearStakeAccount() {
                copyOnWrite();
                ((DeactivateStake) this.instance).clearStakeAccount();
                return this;
            }

            public Builder setStakeAccountBytes(ByteString value) {
                copyOnWrite();
                ((DeactivateStake) this.instance).setStakeAccountBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67401.f1814xa1df5c61[method.ordinal()]) {
                case 1:
                    return new DeactivateStake();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"stakeAccount_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<DeactivateStake> parser = PARSER;
                    if (parser == null) {
                        synchronized (DeactivateStake.class) {
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
            DeactivateStake deactivateStake = new DeactivateStake();
            DEFAULT_INSTANCE = deactivateStake;
            GeneratedMessageLite.registerDefaultInstance(DeactivateStake.class, deactivateStake);
        }

        public static DeactivateStake getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<DeactivateStake> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class DeactivateAllStake extends GeneratedMessageLite<DeactivateAllStake, Builder> implements DeactivateAllStakeOrBuilder {
        private static final DeactivateAllStake DEFAULT_INSTANCE;
        private static volatile Parser<DeactivateAllStake> PARSER = null;
        public static final int STAKE_ACCOUNTS_FIELD_NUMBER = 1;
        private Internal.ProtobufList<String> stakeAccounts_ = GeneratedMessageLite.emptyProtobufList();

        private DeactivateAllStake() {
        }

        @Override // wallet.core.jni.proto.Solana.DeactivateAllStakeOrBuilder
        public List<String> getStakeAccountsList() {
            return this.stakeAccounts_;
        }

        @Override // wallet.core.jni.proto.Solana.DeactivateAllStakeOrBuilder
        public int getStakeAccountsCount() {
            return this.stakeAccounts_.size();
        }

        @Override // wallet.core.jni.proto.Solana.DeactivateAllStakeOrBuilder
        public String getStakeAccounts(int index) {
            return this.stakeAccounts_.get(index);
        }

        @Override // wallet.core.jni.proto.Solana.DeactivateAllStakeOrBuilder
        public ByteString getStakeAccountsBytes(int index) {
            return ByteString.copyFromUtf8(this.stakeAccounts_.get(index));
        }

        private void ensureStakeAccountsIsMutable() {
            Internal.ProtobufList<String> protobufList = this.stakeAccounts_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.stakeAccounts_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakeAccounts(int index, String value) {
            value.getClass();
            ensureStakeAccountsIsMutable();
            this.stakeAccounts_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addStakeAccounts(String value) {
            value.getClass();
            ensureStakeAccountsIsMutable();
            this.stakeAccounts_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllStakeAccounts(Iterable<String> values) {
            ensureStakeAccountsIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.stakeAccounts_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakeAccounts() {
            this.stakeAccounts_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addStakeAccountsBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            ensureStakeAccountsIsMutable();
            this.stakeAccounts_.add(value.toStringUtf8());
        }

        public static DeactivateAllStake parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (DeactivateAllStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DeactivateAllStake parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DeactivateAllStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DeactivateAllStake parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (DeactivateAllStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DeactivateAllStake parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DeactivateAllStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DeactivateAllStake parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (DeactivateAllStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DeactivateAllStake parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DeactivateAllStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DeactivateAllStake parseFrom(InputStream input) throws IOException {
            return (DeactivateAllStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DeactivateAllStake parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DeactivateAllStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DeactivateAllStake parseDelimitedFrom(InputStream input) throws IOException {
            return (DeactivateAllStake) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static DeactivateAllStake parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DeactivateAllStake) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DeactivateAllStake parseFrom(CodedInputStream input) throws IOException {
            return (DeactivateAllStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DeactivateAllStake parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DeactivateAllStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(DeactivateAllStake prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<DeactivateAllStake, Builder> implements DeactivateAllStakeOrBuilder {
            /* synthetic */ Builder(C67401 c67401) {
                this();
            }

            private Builder() {
                super(DeactivateAllStake.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Solana.DeactivateAllStakeOrBuilder
            public List<String> getStakeAccountsList() {
                return Collections.unmodifiableList(((DeactivateAllStake) this.instance).getStakeAccountsList());
            }

            @Override // wallet.core.jni.proto.Solana.DeactivateAllStakeOrBuilder
            public int getStakeAccountsCount() {
                return ((DeactivateAllStake) this.instance).getStakeAccountsCount();
            }

            @Override // wallet.core.jni.proto.Solana.DeactivateAllStakeOrBuilder
            public String getStakeAccounts(int index) {
                return ((DeactivateAllStake) this.instance).getStakeAccounts(index);
            }

            @Override // wallet.core.jni.proto.Solana.DeactivateAllStakeOrBuilder
            public ByteString getStakeAccountsBytes(int index) {
                return ((DeactivateAllStake) this.instance).getStakeAccountsBytes(index);
            }

            public Builder setStakeAccounts(int index, String value) {
                copyOnWrite();
                ((DeactivateAllStake) this.instance).setStakeAccounts(index, value);
                return this;
            }

            public Builder addStakeAccounts(String value) {
                copyOnWrite();
                ((DeactivateAllStake) this.instance).addStakeAccounts(value);
                return this;
            }

            public Builder addAllStakeAccounts(Iterable<String> values) {
                copyOnWrite();
                ((DeactivateAllStake) this.instance).addAllStakeAccounts(values);
                return this;
            }

            public Builder clearStakeAccounts() {
                copyOnWrite();
                ((DeactivateAllStake) this.instance).clearStakeAccounts();
                return this;
            }

            public Builder addStakeAccountsBytes(ByteString value) {
                copyOnWrite();
                ((DeactivateAllStake) this.instance).addStakeAccountsBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67401.f1814xa1df5c61[method.ordinal()]) {
                case 1:
                    return new DeactivateAllStake();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001Ț", new Object[]{"stakeAccounts_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<DeactivateAllStake> parser = PARSER;
                    if (parser == null) {
                        synchronized (DeactivateAllStake.class) {
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
            DeactivateAllStake deactivateAllStake = new DeactivateAllStake();
            DEFAULT_INSTANCE = deactivateAllStake;
            GeneratedMessageLite.registerDefaultInstance(DeactivateAllStake.class, deactivateAllStake);
        }

        public static DeactivateAllStake getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<DeactivateAllStake> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class WithdrawStake extends GeneratedMessageLite<WithdrawStake, Builder> implements WithdrawStakeOrBuilder {
        private static final WithdrawStake DEFAULT_INSTANCE;
        private static volatile Parser<WithdrawStake> PARSER = null;
        public static final int STAKE_ACCOUNT_FIELD_NUMBER = 1;
        public static final int VALUE_FIELD_NUMBER = 2;
        private String stakeAccount_ = "";
        private long value_;

        private WithdrawStake() {
        }

        @Override // wallet.core.jni.proto.Solana.WithdrawStakeOrBuilder
        public String getStakeAccount() {
            return this.stakeAccount_;
        }

        @Override // wallet.core.jni.proto.Solana.WithdrawStakeOrBuilder
        public ByteString getStakeAccountBytes() {
            return ByteString.copyFromUtf8(this.stakeAccount_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakeAccount(String value) {
            value.getClass();
            this.stakeAccount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakeAccount() {
            this.stakeAccount_ = getDefaultInstance().getStakeAccount();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakeAccountBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.stakeAccount_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Solana.WithdrawStakeOrBuilder
        public long getValue() {
            return this.value_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setValue(long value) {
            this.value_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearValue() {
            this.value_ = 0L;
        }

        public static WithdrawStake parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (WithdrawStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static WithdrawStake parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (WithdrawStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static WithdrawStake parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (WithdrawStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static WithdrawStake parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (WithdrawStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static WithdrawStake parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (WithdrawStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static WithdrawStake parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (WithdrawStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static WithdrawStake parseFrom(InputStream input) throws IOException {
            return (WithdrawStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static WithdrawStake parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (WithdrawStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static WithdrawStake parseDelimitedFrom(InputStream input) throws IOException {
            return (WithdrawStake) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static WithdrawStake parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (WithdrawStake) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static WithdrawStake parseFrom(CodedInputStream input) throws IOException {
            return (WithdrawStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static WithdrawStake parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (WithdrawStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(WithdrawStake prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<WithdrawStake, Builder> implements WithdrawStakeOrBuilder {
            /* synthetic */ Builder(C67401 c67401) {
                this();
            }

            private Builder() {
                super(WithdrawStake.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Solana.WithdrawStakeOrBuilder
            public String getStakeAccount() {
                return ((WithdrawStake) this.instance).getStakeAccount();
            }

            @Override // wallet.core.jni.proto.Solana.WithdrawStakeOrBuilder
            public ByteString getStakeAccountBytes() {
                return ((WithdrawStake) this.instance).getStakeAccountBytes();
            }

            public Builder setStakeAccount(String value) {
                copyOnWrite();
                ((WithdrawStake) this.instance).setStakeAccount(value);
                return this;
            }

            public Builder clearStakeAccount() {
                copyOnWrite();
                ((WithdrawStake) this.instance).clearStakeAccount();
                return this;
            }

            public Builder setStakeAccountBytes(ByteString value) {
                copyOnWrite();
                ((WithdrawStake) this.instance).setStakeAccountBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.WithdrawStakeOrBuilder
            public long getValue() {
                return ((WithdrawStake) this.instance).getValue();
            }

            public Builder setValue(long value) {
                copyOnWrite();
                ((WithdrawStake) this.instance).setValue(value);
                return this;
            }

            public Builder clearValue() {
                copyOnWrite();
                ((WithdrawStake) this.instance).clearValue();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67401.f1814xa1df5c61[method.ordinal()]) {
                case 1:
                    return new WithdrawStake();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\u0003", new Object[]{"stakeAccount_", "value_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<WithdrawStake> parser = PARSER;
                    if (parser == null) {
                        synchronized (WithdrawStake.class) {
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
            WithdrawStake withdrawStake = new WithdrawStake();
            DEFAULT_INSTANCE = withdrawStake;
            GeneratedMessageLite.registerDefaultInstance(WithdrawStake.class, withdrawStake);
        }

        public static WithdrawStake getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<WithdrawStake> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class StakeAccountValue extends GeneratedMessageLite<StakeAccountValue, Builder> implements StakeAccountValueOrBuilder {
        private static final StakeAccountValue DEFAULT_INSTANCE;
        private static volatile Parser<StakeAccountValue> PARSER = null;
        public static final int STAKE_ACCOUNT_FIELD_NUMBER = 1;
        public static final int VALUE_FIELD_NUMBER = 2;
        private String stakeAccount_ = "";
        private long value_;

        private StakeAccountValue() {
        }

        @Override // wallet.core.jni.proto.Solana.StakeAccountValueOrBuilder
        public String getStakeAccount() {
            return this.stakeAccount_;
        }

        @Override // wallet.core.jni.proto.Solana.StakeAccountValueOrBuilder
        public ByteString getStakeAccountBytes() {
            return ByteString.copyFromUtf8(this.stakeAccount_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakeAccount(String value) {
            value.getClass();
            this.stakeAccount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakeAccount() {
            this.stakeAccount_ = getDefaultInstance().getStakeAccount();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakeAccountBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.stakeAccount_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Solana.StakeAccountValueOrBuilder
        public long getValue() {
            return this.value_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setValue(long value) {
            this.value_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearValue() {
            this.value_ = 0L;
        }

        public static StakeAccountValue parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (StakeAccountValue) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static StakeAccountValue parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (StakeAccountValue) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static StakeAccountValue parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (StakeAccountValue) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static StakeAccountValue parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (StakeAccountValue) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static StakeAccountValue parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (StakeAccountValue) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static StakeAccountValue parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (StakeAccountValue) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static StakeAccountValue parseFrom(InputStream input) throws IOException {
            return (StakeAccountValue) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static StakeAccountValue parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (StakeAccountValue) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static StakeAccountValue parseDelimitedFrom(InputStream input) throws IOException {
            return (StakeAccountValue) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static StakeAccountValue parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (StakeAccountValue) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static StakeAccountValue parseFrom(CodedInputStream input) throws IOException {
            return (StakeAccountValue) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static StakeAccountValue parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (StakeAccountValue) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(StakeAccountValue prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<StakeAccountValue, Builder> implements StakeAccountValueOrBuilder {
            /* synthetic */ Builder(C67401 c67401) {
                this();
            }

            private Builder() {
                super(StakeAccountValue.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Solana.StakeAccountValueOrBuilder
            public String getStakeAccount() {
                return ((StakeAccountValue) this.instance).getStakeAccount();
            }

            @Override // wallet.core.jni.proto.Solana.StakeAccountValueOrBuilder
            public ByteString getStakeAccountBytes() {
                return ((StakeAccountValue) this.instance).getStakeAccountBytes();
            }

            public Builder setStakeAccount(String value) {
                copyOnWrite();
                ((StakeAccountValue) this.instance).setStakeAccount(value);
                return this;
            }

            public Builder clearStakeAccount() {
                copyOnWrite();
                ((StakeAccountValue) this.instance).clearStakeAccount();
                return this;
            }

            public Builder setStakeAccountBytes(ByteString value) {
                copyOnWrite();
                ((StakeAccountValue) this.instance).setStakeAccountBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.StakeAccountValueOrBuilder
            public long getValue() {
                return ((StakeAccountValue) this.instance).getValue();
            }

            public Builder setValue(long value) {
                copyOnWrite();
                ((StakeAccountValue) this.instance).setValue(value);
                return this;
            }

            public Builder clearValue() {
                copyOnWrite();
                ((StakeAccountValue) this.instance).clearValue();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67401.f1814xa1df5c61[method.ordinal()]) {
                case 1:
                    return new StakeAccountValue();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\u0003", new Object[]{"stakeAccount_", "value_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<StakeAccountValue> parser = PARSER;
                    if (parser == null) {
                        synchronized (StakeAccountValue.class) {
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
            StakeAccountValue stakeAccountValue = new StakeAccountValue();
            DEFAULT_INSTANCE = stakeAccountValue;
            GeneratedMessageLite.registerDefaultInstance(StakeAccountValue.class, stakeAccountValue);
        }

        public static StakeAccountValue getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<StakeAccountValue> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class WithdrawAllStake extends GeneratedMessageLite<WithdrawAllStake, Builder> implements WithdrawAllStakeOrBuilder {
        private static final WithdrawAllStake DEFAULT_INSTANCE;
        private static volatile Parser<WithdrawAllStake> PARSER = null;
        public static final int STAKE_ACCOUNTS_FIELD_NUMBER = 1;
        private Internal.ProtobufList<StakeAccountValue> stakeAccounts_ = GeneratedMessageLite.emptyProtobufList();

        private WithdrawAllStake() {
        }

        @Override // wallet.core.jni.proto.Solana.WithdrawAllStakeOrBuilder
        public List<StakeAccountValue> getStakeAccountsList() {
            return this.stakeAccounts_;
        }

        public List<? extends StakeAccountValueOrBuilder> getStakeAccountsOrBuilderList() {
            return this.stakeAccounts_;
        }

        @Override // wallet.core.jni.proto.Solana.WithdrawAllStakeOrBuilder
        public int getStakeAccountsCount() {
            return this.stakeAccounts_.size();
        }

        @Override // wallet.core.jni.proto.Solana.WithdrawAllStakeOrBuilder
        public StakeAccountValue getStakeAccounts(int index) {
            return this.stakeAccounts_.get(index);
        }

        public StakeAccountValueOrBuilder getStakeAccountsOrBuilder(int index) {
            return this.stakeAccounts_.get(index);
        }

        private void ensureStakeAccountsIsMutable() {
            Internal.ProtobufList<StakeAccountValue> protobufList = this.stakeAccounts_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.stakeAccounts_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStakeAccounts(int index, StakeAccountValue value) {
            value.getClass();
            ensureStakeAccountsIsMutable();
            this.stakeAccounts_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addStakeAccounts(StakeAccountValue value) {
            value.getClass();
            ensureStakeAccountsIsMutable();
            this.stakeAccounts_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addStakeAccounts(int index, StakeAccountValue value) {
            value.getClass();
            ensureStakeAccountsIsMutable();
            this.stakeAccounts_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllStakeAccounts(Iterable<? extends StakeAccountValue> values) {
            ensureStakeAccountsIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.stakeAccounts_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStakeAccounts() {
            this.stakeAccounts_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeStakeAccounts(int index) {
            ensureStakeAccountsIsMutable();
            this.stakeAccounts_.remove(index);
        }

        public static WithdrawAllStake parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (WithdrawAllStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static WithdrawAllStake parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (WithdrawAllStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static WithdrawAllStake parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (WithdrawAllStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static WithdrawAllStake parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (WithdrawAllStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static WithdrawAllStake parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (WithdrawAllStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static WithdrawAllStake parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (WithdrawAllStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static WithdrawAllStake parseFrom(InputStream input) throws IOException {
            return (WithdrawAllStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static WithdrawAllStake parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (WithdrawAllStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static WithdrawAllStake parseDelimitedFrom(InputStream input) throws IOException {
            return (WithdrawAllStake) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static WithdrawAllStake parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (WithdrawAllStake) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static WithdrawAllStake parseFrom(CodedInputStream input) throws IOException {
            return (WithdrawAllStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static WithdrawAllStake parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (WithdrawAllStake) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(WithdrawAllStake prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<WithdrawAllStake, Builder> implements WithdrawAllStakeOrBuilder {
            /* synthetic */ Builder(C67401 c67401) {
                this();
            }

            private Builder() {
                super(WithdrawAllStake.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Solana.WithdrawAllStakeOrBuilder
            public List<StakeAccountValue> getStakeAccountsList() {
                return Collections.unmodifiableList(((WithdrawAllStake) this.instance).getStakeAccountsList());
            }

            @Override // wallet.core.jni.proto.Solana.WithdrawAllStakeOrBuilder
            public int getStakeAccountsCount() {
                return ((WithdrawAllStake) this.instance).getStakeAccountsCount();
            }

            @Override // wallet.core.jni.proto.Solana.WithdrawAllStakeOrBuilder
            public StakeAccountValue getStakeAccounts(int index) {
                return ((WithdrawAllStake) this.instance).getStakeAccounts(index);
            }

            public Builder setStakeAccounts(int index, StakeAccountValue value) {
                copyOnWrite();
                ((WithdrawAllStake) this.instance).setStakeAccounts(index, value);
                return this;
            }

            public Builder setStakeAccounts(int index, StakeAccountValue.Builder builderForValue) {
                copyOnWrite();
                ((WithdrawAllStake) this.instance).setStakeAccounts(index, builderForValue.build());
                return this;
            }

            public Builder addStakeAccounts(StakeAccountValue value) {
                copyOnWrite();
                ((WithdrawAllStake) this.instance).addStakeAccounts(value);
                return this;
            }

            public Builder addStakeAccounts(int index, StakeAccountValue value) {
                copyOnWrite();
                ((WithdrawAllStake) this.instance).addStakeAccounts(index, value);
                return this;
            }

            public Builder addStakeAccounts(StakeAccountValue.Builder builderForValue) {
                copyOnWrite();
                ((WithdrawAllStake) this.instance).addStakeAccounts(builderForValue.build());
                return this;
            }

            public Builder addStakeAccounts(int index, StakeAccountValue.Builder builderForValue) {
                copyOnWrite();
                ((WithdrawAllStake) this.instance).addStakeAccounts(index, builderForValue.build());
                return this;
            }

            public Builder addAllStakeAccounts(Iterable<? extends StakeAccountValue> values) {
                copyOnWrite();
                ((WithdrawAllStake) this.instance).addAllStakeAccounts(values);
                return this;
            }

            public Builder clearStakeAccounts() {
                copyOnWrite();
                ((WithdrawAllStake) this.instance).clearStakeAccounts();
                return this;
            }

            public Builder removeStakeAccounts(int index) {
                copyOnWrite();
                ((WithdrawAllStake) this.instance).removeStakeAccounts(index);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67401.f1814xa1df5c61[method.ordinal()]) {
                case 1:
                    return new WithdrawAllStake();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"stakeAccounts_", StakeAccountValue.class});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<WithdrawAllStake> parser = PARSER;
                    if (parser == null) {
                        synchronized (WithdrawAllStake.class) {
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
            WithdrawAllStake withdrawAllStake = new WithdrawAllStake();
            DEFAULT_INSTANCE = withdrawAllStake;
            GeneratedMessageLite.registerDefaultInstance(WithdrawAllStake.class, withdrawAllStake);
        }

        public static WithdrawAllStake getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<WithdrawAllStake> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class CreateTokenAccount extends GeneratedMessageLite<CreateTokenAccount, Builder> implements CreateTokenAccountOrBuilder {
        private static final CreateTokenAccount DEFAULT_INSTANCE;
        public static final int MAIN_ADDRESS_FIELD_NUMBER = 1;
        private static volatile Parser<CreateTokenAccount> PARSER = null;
        public static final int TOKEN_ADDRESS_FIELD_NUMBER = 3;
        public static final int TOKEN_MINT_ADDRESS_FIELD_NUMBER = 2;
        private String mainAddress_ = "";
        private String tokenMintAddress_ = "";
        private String tokenAddress_ = "";

        private CreateTokenAccount() {
        }

        @Override // wallet.core.jni.proto.Solana.CreateTokenAccountOrBuilder
        public String getMainAddress() {
            return this.mainAddress_;
        }

        @Override // wallet.core.jni.proto.Solana.CreateTokenAccountOrBuilder
        public ByteString getMainAddressBytes() {
            return ByteString.copyFromUtf8(this.mainAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMainAddress(String value) {
            value.getClass();
            this.mainAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearMainAddress() {
            this.mainAddress_ = getDefaultInstance().getMainAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMainAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.mainAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Solana.CreateTokenAccountOrBuilder
        public String getTokenMintAddress() {
            return this.tokenMintAddress_;
        }

        @Override // wallet.core.jni.proto.Solana.CreateTokenAccountOrBuilder
        public ByteString getTokenMintAddressBytes() {
            return ByteString.copyFromUtf8(this.tokenMintAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTokenMintAddress(String value) {
            value.getClass();
            this.tokenMintAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTokenMintAddress() {
            this.tokenMintAddress_ = getDefaultInstance().getTokenMintAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTokenMintAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.tokenMintAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Solana.CreateTokenAccountOrBuilder
        public String getTokenAddress() {
            return this.tokenAddress_;
        }

        @Override // wallet.core.jni.proto.Solana.CreateTokenAccountOrBuilder
        public ByteString getTokenAddressBytes() {
            return ByteString.copyFromUtf8(this.tokenAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTokenAddress(String value) {
            value.getClass();
            this.tokenAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTokenAddress() {
            this.tokenAddress_ = getDefaultInstance().getTokenAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTokenAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.tokenAddress_ = value.toStringUtf8();
        }

        public static CreateTokenAccount parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (CreateTokenAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CreateTokenAccount parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CreateTokenAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CreateTokenAccount parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (CreateTokenAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CreateTokenAccount parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CreateTokenAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CreateTokenAccount parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (CreateTokenAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CreateTokenAccount parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CreateTokenAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CreateTokenAccount parseFrom(InputStream input) throws IOException {
            return (CreateTokenAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static CreateTokenAccount parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CreateTokenAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static CreateTokenAccount parseDelimitedFrom(InputStream input) throws IOException {
            return (CreateTokenAccount) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static CreateTokenAccount parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CreateTokenAccount) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static CreateTokenAccount parseFrom(CodedInputStream input) throws IOException {
            return (CreateTokenAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static CreateTokenAccount parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CreateTokenAccount) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(CreateTokenAccount prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<CreateTokenAccount, Builder> implements CreateTokenAccountOrBuilder {
            /* synthetic */ Builder(C67401 c67401) {
                this();
            }

            private Builder() {
                super(CreateTokenAccount.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Solana.CreateTokenAccountOrBuilder
            public String getMainAddress() {
                return ((CreateTokenAccount) this.instance).getMainAddress();
            }

            @Override // wallet.core.jni.proto.Solana.CreateTokenAccountOrBuilder
            public ByteString getMainAddressBytes() {
                return ((CreateTokenAccount) this.instance).getMainAddressBytes();
            }

            public Builder setMainAddress(String value) {
                copyOnWrite();
                ((CreateTokenAccount) this.instance).setMainAddress(value);
                return this;
            }

            public Builder clearMainAddress() {
                copyOnWrite();
                ((CreateTokenAccount) this.instance).clearMainAddress();
                return this;
            }

            public Builder setMainAddressBytes(ByteString value) {
                copyOnWrite();
                ((CreateTokenAccount) this.instance).setMainAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.CreateTokenAccountOrBuilder
            public String getTokenMintAddress() {
                return ((CreateTokenAccount) this.instance).getTokenMintAddress();
            }

            @Override // wallet.core.jni.proto.Solana.CreateTokenAccountOrBuilder
            public ByteString getTokenMintAddressBytes() {
                return ((CreateTokenAccount) this.instance).getTokenMintAddressBytes();
            }

            public Builder setTokenMintAddress(String value) {
                copyOnWrite();
                ((CreateTokenAccount) this.instance).setTokenMintAddress(value);
                return this;
            }

            public Builder clearTokenMintAddress() {
                copyOnWrite();
                ((CreateTokenAccount) this.instance).clearTokenMintAddress();
                return this;
            }

            public Builder setTokenMintAddressBytes(ByteString value) {
                copyOnWrite();
                ((CreateTokenAccount) this.instance).setTokenMintAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.CreateTokenAccountOrBuilder
            public String getTokenAddress() {
                return ((CreateTokenAccount) this.instance).getTokenAddress();
            }

            @Override // wallet.core.jni.proto.Solana.CreateTokenAccountOrBuilder
            public ByteString getTokenAddressBytes() {
                return ((CreateTokenAccount) this.instance).getTokenAddressBytes();
            }

            public Builder setTokenAddress(String value) {
                copyOnWrite();
                ((CreateTokenAccount) this.instance).setTokenAddress(value);
                return this;
            }

            public Builder clearTokenAddress() {
                copyOnWrite();
                ((CreateTokenAccount) this.instance).clearTokenAddress();
                return this;
            }

            public Builder setTokenAddressBytes(ByteString value) {
                copyOnWrite();
                ((CreateTokenAccount) this.instance).setTokenAddressBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67401.f1814xa1df5c61[method.ordinal()]) {
                case 1:
                    return new CreateTokenAccount();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ", new Object[]{"mainAddress_", "tokenMintAddress_", "tokenAddress_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<CreateTokenAccount> parser = PARSER;
                    if (parser == null) {
                        synchronized (CreateTokenAccount.class) {
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
            CreateTokenAccount createTokenAccount = new CreateTokenAccount();
            DEFAULT_INSTANCE = createTokenAccount;
            GeneratedMessageLite.registerDefaultInstance(CreateTokenAccount.class, createTokenAccount);
        }

        public static CreateTokenAccount getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CreateTokenAccount> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class TokenTransfer extends GeneratedMessageLite<TokenTransfer, Builder> implements TokenTransferOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 4;
        public static final int DECIMALS_FIELD_NUMBER = 5;
        private static final TokenTransfer DEFAULT_INSTANCE;
        public static final int MEMO_FIELD_NUMBER = 6;
        private static volatile Parser<TokenTransfer> PARSER = null;
        public static final int RECIPIENT_TOKEN_ADDRESS_FIELD_NUMBER = 3;
        public static final int REFERENCES_FIELD_NUMBER = 7;
        public static final int SENDER_TOKEN_ADDRESS_FIELD_NUMBER = 2;
        public static final int TOKEN_MINT_ADDRESS_FIELD_NUMBER = 1;
        private long amount_;
        private int decimals_;
        private String tokenMintAddress_ = "";
        private String senderTokenAddress_ = "";
        private String recipientTokenAddress_ = "";
        private String memo_ = "";
        private Internal.ProtobufList<String> references_ = GeneratedMessageLite.emptyProtobufList();

        private TokenTransfer() {
        }

        @Override // wallet.core.jni.proto.Solana.TokenTransferOrBuilder
        public String getTokenMintAddress() {
            return this.tokenMintAddress_;
        }

        @Override // wallet.core.jni.proto.Solana.TokenTransferOrBuilder
        public ByteString getTokenMintAddressBytes() {
            return ByteString.copyFromUtf8(this.tokenMintAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTokenMintAddress(String value) {
            value.getClass();
            this.tokenMintAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTokenMintAddress() {
            this.tokenMintAddress_ = getDefaultInstance().getTokenMintAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTokenMintAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.tokenMintAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Solana.TokenTransferOrBuilder
        public String getSenderTokenAddress() {
            return this.senderTokenAddress_;
        }

        @Override // wallet.core.jni.proto.Solana.TokenTransferOrBuilder
        public ByteString getSenderTokenAddressBytes() {
            return ByteString.copyFromUtf8(this.senderTokenAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSenderTokenAddress(String value) {
            value.getClass();
            this.senderTokenAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSenderTokenAddress() {
            this.senderTokenAddress_ = getDefaultInstance().getSenderTokenAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSenderTokenAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.senderTokenAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Solana.TokenTransferOrBuilder
        public String getRecipientTokenAddress() {
            return this.recipientTokenAddress_;
        }

        @Override // wallet.core.jni.proto.Solana.TokenTransferOrBuilder
        public ByteString getRecipientTokenAddressBytes() {
            return ByteString.copyFromUtf8(this.recipientTokenAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRecipientTokenAddress(String value) {
            value.getClass();
            this.recipientTokenAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearRecipientTokenAddress() {
            this.recipientTokenAddress_ = getDefaultInstance().getRecipientTokenAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRecipientTokenAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.recipientTokenAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Solana.TokenTransferOrBuilder
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

        @Override // wallet.core.jni.proto.Solana.TokenTransferOrBuilder
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

        @Override // wallet.core.jni.proto.Solana.TokenTransferOrBuilder
        public String getMemo() {
            return this.memo_;
        }

        @Override // wallet.core.jni.proto.Solana.TokenTransferOrBuilder
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

        @Override // wallet.core.jni.proto.Solana.TokenTransferOrBuilder
        public List<String> getReferencesList() {
            return this.references_;
        }

        @Override // wallet.core.jni.proto.Solana.TokenTransferOrBuilder
        public int getReferencesCount() {
            return this.references_.size();
        }

        @Override // wallet.core.jni.proto.Solana.TokenTransferOrBuilder
        public String getReferences(int index) {
            return this.references_.get(index);
        }

        @Override // wallet.core.jni.proto.Solana.TokenTransferOrBuilder
        public ByteString getReferencesBytes(int index) {
            return ByteString.copyFromUtf8(this.references_.get(index));
        }

        private void ensureReferencesIsMutable() {
            Internal.ProtobufList<String> protobufList = this.references_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.references_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setReferences(int index, String value) {
            value.getClass();
            ensureReferencesIsMutable();
            this.references_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addReferences(String value) {
            value.getClass();
            ensureReferencesIsMutable();
            this.references_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllReferences(Iterable<String> values) {
            ensureReferencesIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.references_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearReferences() {
            this.references_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addReferencesBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            ensureReferencesIsMutable();
            this.references_.add(value.toStringUtf8());
        }

        public static TokenTransfer parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TokenTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TokenTransfer parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TokenTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TokenTransfer parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TokenTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TokenTransfer parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TokenTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TokenTransfer parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TokenTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TokenTransfer parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TokenTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TokenTransfer parseFrom(InputStream input) throws IOException {
            return (TokenTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TokenTransfer parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TokenTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TokenTransfer parseDelimitedFrom(InputStream input) throws IOException {
            return (TokenTransfer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TokenTransfer parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TokenTransfer) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TokenTransfer parseFrom(CodedInputStream input) throws IOException {
            return (TokenTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TokenTransfer parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TokenTransfer) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TokenTransfer prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TokenTransfer, Builder> implements TokenTransferOrBuilder {
            /* synthetic */ Builder(C67401 c67401) {
                this();
            }

            private Builder() {
                super(TokenTransfer.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Solana.TokenTransferOrBuilder
            public String getTokenMintAddress() {
                return ((TokenTransfer) this.instance).getTokenMintAddress();
            }

            @Override // wallet.core.jni.proto.Solana.TokenTransferOrBuilder
            public ByteString getTokenMintAddressBytes() {
                return ((TokenTransfer) this.instance).getTokenMintAddressBytes();
            }

            public Builder setTokenMintAddress(String value) {
                copyOnWrite();
                ((TokenTransfer) this.instance).setTokenMintAddress(value);
                return this;
            }

            public Builder clearTokenMintAddress() {
                copyOnWrite();
                ((TokenTransfer) this.instance).clearTokenMintAddress();
                return this;
            }

            public Builder setTokenMintAddressBytes(ByteString value) {
                copyOnWrite();
                ((TokenTransfer) this.instance).setTokenMintAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.TokenTransferOrBuilder
            public String getSenderTokenAddress() {
                return ((TokenTransfer) this.instance).getSenderTokenAddress();
            }

            @Override // wallet.core.jni.proto.Solana.TokenTransferOrBuilder
            public ByteString getSenderTokenAddressBytes() {
                return ((TokenTransfer) this.instance).getSenderTokenAddressBytes();
            }

            public Builder setSenderTokenAddress(String value) {
                copyOnWrite();
                ((TokenTransfer) this.instance).setSenderTokenAddress(value);
                return this;
            }

            public Builder clearSenderTokenAddress() {
                copyOnWrite();
                ((TokenTransfer) this.instance).clearSenderTokenAddress();
                return this;
            }

            public Builder setSenderTokenAddressBytes(ByteString value) {
                copyOnWrite();
                ((TokenTransfer) this.instance).setSenderTokenAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.TokenTransferOrBuilder
            public String getRecipientTokenAddress() {
                return ((TokenTransfer) this.instance).getRecipientTokenAddress();
            }

            @Override // wallet.core.jni.proto.Solana.TokenTransferOrBuilder
            public ByteString getRecipientTokenAddressBytes() {
                return ((TokenTransfer) this.instance).getRecipientTokenAddressBytes();
            }

            public Builder setRecipientTokenAddress(String value) {
                copyOnWrite();
                ((TokenTransfer) this.instance).setRecipientTokenAddress(value);
                return this;
            }

            public Builder clearRecipientTokenAddress() {
                copyOnWrite();
                ((TokenTransfer) this.instance).clearRecipientTokenAddress();
                return this;
            }

            public Builder setRecipientTokenAddressBytes(ByteString value) {
                copyOnWrite();
                ((TokenTransfer) this.instance).setRecipientTokenAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.TokenTransferOrBuilder
            public long getAmount() {
                return ((TokenTransfer) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((TokenTransfer) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((TokenTransfer) this.instance).clearAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.TokenTransferOrBuilder
            public int getDecimals() {
                return ((TokenTransfer) this.instance).getDecimals();
            }

            public Builder setDecimals(int value) {
                copyOnWrite();
                ((TokenTransfer) this.instance).setDecimals(value);
                return this;
            }

            public Builder clearDecimals() {
                copyOnWrite();
                ((TokenTransfer) this.instance).clearDecimals();
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.TokenTransferOrBuilder
            public String getMemo() {
                return ((TokenTransfer) this.instance).getMemo();
            }

            @Override // wallet.core.jni.proto.Solana.TokenTransferOrBuilder
            public ByteString getMemoBytes() {
                return ((TokenTransfer) this.instance).getMemoBytes();
            }

            public Builder setMemo(String value) {
                copyOnWrite();
                ((TokenTransfer) this.instance).setMemo(value);
                return this;
            }

            public Builder clearMemo() {
                copyOnWrite();
                ((TokenTransfer) this.instance).clearMemo();
                return this;
            }

            public Builder setMemoBytes(ByteString value) {
                copyOnWrite();
                ((TokenTransfer) this.instance).setMemoBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.TokenTransferOrBuilder
            public List<String> getReferencesList() {
                return Collections.unmodifiableList(((TokenTransfer) this.instance).getReferencesList());
            }

            @Override // wallet.core.jni.proto.Solana.TokenTransferOrBuilder
            public int getReferencesCount() {
                return ((TokenTransfer) this.instance).getReferencesCount();
            }

            @Override // wallet.core.jni.proto.Solana.TokenTransferOrBuilder
            public String getReferences(int index) {
                return ((TokenTransfer) this.instance).getReferences(index);
            }

            @Override // wallet.core.jni.proto.Solana.TokenTransferOrBuilder
            public ByteString getReferencesBytes(int index) {
                return ((TokenTransfer) this.instance).getReferencesBytes(index);
            }

            public Builder setReferences(int index, String value) {
                copyOnWrite();
                ((TokenTransfer) this.instance).setReferences(index, value);
                return this;
            }

            public Builder addReferences(String value) {
                copyOnWrite();
                ((TokenTransfer) this.instance).addReferences(value);
                return this;
            }

            public Builder addAllReferences(Iterable<String> values) {
                copyOnWrite();
                ((TokenTransfer) this.instance).addAllReferences(values);
                return this;
            }

            public Builder clearReferences() {
                copyOnWrite();
                ((TokenTransfer) this.instance).clearReferences();
                return this;
            }

            public Builder addReferencesBytes(ByteString value) {
                copyOnWrite();
                ((TokenTransfer) this.instance).addReferencesBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67401.f1814xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TokenTransfer();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0001\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004\u0003\u0005\u000b\u0006Ȉ\u0007Ț", new Object[]{"tokenMintAddress_", "senderTokenAddress_", "recipientTokenAddress_", "amount_", "decimals_", "memo_", "references_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TokenTransfer> parser = PARSER;
                    if (parser == null) {
                        synchronized (TokenTransfer.class) {
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
            TokenTransfer tokenTransfer = new TokenTransfer();
            DEFAULT_INSTANCE = tokenTransfer;
            GeneratedMessageLite.registerDefaultInstance(TokenTransfer.class, tokenTransfer);
        }

        public static TokenTransfer getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TokenTransfer> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class CreateAndTransferToken extends GeneratedMessageLite<CreateAndTransferToken, Builder> implements CreateAndTransferTokenOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 5;
        public static final int DECIMALS_FIELD_NUMBER = 6;
        private static final CreateAndTransferToken DEFAULT_INSTANCE;
        public static final int MEMO_FIELD_NUMBER = 7;
        private static volatile Parser<CreateAndTransferToken> PARSER = null;
        public static final int RECIPIENT_MAIN_ADDRESS_FIELD_NUMBER = 1;
        public static final int RECIPIENT_TOKEN_ADDRESS_FIELD_NUMBER = 3;
        public static final int REFERENCES_FIELD_NUMBER = 8;
        public static final int SENDER_TOKEN_ADDRESS_FIELD_NUMBER = 4;
        public static final int TOKEN_MINT_ADDRESS_FIELD_NUMBER = 2;
        private long amount_;
        private int decimals_;
        private String recipientMainAddress_ = "";
        private String tokenMintAddress_ = "";
        private String recipientTokenAddress_ = "";
        private String senderTokenAddress_ = "";
        private String memo_ = "";
        private Internal.ProtobufList<String> references_ = GeneratedMessageLite.emptyProtobufList();

        private CreateAndTransferToken() {
        }

        @Override // wallet.core.jni.proto.Solana.CreateAndTransferTokenOrBuilder
        public String getRecipientMainAddress() {
            return this.recipientMainAddress_;
        }

        @Override // wallet.core.jni.proto.Solana.CreateAndTransferTokenOrBuilder
        public ByteString getRecipientMainAddressBytes() {
            return ByteString.copyFromUtf8(this.recipientMainAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRecipientMainAddress(String value) {
            value.getClass();
            this.recipientMainAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearRecipientMainAddress() {
            this.recipientMainAddress_ = getDefaultInstance().getRecipientMainAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRecipientMainAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.recipientMainAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Solana.CreateAndTransferTokenOrBuilder
        public String getTokenMintAddress() {
            return this.tokenMintAddress_;
        }

        @Override // wallet.core.jni.proto.Solana.CreateAndTransferTokenOrBuilder
        public ByteString getTokenMintAddressBytes() {
            return ByteString.copyFromUtf8(this.tokenMintAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTokenMintAddress(String value) {
            value.getClass();
            this.tokenMintAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTokenMintAddress() {
            this.tokenMintAddress_ = getDefaultInstance().getTokenMintAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTokenMintAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.tokenMintAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Solana.CreateAndTransferTokenOrBuilder
        public String getRecipientTokenAddress() {
            return this.recipientTokenAddress_;
        }

        @Override // wallet.core.jni.proto.Solana.CreateAndTransferTokenOrBuilder
        public ByteString getRecipientTokenAddressBytes() {
            return ByteString.copyFromUtf8(this.recipientTokenAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRecipientTokenAddress(String value) {
            value.getClass();
            this.recipientTokenAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearRecipientTokenAddress() {
            this.recipientTokenAddress_ = getDefaultInstance().getRecipientTokenAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRecipientTokenAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.recipientTokenAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Solana.CreateAndTransferTokenOrBuilder
        public String getSenderTokenAddress() {
            return this.senderTokenAddress_;
        }

        @Override // wallet.core.jni.proto.Solana.CreateAndTransferTokenOrBuilder
        public ByteString getSenderTokenAddressBytes() {
            return ByteString.copyFromUtf8(this.senderTokenAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSenderTokenAddress(String value) {
            value.getClass();
            this.senderTokenAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSenderTokenAddress() {
            this.senderTokenAddress_ = getDefaultInstance().getSenderTokenAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSenderTokenAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.senderTokenAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Solana.CreateAndTransferTokenOrBuilder
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

        @Override // wallet.core.jni.proto.Solana.CreateAndTransferTokenOrBuilder
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

        @Override // wallet.core.jni.proto.Solana.CreateAndTransferTokenOrBuilder
        public String getMemo() {
            return this.memo_;
        }

        @Override // wallet.core.jni.proto.Solana.CreateAndTransferTokenOrBuilder
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

        @Override // wallet.core.jni.proto.Solana.CreateAndTransferTokenOrBuilder
        public List<String> getReferencesList() {
            return this.references_;
        }

        @Override // wallet.core.jni.proto.Solana.CreateAndTransferTokenOrBuilder
        public int getReferencesCount() {
            return this.references_.size();
        }

        @Override // wallet.core.jni.proto.Solana.CreateAndTransferTokenOrBuilder
        public String getReferences(int index) {
            return this.references_.get(index);
        }

        @Override // wallet.core.jni.proto.Solana.CreateAndTransferTokenOrBuilder
        public ByteString getReferencesBytes(int index) {
            return ByteString.copyFromUtf8(this.references_.get(index));
        }

        private void ensureReferencesIsMutable() {
            Internal.ProtobufList<String> protobufList = this.references_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.references_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setReferences(int index, String value) {
            value.getClass();
            ensureReferencesIsMutable();
            this.references_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addReferences(String value) {
            value.getClass();
            ensureReferencesIsMutable();
            this.references_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllReferences(Iterable<String> values) {
            ensureReferencesIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.references_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearReferences() {
            this.references_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addReferencesBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            ensureReferencesIsMutable();
            this.references_.add(value.toStringUtf8());
        }

        public static CreateAndTransferToken parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (CreateAndTransferToken) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CreateAndTransferToken parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CreateAndTransferToken) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CreateAndTransferToken parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (CreateAndTransferToken) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CreateAndTransferToken parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CreateAndTransferToken) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CreateAndTransferToken parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (CreateAndTransferToken) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static CreateAndTransferToken parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (CreateAndTransferToken) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static CreateAndTransferToken parseFrom(InputStream input) throws IOException {
            return (CreateAndTransferToken) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static CreateAndTransferToken parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CreateAndTransferToken) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static CreateAndTransferToken parseDelimitedFrom(InputStream input) throws IOException {
            return (CreateAndTransferToken) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static CreateAndTransferToken parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CreateAndTransferToken) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static CreateAndTransferToken parseFrom(CodedInputStream input) throws IOException {
            return (CreateAndTransferToken) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static CreateAndTransferToken parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (CreateAndTransferToken) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(CreateAndTransferToken prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<CreateAndTransferToken, Builder> implements CreateAndTransferTokenOrBuilder {
            /* synthetic */ Builder(C67401 c67401) {
                this();
            }

            private Builder() {
                super(CreateAndTransferToken.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Solana.CreateAndTransferTokenOrBuilder
            public String getRecipientMainAddress() {
                return ((CreateAndTransferToken) this.instance).getRecipientMainAddress();
            }

            @Override // wallet.core.jni.proto.Solana.CreateAndTransferTokenOrBuilder
            public ByteString getRecipientMainAddressBytes() {
                return ((CreateAndTransferToken) this.instance).getRecipientMainAddressBytes();
            }

            public Builder setRecipientMainAddress(String value) {
                copyOnWrite();
                ((CreateAndTransferToken) this.instance).setRecipientMainAddress(value);
                return this;
            }

            public Builder clearRecipientMainAddress() {
                copyOnWrite();
                ((CreateAndTransferToken) this.instance).clearRecipientMainAddress();
                return this;
            }

            public Builder setRecipientMainAddressBytes(ByteString value) {
                copyOnWrite();
                ((CreateAndTransferToken) this.instance).setRecipientMainAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.CreateAndTransferTokenOrBuilder
            public String getTokenMintAddress() {
                return ((CreateAndTransferToken) this.instance).getTokenMintAddress();
            }

            @Override // wallet.core.jni.proto.Solana.CreateAndTransferTokenOrBuilder
            public ByteString getTokenMintAddressBytes() {
                return ((CreateAndTransferToken) this.instance).getTokenMintAddressBytes();
            }

            public Builder setTokenMintAddress(String value) {
                copyOnWrite();
                ((CreateAndTransferToken) this.instance).setTokenMintAddress(value);
                return this;
            }

            public Builder clearTokenMintAddress() {
                copyOnWrite();
                ((CreateAndTransferToken) this.instance).clearTokenMintAddress();
                return this;
            }

            public Builder setTokenMintAddressBytes(ByteString value) {
                copyOnWrite();
                ((CreateAndTransferToken) this.instance).setTokenMintAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.CreateAndTransferTokenOrBuilder
            public String getRecipientTokenAddress() {
                return ((CreateAndTransferToken) this.instance).getRecipientTokenAddress();
            }

            @Override // wallet.core.jni.proto.Solana.CreateAndTransferTokenOrBuilder
            public ByteString getRecipientTokenAddressBytes() {
                return ((CreateAndTransferToken) this.instance).getRecipientTokenAddressBytes();
            }

            public Builder setRecipientTokenAddress(String value) {
                copyOnWrite();
                ((CreateAndTransferToken) this.instance).setRecipientTokenAddress(value);
                return this;
            }

            public Builder clearRecipientTokenAddress() {
                copyOnWrite();
                ((CreateAndTransferToken) this.instance).clearRecipientTokenAddress();
                return this;
            }

            public Builder setRecipientTokenAddressBytes(ByteString value) {
                copyOnWrite();
                ((CreateAndTransferToken) this.instance).setRecipientTokenAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.CreateAndTransferTokenOrBuilder
            public String getSenderTokenAddress() {
                return ((CreateAndTransferToken) this.instance).getSenderTokenAddress();
            }

            @Override // wallet.core.jni.proto.Solana.CreateAndTransferTokenOrBuilder
            public ByteString getSenderTokenAddressBytes() {
                return ((CreateAndTransferToken) this.instance).getSenderTokenAddressBytes();
            }

            public Builder setSenderTokenAddress(String value) {
                copyOnWrite();
                ((CreateAndTransferToken) this.instance).setSenderTokenAddress(value);
                return this;
            }

            public Builder clearSenderTokenAddress() {
                copyOnWrite();
                ((CreateAndTransferToken) this.instance).clearSenderTokenAddress();
                return this;
            }

            public Builder setSenderTokenAddressBytes(ByteString value) {
                copyOnWrite();
                ((CreateAndTransferToken) this.instance).setSenderTokenAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.CreateAndTransferTokenOrBuilder
            public long getAmount() {
                return ((CreateAndTransferToken) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((CreateAndTransferToken) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((CreateAndTransferToken) this.instance).clearAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.CreateAndTransferTokenOrBuilder
            public int getDecimals() {
                return ((CreateAndTransferToken) this.instance).getDecimals();
            }

            public Builder setDecimals(int value) {
                copyOnWrite();
                ((CreateAndTransferToken) this.instance).setDecimals(value);
                return this;
            }

            public Builder clearDecimals() {
                copyOnWrite();
                ((CreateAndTransferToken) this.instance).clearDecimals();
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.CreateAndTransferTokenOrBuilder
            public String getMemo() {
                return ((CreateAndTransferToken) this.instance).getMemo();
            }

            @Override // wallet.core.jni.proto.Solana.CreateAndTransferTokenOrBuilder
            public ByteString getMemoBytes() {
                return ((CreateAndTransferToken) this.instance).getMemoBytes();
            }

            public Builder setMemo(String value) {
                copyOnWrite();
                ((CreateAndTransferToken) this.instance).setMemo(value);
                return this;
            }

            public Builder clearMemo() {
                copyOnWrite();
                ((CreateAndTransferToken) this.instance).clearMemo();
                return this;
            }

            public Builder setMemoBytes(ByteString value) {
                copyOnWrite();
                ((CreateAndTransferToken) this.instance).setMemoBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.CreateAndTransferTokenOrBuilder
            public List<String> getReferencesList() {
                return Collections.unmodifiableList(((CreateAndTransferToken) this.instance).getReferencesList());
            }

            @Override // wallet.core.jni.proto.Solana.CreateAndTransferTokenOrBuilder
            public int getReferencesCount() {
                return ((CreateAndTransferToken) this.instance).getReferencesCount();
            }

            @Override // wallet.core.jni.proto.Solana.CreateAndTransferTokenOrBuilder
            public String getReferences(int index) {
                return ((CreateAndTransferToken) this.instance).getReferences(index);
            }

            @Override // wallet.core.jni.proto.Solana.CreateAndTransferTokenOrBuilder
            public ByteString getReferencesBytes(int index) {
                return ((CreateAndTransferToken) this.instance).getReferencesBytes(index);
            }

            public Builder setReferences(int index, String value) {
                copyOnWrite();
                ((CreateAndTransferToken) this.instance).setReferences(index, value);
                return this;
            }

            public Builder addReferences(String value) {
                copyOnWrite();
                ((CreateAndTransferToken) this.instance).addReferences(value);
                return this;
            }

            public Builder addAllReferences(Iterable<String> values) {
                copyOnWrite();
                ((CreateAndTransferToken) this.instance).addAllReferences(values);
                return this;
            }

            public Builder clearReferences() {
                copyOnWrite();
                ((CreateAndTransferToken) this.instance).clearReferences();
                return this;
            }

            public Builder addReferencesBytes(ByteString value) {
                copyOnWrite();
                ((CreateAndTransferToken) this.instance).addReferencesBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67401.f1814xa1df5c61[method.ordinal()]) {
                case 1:
                    return new CreateAndTransferToken();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\b\u0000\u0000\u0001\b\b\u0000\u0001\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004Ȉ\u0005\u0003\u0006\u000b\u0007Ȉ\bȚ", new Object[]{"recipientMainAddress_", "tokenMintAddress_", "recipientTokenAddress_", "senderTokenAddress_", "amount_", "decimals_", "memo_", "references_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<CreateAndTransferToken> parser = PARSER;
                    if (parser == null) {
                        synchronized (CreateAndTransferToken.class) {
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
            CreateAndTransferToken createAndTransferToken = new CreateAndTransferToken();
            DEFAULT_INSTANCE = createAndTransferToken;
            GeneratedMessageLite.registerDefaultInstance(CreateAndTransferToken.class, createAndTransferToken);
        }

        public static CreateAndTransferToken getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<CreateAndTransferToken> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        public static final int CREATE_AND_TRANSFER_TOKEN_TRANSACTION_FIELD_NUMBER = 12;
        public static final int CREATE_TOKEN_ACCOUNT_TRANSACTION_FIELD_NUMBER = 10;
        public static final int DEACTIVATE_ALL_STAKE_TRANSACTION_FIELD_NUMBER = 7;
        public static final int DEACTIVATE_STAKE_TRANSACTION_FIELD_NUMBER = 6;
        private static final SigningInput DEFAULT_INSTANCE;
        public static final int DELEGATE_STAKE_TRANSACTION_FIELD_NUMBER = 5;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PRIVATE_KEY_FIELD_NUMBER = 1;
        public static final int RECENT_BLOCKHASH_FIELD_NUMBER = 2;
        public static final int TOKEN_TRANSFER_TRANSACTION_FIELD_NUMBER = 11;
        public static final int TRANSFER_TRANSACTION_FIELD_NUMBER = 4;
        public static final int V0_MSG_FIELD_NUMBER = 3;
        public static final int WITHDRAW_ALL_TRANSACTION_FIELD_NUMBER = 9;
        public static final int WITHDRAW_TRANSACTION_FIELD_NUMBER = 8;
        private Object transactionType_;
        private boolean v0Msg_;
        private int transactionTypeCase_ = 0;
        private ByteString privateKey_ = ByteString.EMPTY;
        private String recentBlockhash_ = "";

        private SigningInput() {
        }

        /* loaded from: classes6.dex */
        public enum TransactionTypeCase {
            TRANSFER_TRANSACTION(4),
            DELEGATE_STAKE_TRANSACTION(5),
            DEACTIVATE_STAKE_TRANSACTION(6),
            DEACTIVATE_ALL_STAKE_TRANSACTION(7),
            WITHDRAW_TRANSACTION(8),
            WITHDRAW_ALL_TRANSACTION(9),
            CREATE_TOKEN_ACCOUNT_TRANSACTION(10),
            TOKEN_TRANSFER_TRANSACTION(11),
            CREATE_AND_TRANSFER_TOKEN_TRANSACTION(12),
            TRANSACTIONTYPE_NOT_SET(0);
            
            private final int value;

            TransactionTypeCase(int value) {
                this.value = value;
            }

            @Deprecated
            public static TransactionTypeCase valueOf(int value) {
                return forNumber(value);
            }

            public static TransactionTypeCase forNumber(int value) {
                if (value != 0) {
                    switch (value) {
                        case 4:
                            return TRANSFER_TRANSACTION;
                        case 5:
                            return DELEGATE_STAKE_TRANSACTION;
                        case 6:
                            return DEACTIVATE_STAKE_TRANSACTION;
                        case 7:
                            return DEACTIVATE_ALL_STAKE_TRANSACTION;
                        case 8:
                            return WITHDRAW_TRANSACTION;
                        case 9:
                            return WITHDRAW_ALL_TRANSACTION;
                        case 10:
                            return CREATE_TOKEN_ACCOUNT_TRANSACTION;
                        case 11:
                            return TOKEN_TRANSFER_TRANSACTION;
                        case 12:
                            return CREATE_AND_TRANSFER_TOKEN_TRANSACTION;
                        default:
                            return null;
                    }
                }
                return TRANSACTIONTYPE_NOT_SET;
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
        public TransactionTypeCase getTransactionTypeCase() {
            return TransactionTypeCase.forNumber(this.transactionTypeCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransactionType() {
            this.transactionTypeCase_ = 0;
            this.transactionType_ = null;
        }

        @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
        public String getRecentBlockhash() {
            return this.recentBlockhash_;
        }

        @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
        public ByteString getRecentBlockhashBytes() {
            return ByteString.copyFromUtf8(this.recentBlockhash_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRecentBlockhash(String value) {
            value.getClass();
            this.recentBlockhash_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearRecentBlockhash() {
            this.recentBlockhash_ = getDefaultInstance().getRecentBlockhash();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRecentBlockhashBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.recentBlockhash_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
        public boolean getV0Msg() {
            return this.v0Msg_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setV0Msg(boolean value) {
            this.v0Msg_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearV0Msg() {
            this.v0Msg_ = false;
        }

        @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
        public boolean hasTransferTransaction() {
            return this.transactionTypeCase_ == 4;
        }

        @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
        public Transfer getTransferTransaction() {
            if (this.transactionTypeCase_ == 4) {
                return (Transfer) this.transactionType_;
            }
            return Transfer.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransferTransaction(Transfer value) {
            value.getClass();
            this.transactionType_ = value;
            this.transactionTypeCase_ = 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTransferTransaction(Transfer value) {
            value.getClass();
            if (this.transactionTypeCase_ == 4 && this.transactionType_ != Transfer.getDefaultInstance()) {
                this.transactionType_ = Transfer.newBuilder((Transfer) this.transactionType_).mergeFrom((Transfer.Builder) value).buildPartial();
            } else {
                this.transactionType_ = value;
            }
            this.transactionTypeCase_ = 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransferTransaction() {
            if (this.transactionTypeCase_ == 4) {
                this.transactionTypeCase_ = 0;
                this.transactionType_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
        public boolean hasDelegateStakeTransaction() {
            return this.transactionTypeCase_ == 5;
        }

        @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
        public DelegateStake getDelegateStakeTransaction() {
            if (this.transactionTypeCase_ == 5) {
                return (DelegateStake) this.transactionType_;
            }
            return DelegateStake.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDelegateStakeTransaction(DelegateStake value) {
            value.getClass();
            this.transactionType_ = value;
            this.transactionTypeCase_ = 5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeDelegateStakeTransaction(DelegateStake value) {
            value.getClass();
            if (this.transactionTypeCase_ == 5 && this.transactionType_ != DelegateStake.getDefaultInstance()) {
                this.transactionType_ = DelegateStake.newBuilder((DelegateStake) this.transactionType_).mergeFrom((DelegateStake.Builder) value).buildPartial();
            } else {
                this.transactionType_ = value;
            }
            this.transactionTypeCase_ = 5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDelegateStakeTransaction() {
            if (this.transactionTypeCase_ == 5) {
                this.transactionTypeCase_ = 0;
                this.transactionType_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
        public boolean hasDeactivateStakeTransaction() {
            return this.transactionTypeCase_ == 6;
        }

        @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
        public DeactivateStake getDeactivateStakeTransaction() {
            if (this.transactionTypeCase_ == 6) {
                return (DeactivateStake) this.transactionType_;
            }
            return DeactivateStake.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDeactivateStakeTransaction(DeactivateStake value) {
            value.getClass();
            this.transactionType_ = value;
            this.transactionTypeCase_ = 6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeDeactivateStakeTransaction(DeactivateStake value) {
            value.getClass();
            if (this.transactionTypeCase_ == 6 && this.transactionType_ != DeactivateStake.getDefaultInstance()) {
                this.transactionType_ = DeactivateStake.newBuilder((DeactivateStake) this.transactionType_).mergeFrom((DeactivateStake.Builder) value).buildPartial();
            } else {
                this.transactionType_ = value;
            }
            this.transactionTypeCase_ = 6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDeactivateStakeTransaction() {
            if (this.transactionTypeCase_ == 6) {
                this.transactionTypeCase_ = 0;
                this.transactionType_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
        public boolean hasDeactivateAllStakeTransaction() {
            return this.transactionTypeCase_ == 7;
        }

        @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
        public DeactivateAllStake getDeactivateAllStakeTransaction() {
            if (this.transactionTypeCase_ == 7) {
                return (DeactivateAllStake) this.transactionType_;
            }
            return DeactivateAllStake.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDeactivateAllStakeTransaction(DeactivateAllStake value) {
            value.getClass();
            this.transactionType_ = value;
            this.transactionTypeCase_ = 7;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeDeactivateAllStakeTransaction(DeactivateAllStake value) {
            value.getClass();
            if (this.transactionTypeCase_ == 7 && this.transactionType_ != DeactivateAllStake.getDefaultInstance()) {
                this.transactionType_ = DeactivateAllStake.newBuilder((DeactivateAllStake) this.transactionType_).mergeFrom((DeactivateAllStake.Builder) value).buildPartial();
            } else {
                this.transactionType_ = value;
            }
            this.transactionTypeCase_ = 7;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDeactivateAllStakeTransaction() {
            if (this.transactionTypeCase_ == 7) {
                this.transactionTypeCase_ = 0;
                this.transactionType_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
        public boolean hasWithdrawTransaction() {
            return this.transactionTypeCase_ == 8;
        }

        @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
        public WithdrawStake getWithdrawTransaction() {
            if (this.transactionTypeCase_ == 8) {
                return (WithdrawStake) this.transactionType_;
            }
            return WithdrawStake.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setWithdrawTransaction(WithdrawStake value) {
            value.getClass();
            this.transactionType_ = value;
            this.transactionTypeCase_ = 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeWithdrawTransaction(WithdrawStake value) {
            value.getClass();
            if (this.transactionTypeCase_ == 8 && this.transactionType_ != WithdrawStake.getDefaultInstance()) {
                this.transactionType_ = WithdrawStake.newBuilder((WithdrawStake) this.transactionType_).mergeFrom((WithdrawStake.Builder) value).buildPartial();
            } else {
                this.transactionType_ = value;
            }
            this.transactionTypeCase_ = 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearWithdrawTransaction() {
            if (this.transactionTypeCase_ == 8) {
                this.transactionTypeCase_ = 0;
                this.transactionType_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
        public boolean hasWithdrawAllTransaction() {
            return this.transactionTypeCase_ == 9;
        }

        @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
        public WithdrawAllStake getWithdrawAllTransaction() {
            if (this.transactionTypeCase_ == 9) {
                return (WithdrawAllStake) this.transactionType_;
            }
            return WithdrawAllStake.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setWithdrawAllTransaction(WithdrawAllStake value) {
            value.getClass();
            this.transactionType_ = value;
            this.transactionTypeCase_ = 9;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeWithdrawAllTransaction(WithdrawAllStake value) {
            value.getClass();
            if (this.transactionTypeCase_ == 9 && this.transactionType_ != WithdrawAllStake.getDefaultInstance()) {
                this.transactionType_ = WithdrawAllStake.newBuilder((WithdrawAllStake) this.transactionType_).mergeFrom((WithdrawAllStake.Builder) value).buildPartial();
            } else {
                this.transactionType_ = value;
            }
            this.transactionTypeCase_ = 9;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearWithdrawAllTransaction() {
            if (this.transactionTypeCase_ == 9) {
                this.transactionTypeCase_ = 0;
                this.transactionType_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
        public boolean hasCreateTokenAccountTransaction() {
            return this.transactionTypeCase_ == 10;
        }

        @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
        public CreateTokenAccount getCreateTokenAccountTransaction() {
            if (this.transactionTypeCase_ == 10) {
                return (CreateTokenAccount) this.transactionType_;
            }
            return CreateTokenAccount.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCreateTokenAccountTransaction(CreateTokenAccount value) {
            value.getClass();
            this.transactionType_ = value;
            this.transactionTypeCase_ = 10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeCreateTokenAccountTransaction(CreateTokenAccount value) {
            value.getClass();
            if (this.transactionTypeCase_ == 10 && this.transactionType_ != CreateTokenAccount.getDefaultInstance()) {
                this.transactionType_ = CreateTokenAccount.newBuilder((CreateTokenAccount) this.transactionType_).mergeFrom((CreateTokenAccount.Builder) value).buildPartial();
            } else {
                this.transactionType_ = value;
            }
            this.transactionTypeCase_ = 10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCreateTokenAccountTransaction() {
            if (this.transactionTypeCase_ == 10) {
                this.transactionTypeCase_ = 0;
                this.transactionType_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
        public boolean hasTokenTransferTransaction() {
            return this.transactionTypeCase_ == 11;
        }

        @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
        public TokenTransfer getTokenTransferTransaction() {
            if (this.transactionTypeCase_ == 11) {
                return (TokenTransfer) this.transactionType_;
            }
            return TokenTransfer.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTokenTransferTransaction(TokenTransfer value) {
            value.getClass();
            this.transactionType_ = value;
            this.transactionTypeCase_ = 11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTokenTransferTransaction(TokenTransfer value) {
            value.getClass();
            if (this.transactionTypeCase_ == 11 && this.transactionType_ != TokenTransfer.getDefaultInstance()) {
                this.transactionType_ = TokenTransfer.newBuilder((TokenTransfer) this.transactionType_).mergeFrom((TokenTransfer.Builder) value).buildPartial();
            } else {
                this.transactionType_ = value;
            }
            this.transactionTypeCase_ = 11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTokenTransferTransaction() {
            if (this.transactionTypeCase_ == 11) {
                this.transactionTypeCase_ = 0;
                this.transactionType_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
        public boolean hasCreateAndTransferTokenTransaction() {
            return this.transactionTypeCase_ == 12;
        }

        @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
        public CreateAndTransferToken getCreateAndTransferTokenTransaction() {
            if (this.transactionTypeCase_ == 12) {
                return (CreateAndTransferToken) this.transactionType_;
            }
            return CreateAndTransferToken.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCreateAndTransferTokenTransaction(CreateAndTransferToken value) {
            value.getClass();
            this.transactionType_ = value;
            this.transactionTypeCase_ = 12;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeCreateAndTransferTokenTransaction(CreateAndTransferToken value) {
            value.getClass();
            if (this.transactionTypeCase_ == 12 && this.transactionType_ != CreateAndTransferToken.getDefaultInstance()) {
                this.transactionType_ = CreateAndTransferToken.newBuilder((CreateAndTransferToken) this.transactionType_).mergeFrom((CreateAndTransferToken.Builder) value).buildPartial();
            } else {
                this.transactionType_ = value;
            }
            this.transactionTypeCase_ = 12;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCreateAndTransferTokenTransaction() {
            if (this.transactionTypeCase_ == 12) {
                this.transactionTypeCase_ = 0;
                this.transactionType_ = null;
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
            /* synthetic */ Builder(C67401 c67401) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
            public TransactionTypeCase getTransactionTypeCase() {
                return ((SigningInput) this.instance).getTransactionTypeCase();
            }

            public Builder clearTransactionType() {
                copyOnWrite();
                ((SigningInput) this.instance).clearTransactionType();
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
            public String getRecentBlockhash() {
                return ((SigningInput) this.instance).getRecentBlockhash();
            }

            @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
            public ByteString getRecentBlockhashBytes() {
                return ((SigningInput) this.instance).getRecentBlockhashBytes();
            }

            public Builder setRecentBlockhash(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setRecentBlockhash(value);
                return this;
            }

            public Builder clearRecentBlockhash() {
                copyOnWrite();
                ((SigningInput) this.instance).clearRecentBlockhash();
                return this;
            }

            public Builder setRecentBlockhashBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setRecentBlockhashBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
            public boolean getV0Msg() {
                return ((SigningInput) this.instance).getV0Msg();
            }

            public Builder setV0Msg(boolean value) {
                copyOnWrite();
                ((SigningInput) this.instance).setV0Msg(value);
                return this;
            }

            public Builder clearV0Msg() {
                copyOnWrite();
                ((SigningInput) this.instance).clearV0Msg();
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
            public boolean hasTransferTransaction() {
                return ((SigningInput) this.instance).hasTransferTransaction();
            }

            @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
            public Transfer getTransferTransaction() {
                return ((SigningInput) this.instance).getTransferTransaction();
            }

            public Builder setTransferTransaction(Transfer value) {
                copyOnWrite();
                ((SigningInput) this.instance).setTransferTransaction(value);
                return this;
            }

            public Builder setTransferTransaction(Transfer.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setTransferTransaction(builderForValue.build());
                return this;
            }

            public Builder mergeTransferTransaction(Transfer value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeTransferTransaction(value);
                return this;
            }

            public Builder clearTransferTransaction() {
                copyOnWrite();
                ((SigningInput) this.instance).clearTransferTransaction();
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
            public boolean hasDelegateStakeTransaction() {
                return ((SigningInput) this.instance).hasDelegateStakeTransaction();
            }

            @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
            public DelegateStake getDelegateStakeTransaction() {
                return ((SigningInput) this.instance).getDelegateStakeTransaction();
            }

            public Builder setDelegateStakeTransaction(DelegateStake value) {
                copyOnWrite();
                ((SigningInput) this.instance).setDelegateStakeTransaction(value);
                return this;
            }

            public Builder setDelegateStakeTransaction(DelegateStake.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setDelegateStakeTransaction(builderForValue.build());
                return this;
            }

            public Builder mergeDelegateStakeTransaction(DelegateStake value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeDelegateStakeTransaction(value);
                return this;
            }

            public Builder clearDelegateStakeTransaction() {
                copyOnWrite();
                ((SigningInput) this.instance).clearDelegateStakeTransaction();
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
            public boolean hasDeactivateStakeTransaction() {
                return ((SigningInput) this.instance).hasDeactivateStakeTransaction();
            }

            @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
            public DeactivateStake getDeactivateStakeTransaction() {
                return ((SigningInput) this.instance).getDeactivateStakeTransaction();
            }

            public Builder setDeactivateStakeTransaction(DeactivateStake value) {
                copyOnWrite();
                ((SigningInput) this.instance).setDeactivateStakeTransaction(value);
                return this;
            }

            public Builder setDeactivateStakeTransaction(DeactivateStake.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setDeactivateStakeTransaction(builderForValue.build());
                return this;
            }

            public Builder mergeDeactivateStakeTransaction(DeactivateStake value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeDeactivateStakeTransaction(value);
                return this;
            }

            public Builder clearDeactivateStakeTransaction() {
                copyOnWrite();
                ((SigningInput) this.instance).clearDeactivateStakeTransaction();
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
            public boolean hasDeactivateAllStakeTransaction() {
                return ((SigningInput) this.instance).hasDeactivateAllStakeTransaction();
            }

            @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
            public DeactivateAllStake getDeactivateAllStakeTransaction() {
                return ((SigningInput) this.instance).getDeactivateAllStakeTransaction();
            }

            public Builder setDeactivateAllStakeTransaction(DeactivateAllStake value) {
                copyOnWrite();
                ((SigningInput) this.instance).setDeactivateAllStakeTransaction(value);
                return this;
            }

            public Builder setDeactivateAllStakeTransaction(DeactivateAllStake.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setDeactivateAllStakeTransaction(builderForValue.build());
                return this;
            }

            public Builder mergeDeactivateAllStakeTransaction(DeactivateAllStake value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeDeactivateAllStakeTransaction(value);
                return this;
            }

            public Builder clearDeactivateAllStakeTransaction() {
                copyOnWrite();
                ((SigningInput) this.instance).clearDeactivateAllStakeTransaction();
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
            public boolean hasWithdrawTransaction() {
                return ((SigningInput) this.instance).hasWithdrawTransaction();
            }

            @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
            public WithdrawStake getWithdrawTransaction() {
                return ((SigningInput) this.instance).getWithdrawTransaction();
            }

            public Builder setWithdrawTransaction(WithdrawStake value) {
                copyOnWrite();
                ((SigningInput) this.instance).setWithdrawTransaction(value);
                return this;
            }

            public Builder setWithdrawTransaction(WithdrawStake.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setWithdrawTransaction(builderForValue.build());
                return this;
            }

            public Builder mergeWithdrawTransaction(WithdrawStake value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeWithdrawTransaction(value);
                return this;
            }

            public Builder clearWithdrawTransaction() {
                copyOnWrite();
                ((SigningInput) this.instance).clearWithdrawTransaction();
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
            public boolean hasWithdrawAllTransaction() {
                return ((SigningInput) this.instance).hasWithdrawAllTransaction();
            }

            @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
            public WithdrawAllStake getWithdrawAllTransaction() {
                return ((SigningInput) this.instance).getWithdrawAllTransaction();
            }

            public Builder setWithdrawAllTransaction(WithdrawAllStake value) {
                copyOnWrite();
                ((SigningInput) this.instance).setWithdrawAllTransaction(value);
                return this;
            }

            public Builder setWithdrawAllTransaction(WithdrawAllStake.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setWithdrawAllTransaction(builderForValue.build());
                return this;
            }

            public Builder mergeWithdrawAllTransaction(WithdrawAllStake value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeWithdrawAllTransaction(value);
                return this;
            }

            public Builder clearWithdrawAllTransaction() {
                copyOnWrite();
                ((SigningInput) this.instance).clearWithdrawAllTransaction();
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
            public boolean hasCreateTokenAccountTransaction() {
                return ((SigningInput) this.instance).hasCreateTokenAccountTransaction();
            }

            @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
            public CreateTokenAccount getCreateTokenAccountTransaction() {
                return ((SigningInput) this.instance).getCreateTokenAccountTransaction();
            }

            public Builder setCreateTokenAccountTransaction(CreateTokenAccount value) {
                copyOnWrite();
                ((SigningInput) this.instance).setCreateTokenAccountTransaction(value);
                return this;
            }

            public Builder setCreateTokenAccountTransaction(CreateTokenAccount.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setCreateTokenAccountTransaction(builderForValue.build());
                return this;
            }

            public Builder mergeCreateTokenAccountTransaction(CreateTokenAccount value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeCreateTokenAccountTransaction(value);
                return this;
            }

            public Builder clearCreateTokenAccountTransaction() {
                copyOnWrite();
                ((SigningInput) this.instance).clearCreateTokenAccountTransaction();
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
            public boolean hasTokenTransferTransaction() {
                return ((SigningInput) this.instance).hasTokenTransferTransaction();
            }

            @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
            public TokenTransfer getTokenTransferTransaction() {
                return ((SigningInput) this.instance).getTokenTransferTransaction();
            }

            public Builder setTokenTransferTransaction(TokenTransfer value) {
                copyOnWrite();
                ((SigningInput) this.instance).setTokenTransferTransaction(value);
                return this;
            }

            public Builder setTokenTransferTransaction(TokenTransfer.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setTokenTransferTransaction(builderForValue.build());
                return this;
            }

            public Builder mergeTokenTransferTransaction(TokenTransfer value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeTokenTransferTransaction(value);
                return this;
            }

            public Builder clearTokenTransferTransaction() {
                copyOnWrite();
                ((SigningInput) this.instance).clearTokenTransferTransaction();
                return this;
            }

            @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
            public boolean hasCreateAndTransferTokenTransaction() {
                return ((SigningInput) this.instance).hasCreateAndTransferTokenTransaction();
            }

            @Override // wallet.core.jni.proto.Solana.SigningInputOrBuilder
            public CreateAndTransferToken getCreateAndTransferTokenTransaction() {
                return ((SigningInput) this.instance).getCreateAndTransferTokenTransaction();
            }

            public Builder setCreateAndTransferTokenTransaction(CreateAndTransferToken value) {
                copyOnWrite();
                ((SigningInput) this.instance).setCreateAndTransferTokenTransaction(value);
                return this;
            }

            public Builder setCreateAndTransferTokenTransaction(CreateAndTransferToken.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setCreateAndTransferTokenTransaction(builderForValue.build());
                return this;
            }

            public Builder mergeCreateAndTransferTokenTransaction(CreateAndTransferToken value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeCreateAndTransferTokenTransaction(value);
                return this;
            }

            public Builder clearCreateAndTransferTokenTransaction() {
                copyOnWrite();
                ((SigningInput) this.instance).clearCreateAndTransferTokenTransaction();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67401.f1814xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\f\u0001\u0000\u0001\f\f\u0000\u0000\u0000\u0001\n\u0002Ȉ\u0003\u0007\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0007<\u0000\b<\u0000\t<\u0000\n<\u0000\u000b<\u0000\f<\u0000", new Object[]{"transactionType_", "transactionTypeCase_", "privateKey_", "recentBlockhash_", "v0Msg_", Transfer.class, DelegateStake.class, DeactivateStake.class, DeactivateAllStake.class, WithdrawStake.class, WithdrawAllStake.class, CreateTokenAccount.class, TokenTransfer.class, CreateAndTransferToken.class});
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
        public static final int UNSIGNED_TX_FIELD_NUMBER = 2;
        private String encoded_ = "";
        private String unsignedTx_ = "";

        private SigningOutput() {
        }

        @Override // wallet.core.jni.proto.Solana.SigningOutputOrBuilder
        public String getEncoded() {
            return this.encoded_;
        }

        @Override // wallet.core.jni.proto.Solana.SigningOutputOrBuilder
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

        @Override // wallet.core.jni.proto.Solana.SigningOutputOrBuilder
        public String getUnsignedTx() {
            return this.unsignedTx_;
        }

        @Override // wallet.core.jni.proto.Solana.SigningOutputOrBuilder
        public ByteString getUnsignedTxBytes() {
            return ByteString.copyFromUtf8(this.unsignedTx_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setUnsignedTx(String value) {
            value.getClass();
            this.unsignedTx_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearUnsignedTx() {
            this.unsignedTx_ = getDefaultInstance().getUnsignedTx();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setUnsignedTxBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.unsignedTx_ = value.toStringUtf8();
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
            /* synthetic */ Builder(C67401 c67401) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Solana.SigningOutputOrBuilder
            public String getEncoded() {
                return ((SigningOutput) this.instance).getEncoded();
            }

            @Override // wallet.core.jni.proto.Solana.SigningOutputOrBuilder
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

            @Override // wallet.core.jni.proto.Solana.SigningOutputOrBuilder
            public String getUnsignedTx() {
                return ((SigningOutput) this.instance).getUnsignedTx();
            }

            @Override // wallet.core.jni.proto.Solana.SigningOutputOrBuilder
            public ByteString getUnsignedTxBytes() {
                return ((SigningOutput) this.instance).getUnsignedTxBytes();
            }

            public Builder setUnsignedTx(String value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setUnsignedTx(value);
                return this;
            }

            public Builder clearUnsignedTx() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearUnsignedTx();
                return this;
            }

            public Builder setUnsignedTxBytes(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setUnsignedTxBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67401.f1814xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ", new Object[]{"encoded_", "unsignedTx_"});
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
