package wallet.core.jni.proto;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MapEntryLite;
import com.google.protobuf.MapFieldLite;
import com.google.protobuf.MessageLite;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.WireFormat;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import wallet.core.jni.proto.Common;
/* loaded from: classes6.dex */
public final class Bitcoin {

    /* loaded from: classes6.dex */
    public interface HashPublicKeyOrBuilder extends MessageLiteOrBuilder {
        ByteString getDataHash();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getPublicKeyHash();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface OutPointOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getHash();

        int getIndex();

        int getSequence();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface PreSigningOutputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        Common.SigningError getError();

        String getErrorMessage();

        ByteString getErrorMessageBytes();

        int getErrorValue();

        HashPublicKey getHashPublicKeys(int index);

        int getHashPublicKeysCount();

        List<HashPublicKey> getHashPublicKeysList();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        boolean containsScripts(String key);

        long getAmount();

        long getByteFee();

        String getChangeAddress();

        ByteString getChangeAddressBytes();

        int getCoinType();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        int getHashType();

        int getLockTime();

        ByteString getOutputOpReturn();

        TransactionPlan getPlan();

        ByteString getPrivateKey(int index);

        int getPrivateKeyCount();

        List<ByteString> getPrivateKeyList();

        @Deprecated
        Map<String, ByteString> getScripts();

        int getScriptsCount();

        Map<String, ByteString> getScriptsMap();

        ByteString getScriptsOrDefault(String key, ByteString defaultValue);

        ByteString getScriptsOrThrow(String key);

        String getToAddress();

        ByteString getToAddressBytes();

        boolean getUseMaxAmount();

        UnspentTransaction getUtxo(int index);

        int getUtxoCount();

        List<UnspentTransaction> getUtxoList();

        boolean hasPlan();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SigningOutputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getEncoded();

        Common.SigningError getError();

        String getErrorMessage();

        ByteString getErrorMessageBytes();

        int getErrorValue();

        Transaction getTransaction();

        String getTransactionId();

        ByteString getTransactionIdBytes();

        boolean hasTransaction();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TransactionInputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        OutPoint getPreviousOutput();

        ByteString getScript();

        int getSequence();

        boolean hasPreviousOutput();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TransactionOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        TransactionInput getInputs(int index);

        int getInputsCount();

        List<TransactionInput> getInputsList();

        int getLockTime();

        TransactionOutput getOutputs(int index);

        int getOutputsCount();

        List<TransactionOutput> getOutputsList();

        int getVersion();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TransactionOutputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getScript();

        long getValue();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TransactionPlanOrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        long getAvailableAmount();

        ByteString getBranchId();

        long getChange();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        Common.SigningError getError();

        int getErrorValue();

        long getFee();

        ByteString getOutputOpReturn();

        UnspentTransaction getUtxos(int index);

        int getUtxosCount();

        List<UnspentTransaction> getUtxosList();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface UnspentTransactionOrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        OutPoint getOutPoint();

        ByteString getScript();

        boolean hasOutPoint();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private Bitcoin() {
    }

    /* loaded from: classes6.dex */
    public static final class Transaction extends GeneratedMessageLite<Transaction, Builder> implements TransactionOrBuilder {
        private static final Transaction DEFAULT_INSTANCE;
        public static final int INPUTS_FIELD_NUMBER = 3;
        public static final int LOCKTIME_FIELD_NUMBER = 2;
        public static final int OUTPUTS_FIELD_NUMBER = 4;
        private static volatile Parser<Transaction> PARSER = null;
        public static final int VERSION_FIELD_NUMBER = 1;
        private int lockTime_;
        private int version_;
        private Internal.ProtobufList<TransactionInput> inputs_ = GeneratedMessageLite.emptyProtobufList();
        private Internal.ProtobufList<TransactionOutput> outputs_ = GeneratedMessageLite.emptyProtobufList();

        private Transaction() {
        }

        @Override // wallet.core.jni.proto.Bitcoin.TransactionOrBuilder
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

        @Override // wallet.core.jni.proto.Bitcoin.TransactionOrBuilder
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

        @Override // wallet.core.jni.proto.Bitcoin.TransactionOrBuilder
        public List<TransactionInput> getInputsList() {
            return this.inputs_;
        }

        public List<? extends TransactionInputOrBuilder> getInputsOrBuilderList() {
            return this.inputs_;
        }

        @Override // wallet.core.jni.proto.Bitcoin.TransactionOrBuilder
        public int getInputsCount() {
            return this.inputs_.size();
        }

        @Override // wallet.core.jni.proto.Bitcoin.TransactionOrBuilder
        public TransactionInput getInputs(int index) {
            return this.inputs_.get(index);
        }

        public TransactionInputOrBuilder getInputsOrBuilder(int index) {
            return this.inputs_.get(index);
        }

        private void ensureInputsIsMutable() {
            Internal.ProtobufList<TransactionInput> protobufList = this.inputs_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.inputs_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setInputs(int index, TransactionInput value) {
            value.getClass();
            ensureInputsIsMutable();
            this.inputs_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addInputs(TransactionInput value) {
            value.getClass();
            ensureInputsIsMutable();
            this.inputs_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addInputs(int index, TransactionInput value) {
            value.getClass();
            ensureInputsIsMutable();
            this.inputs_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllInputs(Iterable<? extends TransactionInput> values) {
            ensureInputsIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.inputs_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearInputs() {
            this.inputs_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeInputs(int index) {
            ensureInputsIsMutable();
            this.inputs_.remove(index);
        }

        @Override // wallet.core.jni.proto.Bitcoin.TransactionOrBuilder
        public List<TransactionOutput> getOutputsList() {
            return this.outputs_;
        }

        public List<? extends TransactionOutputOrBuilder> getOutputsOrBuilderList() {
            return this.outputs_;
        }

        @Override // wallet.core.jni.proto.Bitcoin.TransactionOrBuilder
        public int getOutputsCount() {
            return this.outputs_.size();
        }

        @Override // wallet.core.jni.proto.Bitcoin.TransactionOrBuilder
        public TransactionOutput getOutputs(int index) {
            return this.outputs_.get(index);
        }

        public TransactionOutputOrBuilder getOutputsOrBuilder(int index) {
            return this.outputs_.get(index);
        }

        private void ensureOutputsIsMutable() {
            Internal.ProtobufList<TransactionOutput> protobufList = this.outputs_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.outputs_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOutputs(int index, TransactionOutput value) {
            value.getClass();
            ensureOutputsIsMutable();
            this.outputs_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addOutputs(TransactionOutput value) {
            value.getClass();
            ensureOutputsIsMutable();
            this.outputs_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addOutputs(int index, TransactionOutput value) {
            value.getClass();
            ensureOutputsIsMutable();
            this.outputs_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllOutputs(Iterable<? extends TransactionOutput> values) {
            ensureOutputsIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.outputs_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOutputs() {
            this.outputs_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeOutputs(int index) {
            ensureOutputsIsMutable();
            this.outputs_.remove(index);
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
            /* synthetic */ Builder(C67711 c67711) {
                this();
            }

            private Builder() {
                super(Transaction.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Bitcoin.TransactionOrBuilder
            public int getVersion() {
                return ((Transaction) this.instance).getVersion();
            }

            public Builder setVersion(int value) {
                copyOnWrite();
                ((Transaction) this.instance).setVersion(value);
                return this;
            }

            public Builder clearVersion() {
                copyOnWrite();
                ((Transaction) this.instance).clearVersion();
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.TransactionOrBuilder
            public int getLockTime() {
                return ((Transaction) this.instance).getLockTime();
            }

            public Builder setLockTime(int value) {
                copyOnWrite();
                ((Transaction) this.instance).setLockTime(value);
                return this;
            }

            public Builder clearLockTime() {
                copyOnWrite();
                ((Transaction) this.instance).clearLockTime();
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.TransactionOrBuilder
            public List<TransactionInput> getInputsList() {
                return Collections.unmodifiableList(((Transaction) this.instance).getInputsList());
            }

            @Override // wallet.core.jni.proto.Bitcoin.TransactionOrBuilder
            public int getInputsCount() {
                return ((Transaction) this.instance).getInputsCount();
            }

            @Override // wallet.core.jni.proto.Bitcoin.TransactionOrBuilder
            public TransactionInput getInputs(int index) {
                return ((Transaction) this.instance).getInputs(index);
            }

            public Builder setInputs(int index, TransactionInput value) {
                copyOnWrite();
                ((Transaction) this.instance).setInputs(index, value);
                return this;
            }

            public Builder setInputs(int index, TransactionInput.Builder builderForValue) {
                copyOnWrite();
                ((Transaction) this.instance).setInputs(index, builderForValue.build());
                return this;
            }

            public Builder addInputs(TransactionInput value) {
                copyOnWrite();
                ((Transaction) this.instance).addInputs(value);
                return this;
            }

            public Builder addInputs(int index, TransactionInput value) {
                copyOnWrite();
                ((Transaction) this.instance).addInputs(index, value);
                return this;
            }

            public Builder addInputs(TransactionInput.Builder builderForValue) {
                copyOnWrite();
                ((Transaction) this.instance).addInputs(builderForValue.build());
                return this;
            }

            public Builder addInputs(int index, TransactionInput.Builder builderForValue) {
                copyOnWrite();
                ((Transaction) this.instance).addInputs(index, builderForValue.build());
                return this;
            }

            public Builder addAllInputs(Iterable<? extends TransactionInput> values) {
                copyOnWrite();
                ((Transaction) this.instance).addAllInputs(values);
                return this;
            }

            public Builder clearInputs() {
                copyOnWrite();
                ((Transaction) this.instance).clearInputs();
                return this;
            }

            public Builder removeInputs(int index) {
                copyOnWrite();
                ((Transaction) this.instance).removeInputs(index);
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.TransactionOrBuilder
            public List<TransactionOutput> getOutputsList() {
                return Collections.unmodifiableList(((Transaction) this.instance).getOutputsList());
            }

            @Override // wallet.core.jni.proto.Bitcoin.TransactionOrBuilder
            public int getOutputsCount() {
                return ((Transaction) this.instance).getOutputsCount();
            }

            @Override // wallet.core.jni.proto.Bitcoin.TransactionOrBuilder
            public TransactionOutput getOutputs(int index) {
                return ((Transaction) this.instance).getOutputs(index);
            }

            public Builder setOutputs(int index, TransactionOutput value) {
                copyOnWrite();
                ((Transaction) this.instance).setOutputs(index, value);
                return this;
            }

            public Builder setOutputs(int index, TransactionOutput.Builder builderForValue) {
                copyOnWrite();
                ((Transaction) this.instance).setOutputs(index, builderForValue.build());
                return this;
            }

            public Builder addOutputs(TransactionOutput value) {
                copyOnWrite();
                ((Transaction) this.instance).addOutputs(value);
                return this;
            }

            public Builder addOutputs(int index, TransactionOutput value) {
                copyOnWrite();
                ((Transaction) this.instance).addOutputs(index, value);
                return this;
            }

            public Builder addOutputs(TransactionOutput.Builder builderForValue) {
                copyOnWrite();
                ((Transaction) this.instance).addOutputs(builderForValue.build());
                return this;
            }

            public Builder addOutputs(int index, TransactionOutput.Builder builderForValue) {
                copyOnWrite();
                ((Transaction) this.instance).addOutputs(index, builderForValue.build());
                return this;
            }

            public Builder addAllOutputs(Iterable<? extends TransactionOutput> values) {
                copyOnWrite();
                ((Transaction) this.instance).addAllOutputs(values);
                return this;
            }

            public Builder clearOutputs() {
                copyOnWrite();
                ((Transaction) this.instance).clearOutputs();
                return this;
            }

            public Builder removeOutputs(int index) {
                copyOnWrite();
                ((Transaction) this.instance).removeOutputs(index);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67711.f1859xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Transaction();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u000f\u0002\u000b\u0003\u001b\u0004\u001b", new Object[]{"version_", "lockTime_", "inputs_", TransactionInput.class, "outputs_", TransactionOutput.class});
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

    /* renamed from: wallet.core.jni.proto.Bitcoin$1 */
    /* loaded from: classes6.dex */
    static /* synthetic */ class C67711 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f1859xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f1859xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1859xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1859xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1859xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1859xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1859xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1859xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class TransactionInput extends GeneratedMessageLite<TransactionInput, Builder> implements TransactionInputOrBuilder {
        private static final TransactionInput DEFAULT_INSTANCE;
        private static volatile Parser<TransactionInput> PARSER = null;
        public static final int PREVIOUSOUTPUT_FIELD_NUMBER = 1;
        public static final int SCRIPT_FIELD_NUMBER = 3;
        public static final int SEQUENCE_FIELD_NUMBER = 2;
        private OutPoint previousOutput_;
        private ByteString script_ = ByteString.EMPTY;
        private int sequence_;

        private TransactionInput() {
        }

        @Override // wallet.core.jni.proto.Bitcoin.TransactionInputOrBuilder
        public boolean hasPreviousOutput() {
            return this.previousOutput_ != null;
        }

        @Override // wallet.core.jni.proto.Bitcoin.TransactionInputOrBuilder
        public OutPoint getPreviousOutput() {
            OutPoint outPoint = this.previousOutput_;
            return outPoint == null ? OutPoint.getDefaultInstance() : outPoint;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPreviousOutput(OutPoint value) {
            value.getClass();
            this.previousOutput_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergePreviousOutput(OutPoint value) {
            value.getClass();
            OutPoint outPoint = this.previousOutput_;
            if (outPoint != null && outPoint != OutPoint.getDefaultInstance()) {
                this.previousOutput_ = OutPoint.newBuilder(this.previousOutput_).mergeFrom((OutPoint.Builder) value).buildPartial();
            } else {
                this.previousOutput_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPreviousOutput() {
            this.previousOutput_ = null;
        }

        @Override // wallet.core.jni.proto.Bitcoin.TransactionInputOrBuilder
        public int getSequence() {
            return this.sequence_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSequence(int value) {
            this.sequence_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSequence() {
            this.sequence_ = 0;
        }

        @Override // wallet.core.jni.proto.Bitcoin.TransactionInputOrBuilder
        public ByteString getScript() {
            return this.script_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setScript(ByteString value) {
            value.getClass();
            this.script_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearScript() {
            this.script_ = getDefaultInstance().getScript();
        }

        public static TransactionInput parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TransactionInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionInput parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionInput parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TransactionInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionInput parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionInput parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TransactionInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionInput parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionInput parseFrom(InputStream input) throws IOException {
            return (TransactionInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionInput parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransactionInput parseDelimitedFrom(InputStream input) throws IOException {
            return (TransactionInput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionInput parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionInput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransactionInput parseFrom(CodedInputStream input) throws IOException {
            return (TransactionInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionInput parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionInput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TransactionInput prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TransactionInput, Builder> implements TransactionInputOrBuilder {
            /* synthetic */ Builder(C67711 c67711) {
                this();
            }

            private Builder() {
                super(TransactionInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Bitcoin.TransactionInputOrBuilder
            public boolean hasPreviousOutput() {
                return ((TransactionInput) this.instance).hasPreviousOutput();
            }

            @Override // wallet.core.jni.proto.Bitcoin.TransactionInputOrBuilder
            public OutPoint getPreviousOutput() {
                return ((TransactionInput) this.instance).getPreviousOutput();
            }

            public Builder setPreviousOutput(OutPoint value) {
                copyOnWrite();
                ((TransactionInput) this.instance).setPreviousOutput(value);
                return this;
            }

            public Builder setPreviousOutput(OutPoint.Builder builderForValue) {
                copyOnWrite();
                ((TransactionInput) this.instance).setPreviousOutput(builderForValue.build());
                return this;
            }

            public Builder mergePreviousOutput(OutPoint value) {
                copyOnWrite();
                ((TransactionInput) this.instance).mergePreviousOutput(value);
                return this;
            }

            public Builder clearPreviousOutput() {
                copyOnWrite();
                ((TransactionInput) this.instance).clearPreviousOutput();
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.TransactionInputOrBuilder
            public int getSequence() {
                return ((TransactionInput) this.instance).getSequence();
            }

            public Builder setSequence(int value) {
                copyOnWrite();
                ((TransactionInput) this.instance).setSequence(value);
                return this;
            }

            public Builder clearSequence() {
                copyOnWrite();
                ((TransactionInput) this.instance).clearSequence();
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.TransactionInputOrBuilder
            public ByteString getScript() {
                return ((TransactionInput) this.instance).getScript();
            }

            public Builder setScript(ByteString value) {
                copyOnWrite();
                ((TransactionInput) this.instance).setScript(value);
                return this;
            }

            public Builder clearScript() {
                copyOnWrite();
                ((TransactionInput) this.instance).clearScript();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67711.f1859xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TransactionInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\u000b\u0003\n", new Object[]{"previousOutput_", "sequence_", "script_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TransactionInput> parser = PARSER;
                    if (parser == null) {
                        synchronized (TransactionInput.class) {
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
            TransactionInput transactionInput = new TransactionInput();
            DEFAULT_INSTANCE = transactionInput;
            GeneratedMessageLite.registerDefaultInstance(TransactionInput.class, transactionInput);
        }

        public static TransactionInput getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TransactionInput> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class OutPoint extends GeneratedMessageLite<OutPoint, Builder> implements OutPointOrBuilder {
        private static final OutPoint DEFAULT_INSTANCE;
        public static final int HASH_FIELD_NUMBER = 1;
        public static final int INDEX_FIELD_NUMBER = 2;
        private static volatile Parser<OutPoint> PARSER = null;
        public static final int SEQUENCE_FIELD_NUMBER = 3;
        private ByteString hash_ = ByteString.EMPTY;
        private int index_;
        private int sequence_;

        private OutPoint() {
        }

        @Override // wallet.core.jni.proto.Bitcoin.OutPointOrBuilder
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

        @Override // wallet.core.jni.proto.Bitcoin.OutPointOrBuilder
        public int getIndex() {
            return this.index_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setIndex(int value) {
            this.index_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearIndex() {
            this.index_ = 0;
        }

        @Override // wallet.core.jni.proto.Bitcoin.OutPointOrBuilder
        public int getSequence() {
            return this.sequence_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSequence(int value) {
            this.sequence_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSequence() {
            this.sequence_ = 0;
        }

        public static OutPoint parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (OutPoint) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OutPoint parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OutPoint) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OutPoint parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (OutPoint) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OutPoint parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OutPoint) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OutPoint parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (OutPoint) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OutPoint parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OutPoint) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OutPoint parseFrom(InputStream input) throws IOException {
            return (OutPoint) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OutPoint parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OutPoint) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OutPoint parseDelimitedFrom(InputStream input) throws IOException {
            return (OutPoint) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static OutPoint parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OutPoint) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OutPoint parseFrom(CodedInputStream input) throws IOException {
            return (OutPoint) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OutPoint parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OutPoint) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(OutPoint prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<OutPoint, Builder> implements OutPointOrBuilder {
            /* synthetic */ Builder(C67711 c67711) {
                this();
            }

            private Builder() {
                super(OutPoint.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Bitcoin.OutPointOrBuilder
            public ByteString getHash() {
                return ((OutPoint) this.instance).getHash();
            }

            public Builder setHash(ByteString value) {
                copyOnWrite();
                ((OutPoint) this.instance).setHash(value);
                return this;
            }

            public Builder clearHash() {
                copyOnWrite();
                ((OutPoint) this.instance).clearHash();
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.OutPointOrBuilder
            public int getIndex() {
                return ((OutPoint) this.instance).getIndex();
            }

            public Builder setIndex(int value) {
                copyOnWrite();
                ((OutPoint) this.instance).setIndex(value);
                return this;
            }

            public Builder clearIndex() {
                copyOnWrite();
                ((OutPoint) this.instance).clearIndex();
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.OutPointOrBuilder
            public int getSequence() {
                return ((OutPoint) this.instance).getSequence();
            }

            public Builder setSequence(int value) {
                copyOnWrite();
                ((OutPoint) this.instance).setSequence(value);
                return this;
            }

            public Builder clearSequence() {
                copyOnWrite();
                ((OutPoint) this.instance).clearSequence();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67711.f1859xa1df5c61[method.ordinal()]) {
                case 1:
                    return new OutPoint();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\n\u0002\u000b\u0003\u000b", new Object[]{"hash_", "index_", "sequence_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<OutPoint> parser = PARSER;
                    if (parser == null) {
                        synchronized (OutPoint.class) {
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
            OutPoint outPoint = new OutPoint();
            DEFAULT_INSTANCE = outPoint;
            GeneratedMessageLite.registerDefaultInstance(OutPoint.class, outPoint);
        }

        public static OutPoint getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<OutPoint> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class TransactionOutput extends GeneratedMessageLite<TransactionOutput, Builder> implements TransactionOutputOrBuilder {
        private static final TransactionOutput DEFAULT_INSTANCE;
        private static volatile Parser<TransactionOutput> PARSER = null;
        public static final int SCRIPT_FIELD_NUMBER = 2;
        public static final int VALUE_FIELD_NUMBER = 1;
        private ByteString script_ = ByteString.EMPTY;
        private long value_;

        private TransactionOutput() {
        }

        @Override // wallet.core.jni.proto.Bitcoin.TransactionOutputOrBuilder
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

        @Override // wallet.core.jni.proto.Bitcoin.TransactionOutputOrBuilder
        public ByteString getScript() {
            return this.script_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setScript(ByteString value) {
            value.getClass();
            this.script_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearScript() {
            this.script_ = getDefaultInstance().getScript();
        }

        public static TransactionOutput parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TransactionOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionOutput parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionOutput parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TransactionOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionOutput parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionOutput parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TransactionOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionOutput parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionOutput parseFrom(InputStream input) throws IOException {
            return (TransactionOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionOutput parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransactionOutput parseDelimitedFrom(InputStream input) throws IOException {
            return (TransactionOutput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionOutput parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionOutput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransactionOutput parseFrom(CodedInputStream input) throws IOException {
            return (TransactionOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionOutput parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TransactionOutput prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TransactionOutput, Builder> implements TransactionOutputOrBuilder {
            /* synthetic */ Builder(C67711 c67711) {
                this();
            }

            private Builder() {
                super(TransactionOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Bitcoin.TransactionOutputOrBuilder
            public long getValue() {
                return ((TransactionOutput) this.instance).getValue();
            }

            public Builder setValue(long value) {
                copyOnWrite();
                ((TransactionOutput) this.instance).setValue(value);
                return this;
            }

            public Builder clearValue() {
                copyOnWrite();
                ((TransactionOutput) this.instance).clearValue();
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.TransactionOutputOrBuilder
            public ByteString getScript() {
                return ((TransactionOutput) this.instance).getScript();
            }

            public Builder setScript(ByteString value) {
                copyOnWrite();
                ((TransactionOutput) this.instance).setScript(value);
                return this;
            }

            public Builder clearScript() {
                copyOnWrite();
                ((TransactionOutput) this.instance).clearScript();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67711.f1859xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TransactionOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\n", new Object[]{"value_", "script_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TransactionOutput> parser = PARSER;
                    if (parser == null) {
                        synchronized (TransactionOutput.class) {
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
            TransactionOutput transactionOutput = new TransactionOutput();
            DEFAULT_INSTANCE = transactionOutput;
            GeneratedMessageLite.registerDefaultInstance(TransactionOutput.class, transactionOutput);
        }

        public static TransactionOutput getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TransactionOutput> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class UnspentTransaction extends GeneratedMessageLite<UnspentTransaction, Builder> implements UnspentTransactionOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 3;
        private static final UnspentTransaction DEFAULT_INSTANCE;
        public static final int OUT_POINT_FIELD_NUMBER = 1;
        private static volatile Parser<UnspentTransaction> PARSER = null;
        public static final int SCRIPT_FIELD_NUMBER = 2;
        private long amount_;
        private OutPoint outPoint_;
        private ByteString script_ = ByteString.EMPTY;

        private UnspentTransaction() {
        }

        @Override // wallet.core.jni.proto.Bitcoin.UnspentTransactionOrBuilder
        public boolean hasOutPoint() {
            return this.outPoint_ != null;
        }

        @Override // wallet.core.jni.proto.Bitcoin.UnspentTransactionOrBuilder
        public OutPoint getOutPoint() {
            OutPoint outPoint = this.outPoint_;
            return outPoint == null ? OutPoint.getDefaultInstance() : outPoint;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOutPoint(OutPoint value) {
            value.getClass();
            this.outPoint_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeOutPoint(OutPoint value) {
            value.getClass();
            OutPoint outPoint = this.outPoint_;
            if (outPoint != null && outPoint != OutPoint.getDefaultInstance()) {
                this.outPoint_ = OutPoint.newBuilder(this.outPoint_).mergeFrom((OutPoint.Builder) value).buildPartial();
            } else {
                this.outPoint_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOutPoint() {
            this.outPoint_ = null;
        }

        @Override // wallet.core.jni.proto.Bitcoin.UnspentTransactionOrBuilder
        public ByteString getScript() {
            return this.script_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setScript(ByteString value) {
            value.getClass();
            this.script_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearScript() {
            this.script_ = getDefaultInstance().getScript();
        }

        @Override // wallet.core.jni.proto.Bitcoin.UnspentTransactionOrBuilder
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

        public static UnspentTransaction parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (UnspentTransaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static UnspentTransaction parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (UnspentTransaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static UnspentTransaction parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (UnspentTransaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static UnspentTransaction parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (UnspentTransaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static UnspentTransaction parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (UnspentTransaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static UnspentTransaction parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (UnspentTransaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static UnspentTransaction parseFrom(InputStream input) throws IOException {
            return (UnspentTransaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static UnspentTransaction parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (UnspentTransaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static UnspentTransaction parseDelimitedFrom(InputStream input) throws IOException {
            return (UnspentTransaction) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static UnspentTransaction parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (UnspentTransaction) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static UnspentTransaction parseFrom(CodedInputStream input) throws IOException {
            return (UnspentTransaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static UnspentTransaction parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (UnspentTransaction) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(UnspentTransaction prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<UnspentTransaction, Builder> implements UnspentTransactionOrBuilder {
            /* synthetic */ Builder(C67711 c67711) {
                this();
            }

            private Builder() {
                super(UnspentTransaction.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Bitcoin.UnspentTransactionOrBuilder
            public boolean hasOutPoint() {
                return ((UnspentTransaction) this.instance).hasOutPoint();
            }

            @Override // wallet.core.jni.proto.Bitcoin.UnspentTransactionOrBuilder
            public OutPoint getOutPoint() {
                return ((UnspentTransaction) this.instance).getOutPoint();
            }

            public Builder setOutPoint(OutPoint value) {
                copyOnWrite();
                ((UnspentTransaction) this.instance).setOutPoint(value);
                return this;
            }

            public Builder setOutPoint(OutPoint.Builder builderForValue) {
                copyOnWrite();
                ((UnspentTransaction) this.instance).setOutPoint(builderForValue.build());
                return this;
            }

            public Builder mergeOutPoint(OutPoint value) {
                copyOnWrite();
                ((UnspentTransaction) this.instance).mergeOutPoint(value);
                return this;
            }

            public Builder clearOutPoint() {
                copyOnWrite();
                ((UnspentTransaction) this.instance).clearOutPoint();
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.UnspentTransactionOrBuilder
            public ByteString getScript() {
                return ((UnspentTransaction) this.instance).getScript();
            }

            public Builder setScript(ByteString value) {
                copyOnWrite();
                ((UnspentTransaction) this.instance).setScript(value);
                return this;
            }

            public Builder clearScript() {
                copyOnWrite();
                ((UnspentTransaction) this.instance).clearScript();
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.UnspentTransactionOrBuilder
            public long getAmount() {
                return ((UnspentTransaction) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((UnspentTransaction) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((UnspentTransaction) this.instance).clearAmount();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67711.f1859xa1df5c61[method.ordinal()]) {
                case 1:
                    return new UnspentTransaction();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\n\u0003\u0002", new Object[]{"outPoint_", "script_", "amount_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<UnspentTransaction> parser = PARSER;
                    if (parser == null) {
                        synchronized (UnspentTransaction.class) {
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
            UnspentTransaction unspentTransaction = new UnspentTransaction();
            DEFAULT_INSTANCE = unspentTransaction;
            GeneratedMessageLite.registerDefaultInstance(UnspentTransaction.class, unspentTransaction);
        }

        public static UnspentTransaction getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<UnspentTransaction> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 2;
        public static final int BYTE_FEE_FIELD_NUMBER = 3;
        public static final int CHANGE_ADDRESS_FIELD_NUMBER = 5;
        public static final int COIN_TYPE_FIELD_NUMBER = 10;
        private static final SigningInput DEFAULT_INSTANCE;
        public static final int HASH_TYPE_FIELD_NUMBER = 1;
        public static final int LOCK_TIME_FIELD_NUMBER = 12;
        public static final int OUTPUT_OP_RETURN_FIELD_NUMBER = 13;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PLAN_FIELD_NUMBER = 11;
        public static final int PRIVATE_KEY_FIELD_NUMBER = 6;
        public static final int SCRIPTS_FIELD_NUMBER = 7;
        public static final int TO_ADDRESS_FIELD_NUMBER = 4;
        public static final int USE_MAX_AMOUNT_FIELD_NUMBER = 9;
        public static final int UTXO_FIELD_NUMBER = 8;
        private long amount_;
        private long byteFee_;
        private int coinType_;
        private int hashType_;
        private int lockTime_;
        private TransactionPlan plan_;
        private boolean useMaxAmount_;
        private MapFieldLite<String, ByteString> scripts_ = MapFieldLite.emptyMapField();
        private String toAddress_ = "";
        private String changeAddress_ = "";
        private Internal.ProtobufList<ByteString> privateKey_ = GeneratedMessageLite.emptyProtobufList();
        private Internal.ProtobufList<UnspentTransaction> utxo_ = GeneratedMessageLite.emptyProtobufList();
        private ByteString outputOpReturn_ = ByteString.EMPTY;

        private SigningInput() {
        }

        @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
        public int getHashType() {
            return this.hashType_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setHashType(int value) {
            this.hashType_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearHashType() {
            this.hashType_ = 0;
        }

        @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
        public long getByteFee() {
            return this.byteFee_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setByteFee(long value) {
            this.byteFee_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearByteFee() {
            this.byteFee_ = 0L;
        }

        @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
        public String getToAddress() {
            return this.toAddress_;
        }

        @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
        public String getChangeAddress() {
            return this.changeAddress_;
        }

        @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
        public ByteString getChangeAddressBytes() {
            return ByteString.copyFromUtf8(this.changeAddress_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChangeAddress(String value) {
            value.getClass();
            this.changeAddress_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearChangeAddress() {
            this.changeAddress_ = getDefaultInstance().getChangeAddress();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChangeAddressBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.changeAddress_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
        public List<ByteString> getPrivateKeyList() {
            return this.privateKey_;
        }

        @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
        public int getPrivateKeyCount() {
            return this.privateKey_.size();
        }

        @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
        public ByteString getPrivateKey(int index) {
            return this.privateKey_.get(index);
        }

        private void ensurePrivateKeyIsMutable() {
            Internal.ProtobufList<ByteString> protobufList = this.privateKey_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.privateKey_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPrivateKey(int index, ByteString value) {
            value.getClass();
            ensurePrivateKeyIsMutable();
            this.privateKey_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addPrivateKey(ByteString value) {
            value.getClass();
            ensurePrivateKeyIsMutable();
            this.privateKey_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllPrivateKey(Iterable<? extends ByteString> values) {
            ensurePrivateKeyIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.privateKey_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPrivateKey() {
            this.privateKey_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* loaded from: classes6.dex */
        private static final class ScriptsDefaultEntryHolder {
            static final MapEntryLite<String, ByteString> defaultEntry = MapEntryLite.newDefaultInstance(WireFormat.FieldType.STRING, "", WireFormat.FieldType.BYTES, ByteString.EMPTY);

            private ScriptsDefaultEntryHolder() {
            }
        }

        private MapFieldLite<String, ByteString> internalGetScripts() {
            return this.scripts_;
        }

        private MapFieldLite<String, ByteString> internalGetMutableScripts() {
            if (!this.scripts_.isMutable()) {
                this.scripts_ = this.scripts_.mutableCopy();
            }
            return this.scripts_;
        }

        @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
        public int getScriptsCount() {
            return internalGetScripts().size();
        }

        @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
        public boolean containsScripts(String key) {
            key.getClass();
            return internalGetScripts().containsKey(key);
        }

        @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
        @Deprecated
        public Map<String, ByteString> getScripts() {
            return getScriptsMap();
        }

        @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
        public Map<String, ByteString> getScriptsMap() {
            return Collections.unmodifiableMap(internalGetScripts());
        }

        @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
        public ByteString getScriptsOrDefault(String key, ByteString defaultValue) {
            key.getClass();
            MapFieldLite<String, ByteString> internalGetScripts = internalGetScripts();
            return internalGetScripts.containsKey(key) ? internalGetScripts.get(key) : defaultValue;
        }

        @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
        public ByteString getScriptsOrThrow(String key) {
            key.getClass();
            MapFieldLite<String, ByteString> internalGetScripts = internalGetScripts();
            if (!internalGetScripts.containsKey(key)) {
                throw new IllegalArgumentException();
            }
            return internalGetScripts.get(key);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Map<String, ByteString> getMutableScriptsMap() {
            return internalGetMutableScripts();
        }

        @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
        public List<UnspentTransaction> getUtxoList() {
            return this.utxo_;
        }

        public List<? extends UnspentTransactionOrBuilder> getUtxoOrBuilderList() {
            return this.utxo_;
        }

        @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
        public int getUtxoCount() {
            return this.utxo_.size();
        }

        @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
        public UnspentTransaction getUtxo(int index) {
            return this.utxo_.get(index);
        }

        public UnspentTransactionOrBuilder getUtxoOrBuilder(int index) {
            return this.utxo_.get(index);
        }

        private void ensureUtxoIsMutable() {
            Internal.ProtobufList<UnspentTransaction> protobufList = this.utxo_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.utxo_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setUtxo(int index, UnspentTransaction value) {
            value.getClass();
            ensureUtxoIsMutable();
            this.utxo_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addUtxo(UnspentTransaction value) {
            value.getClass();
            ensureUtxoIsMutable();
            this.utxo_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addUtxo(int index, UnspentTransaction value) {
            value.getClass();
            ensureUtxoIsMutable();
            this.utxo_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllUtxo(Iterable<? extends UnspentTransaction> values) {
            ensureUtxoIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.utxo_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearUtxo() {
            this.utxo_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeUtxo(int index) {
            ensureUtxoIsMutable();
            this.utxo_.remove(index);
        }

        @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
        public boolean getUseMaxAmount() {
            return this.useMaxAmount_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setUseMaxAmount(boolean value) {
            this.useMaxAmount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearUseMaxAmount() {
            this.useMaxAmount_ = false;
        }

        @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
        public int getCoinType() {
            return this.coinType_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCoinType(int value) {
            this.coinType_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCoinType() {
            this.coinType_ = 0;
        }

        @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
        public boolean hasPlan() {
            return this.plan_ != null;
        }

        @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
        public TransactionPlan getPlan() {
            TransactionPlan transactionPlan = this.plan_;
            return transactionPlan == null ? TransactionPlan.getDefaultInstance() : transactionPlan;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPlan(TransactionPlan value) {
            value.getClass();
            this.plan_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergePlan(TransactionPlan value) {
            value.getClass();
            TransactionPlan transactionPlan = this.plan_;
            if (transactionPlan != null && transactionPlan != TransactionPlan.getDefaultInstance()) {
                this.plan_ = TransactionPlan.newBuilder(this.plan_).mergeFrom((TransactionPlan.Builder) value).buildPartial();
            } else {
                this.plan_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPlan() {
            this.plan_ = null;
        }

        @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
        public ByteString getOutputOpReturn() {
            return this.outputOpReturn_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOutputOpReturn(ByteString value) {
            value.getClass();
            this.outputOpReturn_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOutputOpReturn() {
            this.outputOpReturn_ = getDefaultInstance().getOutputOpReturn();
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
            /* synthetic */ Builder(C67711 c67711) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
            public int getHashType() {
                return ((SigningInput) this.instance).getHashType();
            }

            public Builder setHashType(int value) {
                copyOnWrite();
                ((SigningInput) this.instance).setHashType(value);
                return this;
            }

            public Builder clearHashType() {
                copyOnWrite();
                ((SigningInput) this.instance).clearHashType();
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
            public long getAmount() {
                return ((SigningInput) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((SigningInput) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((SigningInput) this.instance).clearAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
            public long getByteFee() {
                return ((SigningInput) this.instance).getByteFee();
            }

            public Builder setByteFee(long value) {
                copyOnWrite();
                ((SigningInput) this.instance).setByteFee(value);
                return this;
            }

            public Builder clearByteFee() {
                copyOnWrite();
                ((SigningInput) this.instance).clearByteFee();
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
            public String getToAddress() {
                return ((SigningInput) this.instance).getToAddress();
            }

            @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
            public ByteString getToAddressBytes() {
                return ((SigningInput) this.instance).getToAddressBytes();
            }

            public Builder setToAddress(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setToAddress(value);
                return this;
            }

            public Builder clearToAddress() {
                copyOnWrite();
                ((SigningInput) this.instance).clearToAddress();
                return this;
            }

            public Builder setToAddressBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setToAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
            public String getChangeAddress() {
                return ((SigningInput) this.instance).getChangeAddress();
            }

            @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
            public ByteString getChangeAddressBytes() {
                return ((SigningInput) this.instance).getChangeAddressBytes();
            }

            public Builder setChangeAddress(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setChangeAddress(value);
                return this;
            }

            public Builder clearChangeAddress() {
                copyOnWrite();
                ((SigningInput) this.instance).clearChangeAddress();
                return this;
            }

            public Builder setChangeAddressBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setChangeAddressBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
            public List<ByteString> getPrivateKeyList() {
                return Collections.unmodifiableList(((SigningInput) this.instance).getPrivateKeyList());
            }

            @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
            public int getPrivateKeyCount() {
                return ((SigningInput) this.instance).getPrivateKeyCount();
            }

            @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
            public ByteString getPrivateKey(int index) {
                return ((SigningInput) this.instance).getPrivateKey(index);
            }

            public Builder setPrivateKey(int index, ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setPrivateKey(index, value);
                return this;
            }

            public Builder addPrivateKey(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).addPrivateKey(value);
                return this;
            }

            public Builder addAllPrivateKey(Iterable<? extends ByteString> values) {
                copyOnWrite();
                ((SigningInput) this.instance).addAllPrivateKey(values);
                return this;
            }

            public Builder clearPrivateKey() {
                copyOnWrite();
                ((SigningInput) this.instance).clearPrivateKey();
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
            public int getScriptsCount() {
                return ((SigningInput) this.instance).getScriptsMap().size();
            }

            @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
            public boolean containsScripts(String key) {
                key.getClass();
                return ((SigningInput) this.instance).getScriptsMap().containsKey(key);
            }

            public Builder clearScripts() {
                copyOnWrite();
                ((SigningInput) this.instance).getMutableScriptsMap().clear();
                return this;
            }

            public Builder removeScripts(String key) {
                key.getClass();
                copyOnWrite();
                ((SigningInput) this.instance).getMutableScriptsMap().remove(key);
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
            @Deprecated
            public Map<String, ByteString> getScripts() {
                return getScriptsMap();
            }

            @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
            public Map<String, ByteString> getScriptsMap() {
                return Collections.unmodifiableMap(((SigningInput) this.instance).getScriptsMap());
            }

            @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
            public ByteString getScriptsOrDefault(String key, ByteString defaultValue) {
                key.getClass();
                Map<String, ByteString> scriptsMap = ((SigningInput) this.instance).getScriptsMap();
                return scriptsMap.containsKey(key) ? scriptsMap.get(key) : defaultValue;
            }

            @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
            public ByteString getScriptsOrThrow(String key) {
                key.getClass();
                Map<String, ByteString> scriptsMap = ((SigningInput) this.instance).getScriptsMap();
                if (!scriptsMap.containsKey(key)) {
                    throw new IllegalArgumentException();
                }
                return scriptsMap.get(key);
            }

            public Builder putScripts(String key, ByteString value) {
                key.getClass();
                value.getClass();
                copyOnWrite();
                ((SigningInput) this.instance).getMutableScriptsMap().put(key, value);
                return this;
            }

            public Builder putAllScripts(Map<String, ByteString> values) {
                copyOnWrite();
                ((SigningInput) this.instance).getMutableScriptsMap().putAll(values);
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
            public List<UnspentTransaction> getUtxoList() {
                return Collections.unmodifiableList(((SigningInput) this.instance).getUtxoList());
            }

            @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
            public int getUtxoCount() {
                return ((SigningInput) this.instance).getUtxoCount();
            }

            @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
            public UnspentTransaction getUtxo(int index) {
                return ((SigningInput) this.instance).getUtxo(index);
            }

            public Builder setUtxo(int index, UnspentTransaction value) {
                copyOnWrite();
                ((SigningInput) this.instance).setUtxo(index, value);
                return this;
            }

            public Builder setUtxo(int index, UnspentTransaction.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setUtxo(index, builderForValue.build());
                return this;
            }

            public Builder addUtxo(UnspentTransaction value) {
                copyOnWrite();
                ((SigningInput) this.instance).addUtxo(value);
                return this;
            }

            public Builder addUtxo(int index, UnspentTransaction value) {
                copyOnWrite();
                ((SigningInput) this.instance).addUtxo(index, value);
                return this;
            }

            public Builder addUtxo(UnspentTransaction.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).addUtxo(builderForValue.build());
                return this;
            }

            public Builder addUtxo(int index, UnspentTransaction.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).addUtxo(index, builderForValue.build());
                return this;
            }

            public Builder addAllUtxo(Iterable<? extends UnspentTransaction> values) {
                copyOnWrite();
                ((SigningInput) this.instance).addAllUtxo(values);
                return this;
            }

            public Builder clearUtxo() {
                copyOnWrite();
                ((SigningInput) this.instance).clearUtxo();
                return this;
            }

            public Builder removeUtxo(int index) {
                copyOnWrite();
                ((SigningInput) this.instance).removeUtxo(index);
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
            public boolean getUseMaxAmount() {
                return ((SigningInput) this.instance).getUseMaxAmount();
            }

            public Builder setUseMaxAmount(boolean value) {
                copyOnWrite();
                ((SigningInput) this.instance).setUseMaxAmount(value);
                return this;
            }

            public Builder clearUseMaxAmount() {
                copyOnWrite();
                ((SigningInput) this.instance).clearUseMaxAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
            public int getCoinType() {
                return ((SigningInput) this.instance).getCoinType();
            }

            public Builder setCoinType(int value) {
                copyOnWrite();
                ((SigningInput) this.instance).setCoinType(value);
                return this;
            }

            public Builder clearCoinType() {
                copyOnWrite();
                ((SigningInput) this.instance).clearCoinType();
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
            public boolean hasPlan() {
                return ((SigningInput) this.instance).hasPlan();
            }

            @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
            public TransactionPlan getPlan() {
                return ((SigningInput) this.instance).getPlan();
            }

            public Builder setPlan(TransactionPlan value) {
                copyOnWrite();
                ((SigningInput) this.instance).setPlan(value);
                return this;
            }

            public Builder setPlan(TransactionPlan.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setPlan(builderForValue.build());
                return this;
            }

            public Builder mergePlan(TransactionPlan value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergePlan(value);
                return this;
            }

            public Builder clearPlan() {
                copyOnWrite();
                ((SigningInput) this.instance).clearPlan();
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
            public int getLockTime() {
                return ((SigningInput) this.instance).getLockTime();
            }

            public Builder setLockTime(int value) {
                copyOnWrite();
                ((SigningInput) this.instance).setLockTime(value);
                return this;
            }

            public Builder clearLockTime() {
                copyOnWrite();
                ((SigningInput) this.instance).clearLockTime();
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.SigningInputOrBuilder
            public ByteString getOutputOpReturn() {
                return ((SigningInput) this.instance).getOutputOpReturn();
            }

            public Builder setOutputOpReturn(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setOutputOpReturn(value);
                return this;
            }

            public Builder clearOutputOpReturn() {
                copyOnWrite();
                ((SigningInput) this.instance).clearOutputOpReturn();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67711.f1859xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\r\u0000\u0000\u0001\r\r\u0001\u0002\u0000\u0001\u000b\u0002\u0002\u0003\u0002\u0004Ȉ\u0005Ȉ\u0006\u001c\u00072\b\u001b\t\u0007\n\u000b\u000b\t\f\u000b\r\n", new Object[]{"hashType_", "amount_", "byteFee_", "toAddress_", "changeAddress_", "privateKey_", "scripts_", ScriptsDefaultEntryHolder.defaultEntry, "utxo_", UnspentTransaction.class, "useMaxAmount_", "coinType_", "plan_", "lockTime_", "outputOpReturn_"});
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
    public static final class TransactionPlan extends GeneratedMessageLite<TransactionPlan, Builder> implements TransactionPlanOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 1;
        public static final int AVAILABLE_AMOUNT_FIELD_NUMBER = 2;
        public static final int BRANCH_ID_FIELD_NUMBER = 6;
        public static final int CHANGE_FIELD_NUMBER = 4;
        private static final TransactionPlan DEFAULT_INSTANCE;
        public static final int ERROR_FIELD_NUMBER = 7;
        public static final int FEE_FIELD_NUMBER = 3;
        public static final int OUTPUT_OP_RETURN_FIELD_NUMBER = 8;
        private static volatile Parser<TransactionPlan> PARSER = null;
        public static final int UTXOS_FIELD_NUMBER = 5;
        private long amount_;
        private long availableAmount_;
        private ByteString branchId_;
        private long change_;
        private int error_;
        private long fee_;
        private ByteString outputOpReturn_;
        private Internal.ProtobufList<UnspentTransaction> utxos_ = GeneratedMessageLite.emptyProtobufList();

        private TransactionPlan() {
            ByteString byteString = ByteString.EMPTY;
            this.branchId_ = byteString;
            this.outputOpReturn_ = byteString;
        }

        @Override // wallet.core.jni.proto.Bitcoin.TransactionPlanOrBuilder
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

        @Override // wallet.core.jni.proto.Bitcoin.TransactionPlanOrBuilder
        public long getAvailableAmount() {
            return this.availableAmount_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAvailableAmount(long value) {
            this.availableAmount_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearAvailableAmount() {
            this.availableAmount_ = 0L;
        }

        @Override // wallet.core.jni.proto.Bitcoin.TransactionPlanOrBuilder
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

        @Override // wallet.core.jni.proto.Bitcoin.TransactionPlanOrBuilder
        public long getChange() {
            return this.change_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChange(long value) {
            this.change_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearChange() {
            this.change_ = 0L;
        }

        @Override // wallet.core.jni.proto.Bitcoin.TransactionPlanOrBuilder
        public List<UnspentTransaction> getUtxosList() {
            return this.utxos_;
        }

        public List<? extends UnspentTransactionOrBuilder> getUtxosOrBuilderList() {
            return this.utxos_;
        }

        @Override // wallet.core.jni.proto.Bitcoin.TransactionPlanOrBuilder
        public int getUtxosCount() {
            return this.utxos_.size();
        }

        @Override // wallet.core.jni.proto.Bitcoin.TransactionPlanOrBuilder
        public UnspentTransaction getUtxos(int index) {
            return this.utxos_.get(index);
        }

        public UnspentTransactionOrBuilder getUtxosOrBuilder(int index) {
            return this.utxos_.get(index);
        }

        private void ensureUtxosIsMutable() {
            Internal.ProtobufList<UnspentTransaction> protobufList = this.utxos_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.utxos_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setUtxos(int index, UnspentTransaction value) {
            value.getClass();
            ensureUtxosIsMutable();
            this.utxos_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addUtxos(UnspentTransaction value) {
            value.getClass();
            ensureUtxosIsMutable();
            this.utxos_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addUtxos(int index, UnspentTransaction value) {
            value.getClass();
            ensureUtxosIsMutable();
            this.utxos_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllUtxos(Iterable<? extends UnspentTransaction> values) {
            ensureUtxosIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.utxos_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearUtxos() {
            this.utxos_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeUtxos(int index) {
            ensureUtxosIsMutable();
            this.utxos_.remove(index);
        }

        @Override // wallet.core.jni.proto.Bitcoin.TransactionPlanOrBuilder
        public ByteString getBranchId() {
            return this.branchId_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBranchId(ByteString value) {
            value.getClass();
            this.branchId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearBranchId() {
            this.branchId_ = getDefaultInstance().getBranchId();
        }

        @Override // wallet.core.jni.proto.Bitcoin.TransactionPlanOrBuilder
        public int getErrorValue() {
            return this.error_;
        }

        @Override // wallet.core.jni.proto.Bitcoin.TransactionPlanOrBuilder
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

        @Override // wallet.core.jni.proto.Bitcoin.TransactionPlanOrBuilder
        public ByteString getOutputOpReturn() {
            return this.outputOpReturn_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOutputOpReturn(ByteString value) {
            value.getClass();
            this.outputOpReturn_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOutputOpReturn() {
            this.outputOpReturn_ = getDefaultInstance().getOutputOpReturn();
        }

        public static TransactionPlan parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionPlan parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionPlan parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionPlan parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionPlan parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionPlan parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionPlan parseFrom(InputStream input) throws IOException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionPlan parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransactionPlan parseDelimitedFrom(InputStream input) throws IOException {
            return (TransactionPlan) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionPlan parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionPlan) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransactionPlan parseFrom(CodedInputStream input) throws IOException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionPlan parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionPlan) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TransactionPlan prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TransactionPlan, Builder> implements TransactionPlanOrBuilder {
            /* synthetic */ Builder(C67711 c67711) {
                this();
            }

            private Builder() {
                super(TransactionPlan.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Bitcoin.TransactionPlanOrBuilder
            public long getAmount() {
                return ((TransactionPlan) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((TransactionPlan) this.instance).clearAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.TransactionPlanOrBuilder
            public long getAvailableAmount() {
                return ((TransactionPlan) this.instance).getAvailableAmount();
            }

            public Builder setAvailableAmount(long value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setAvailableAmount(value);
                return this;
            }

            public Builder clearAvailableAmount() {
                copyOnWrite();
                ((TransactionPlan) this.instance).clearAvailableAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.TransactionPlanOrBuilder
            public long getFee() {
                return ((TransactionPlan) this.instance).getFee();
            }

            public Builder setFee(long value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setFee(value);
                return this;
            }

            public Builder clearFee() {
                copyOnWrite();
                ((TransactionPlan) this.instance).clearFee();
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.TransactionPlanOrBuilder
            public long getChange() {
                return ((TransactionPlan) this.instance).getChange();
            }

            public Builder setChange(long value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setChange(value);
                return this;
            }

            public Builder clearChange() {
                copyOnWrite();
                ((TransactionPlan) this.instance).clearChange();
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.TransactionPlanOrBuilder
            public List<UnspentTransaction> getUtxosList() {
                return Collections.unmodifiableList(((TransactionPlan) this.instance).getUtxosList());
            }

            @Override // wallet.core.jni.proto.Bitcoin.TransactionPlanOrBuilder
            public int getUtxosCount() {
                return ((TransactionPlan) this.instance).getUtxosCount();
            }

            @Override // wallet.core.jni.proto.Bitcoin.TransactionPlanOrBuilder
            public UnspentTransaction getUtxos(int index) {
                return ((TransactionPlan) this.instance).getUtxos(index);
            }

            public Builder setUtxos(int index, UnspentTransaction value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setUtxos(index, value);
                return this;
            }

            public Builder setUtxos(int index, UnspentTransaction.Builder builderForValue) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setUtxos(index, builderForValue.build());
                return this;
            }

            public Builder addUtxos(UnspentTransaction value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addUtxos(value);
                return this;
            }

            public Builder addUtxos(int index, UnspentTransaction value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addUtxos(index, value);
                return this;
            }

            public Builder addUtxos(UnspentTransaction.Builder builderForValue) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addUtxos(builderForValue.build());
                return this;
            }

            public Builder addUtxos(int index, UnspentTransaction.Builder builderForValue) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addUtxos(index, builderForValue.build());
                return this;
            }

            public Builder addAllUtxos(Iterable<? extends UnspentTransaction> values) {
                copyOnWrite();
                ((TransactionPlan) this.instance).addAllUtxos(values);
                return this;
            }

            public Builder clearUtxos() {
                copyOnWrite();
                ((TransactionPlan) this.instance).clearUtxos();
                return this;
            }

            public Builder removeUtxos(int index) {
                copyOnWrite();
                ((TransactionPlan) this.instance).removeUtxos(index);
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.TransactionPlanOrBuilder
            public ByteString getBranchId() {
                return ((TransactionPlan) this.instance).getBranchId();
            }

            public Builder setBranchId(ByteString value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setBranchId(value);
                return this;
            }

            public Builder clearBranchId() {
                copyOnWrite();
                ((TransactionPlan) this.instance).clearBranchId();
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.TransactionPlanOrBuilder
            public int getErrorValue() {
                return ((TransactionPlan) this.instance).getErrorValue();
            }

            public Builder setErrorValue(int value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setErrorValue(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.TransactionPlanOrBuilder
            public Common.SigningError getError() {
                return ((TransactionPlan) this.instance).getError();
            }

            public Builder setError(Common.SigningError value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setError(value);
                return this;
            }

            public Builder clearError() {
                copyOnWrite();
                ((TransactionPlan) this.instance).clearError();
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.TransactionPlanOrBuilder
            public ByteString getOutputOpReturn() {
                return ((TransactionPlan) this.instance).getOutputOpReturn();
            }

            public Builder setOutputOpReturn(ByteString value) {
                copyOnWrite();
                ((TransactionPlan) this.instance).setOutputOpReturn(value);
                return this;
            }

            public Builder clearOutputOpReturn() {
                copyOnWrite();
                ((TransactionPlan) this.instance).clearOutputOpReturn();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67711.f1859xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TransactionPlan();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\b\u0000\u0000\u0001\b\b\u0000\u0001\u0000\u0001\u0002\u0002\u0002\u0003\u0002\u0004\u0002\u0005\u001b\u0006\n\u0007\f\b\n", new Object[]{"amount_", "availableAmount_", "fee_", "change_", "utxos_", UnspentTransaction.class, "branchId_", "error_", "outputOpReturn_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TransactionPlan> parser = PARSER;
                    if (parser == null) {
                        synchronized (TransactionPlan.class) {
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
            TransactionPlan transactionPlan = new TransactionPlan();
            DEFAULT_INSTANCE = transactionPlan;
            GeneratedMessageLite.registerDefaultInstance(TransactionPlan.class, transactionPlan);
        }

        public static TransactionPlan getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TransactionPlan> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class SigningOutput extends GeneratedMessageLite<SigningOutput, Builder> implements SigningOutputOrBuilder {
        private static final SigningOutput DEFAULT_INSTANCE;
        public static final int ENCODED_FIELD_NUMBER = 2;
        public static final int ERROR_FIELD_NUMBER = 4;
        public static final int ERROR_MESSAGE_FIELD_NUMBER = 5;
        private static volatile Parser<SigningOutput> PARSER = null;
        public static final int TRANSACTION_FIELD_NUMBER = 1;
        public static final int TRANSACTION_ID_FIELD_NUMBER = 3;
        private int error_;
        private Transaction transaction_;
        private ByteString encoded_ = ByteString.EMPTY;
        private String transactionId_ = "";
        private String errorMessage_ = "";

        private SigningOutput() {
        }

        @Override // wallet.core.jni.proto.Bitcoin.SigningOutputOrBuilder
        public boolean hasTransaction() {
            return this.transaction_ != null;
        }

        @Override // wallet.core.jni.proto.Bitcoin.SigningOutputOrBuilder
        public Transaction getTransaction() {
            Transaction transaction = this.transaction_;
            return transaction == null ? Transaction.getDefaultInstance() : transaction;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransaction(Transaction value) {
            value.getClass();
            this.transaction_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTransaction(Transaction value) {
            value.getClass();
            Transaction transaction = this.transaction_;
            if (transaction != null && transaction != Transaction.getDefaultInstance()) {
                this.transaction_ = Transaction.newBuilder(this.transaction_).mergeFrom((Transaction.Builder) value).buildPartial();
            } else {
                this.transaction_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransaction() {
            this.transaction_ = null;
        }

        @Override // wallet.core.jni.proto.Bitcoin.SigningOutputOrBuilder
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

        @Override // wallet.core.jni.proto.Bitcoin.SigningOutputOrBuilder
        public String getTransactionId() {
            return this.transactionId_;
        }

        @Override // wallet.core.jni.proto.Bitcoin.SigningOutputOrBuilder
        public ByteString getTransactionIdBytes() {
            return ByteString.copyFromUtf8(this.transactionId_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransactionId(String value) {
            value.getClass();
            this.transactionId_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransactionId() {
            this.transactionId_ = getDefaultInstance().getTransactionId();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransactionIdBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.transactionId_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Bitcoin.SigningOutputOrBuilder
        public int getErrorValue() {
            return this.error_;
        }

        @Override // wallet.core.jni.proto.Bitcoin.SigningOutputOrBuilder
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

        @Override // wallet.core.jni.proto.Bitcoin.SigningOutputOrBuilder
        public String getErrorMessage() {
            return this.errorMessage_;
        }

        @Override // wallet.core.jni.proto.Bitcoin.SigningOutputOrBuilder
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
            /* synthetic */ Builder(C67711 c67711) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Bitcoin.SigningOutputOrBuilder
            public boolean hasTransaction() {
                return ((SigningOutput) this.instance).hasTransaction();
            }

            @Override // wallet.core.jni.proto.Bitcoin.SigningOutputOrBuilder
            public Transaction getTransaction() {
                return ((SigningOutput) this.instance).getTransaction();
            }

            public Builder setTransaction(Transaction value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setTransaction(value);
                return this;
            }

            public Builder setTransaction(Transaction.Builder builderForValue) {
                copyOnWrite();
                ((SigningOutput) this.instance).setTransaction(builderForValue.build());
                return this;
            }

            public Builder mergeTransaction(Transaction value) {
                copyOnWrite();
                ((SigningOutput) this.instance).mergeTransaction(value);
                return this;
            }

            public Builder clearTransaction() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearTransaction();
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.SigningOutputOrBuilder
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

            @Override // wallet.core.jni.proto.Bitcoin.SigningOutputOrBuilder
            public String getTransactionId() {
                return ((SigningOutput) this.instance).getTransactionId();
            }

            @Override // wallet.core.jni.proto.Bitcoin.SigningOutputOrBuilder
            public ByteString getTransactionIdBytes() {
                return ((SigningOutput) this.instance).getTransactionIdBytes();
            }

            public Builder setTransactionId(String value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setTransactionId(value);
                return this;
            }

            public Builder clearTransactionId() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearTransactionId();
                return this;
            }

            public Builder setTransactionIdBytes(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setTransactionIdBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.SigningOutputOrBuilder
            public int getErrorValue() {
                return ((SigningOutput) this.instance).getErrorValue();
            }

            public Builder setErrorValue(int value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setErrorValue(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.SigningOutputOrBuilder
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

            @Override // wallet.core.jni.proto.Bitcoin.SigningOutputOrBuilder
            public String getErrorMessage() {
                return ((SigningOutput) this.instance).getErrorMessage();
            }

            @Override // wallet.core.jni.proto.Bitcoin.SigningOutputOrBuilder
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
            switch (C67711.f1859xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\t\u0002\n\u0003Ȉ\u0004\f\u0005Ȉ", new Object[]{"transaction_", "encoded_", "transactionId_", "error_", "errorMessage_"});
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

    /* loaded from: classes6.dex */
    public static final class HashPublicKey extends GeneratedMessageLite<HashPublicKey, Builder> implements HashPublicKeyOrBuilder {
        public static final int DATA_HASH_FIELD_NUMBER = 1;
        private static final HashPublicKey DEFAULT_INSTANCE;
        private static volatile Parser<HashPublicKey> PARSER = null;
        public static final int PUBLIC_KEY_HASH_FIELD_NUMBER = 2;
        private ByteString dataHash_;
        private ByteString publicKeyHash_;

        private HashPublicKey() {
            ByteString byteString = ByteString.EMPTY;
            this.dataHash_ = byteString;
            this.publicKeyHash_ = byteString;
        }

        @Override // wallet.core.jni.proto.Bitcoin.HashPublicKeyOrBuilder
        public ByteString getDataHash() {
            return this.dataHash_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDataHash(ByteString value) {
            value.getClass();
            this.dataHash_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDataHash() {
            this.dataHash_ = getDefaultInstance().getDataHash();
        }

        @Override // wallet.core.jni.proto.Bitcoin.HashPublicKeyOrBuilder
        public ByteString getPublicKeyHash() {
            return this.publicKeyHash_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPublicKeyHash(ByteString value) {
            value.getClass();
            this.publicKeyHash_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPublicKeyHash() {
            this.publicKeyHash_ = getDefaultInstance().getPublicKeyHash();
        }

        public static HashPublicKey parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (HashPublicKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static HashPublicKey parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (HashPublicKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static HashPublicKey parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (HashPublicKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static HashPublicKey parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (HashPublicKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static HashPublicKey parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (HashPublicKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static HashPublicKey parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (HashPublicKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static HashPublicKey parseFrom(InputStream input) throws IOException {
            return (HashPublicKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static HashPublicKey parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (HashPublicKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static HashPublicKey parseDelimitedFrom(InputStream input) throws IOException {
            return (HashPublicKey) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static HashPublicKey parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (HashPublicKey) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static HashPublicKey parseFrom(CodedInputStream input) throws IOException {
            return (HashPublicKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static HashPublicKey parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (HashPublicKey) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(HashPublicKey prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<HashPublicKey, Builder> implements HashPublicKeyOrBuilder {
            /* synthetic */ Builder(C67711 c67711) {
                this();
            }

            private Builder() {
                super(HashPublicKey.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Bitcoin.HashPublicKeyOrBuilder
            public ByteString getDataHash() {
                return ((HashPublicKey) this.instance).getDataHash();
            }

            public Builder setDataHash(ByteString value) {
                copyOnWrite();
                ((HashPublicKey) this.instance).setDataHash(value);
                return this;
            }

            public Builder clearDataHash() {
                copyOnWrite();
                ((HashPublicKey) this.instance).clearDataHash();
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.HashPublicKeyOrBuilder
            public ByteString getPublicKeyHash() {
                return ((HashPublicKey) this.instance).getPublicKeyHash();
            }

            public Builder setPublicKeyHash(ByteString value) {
                copyOnWrite();
                ((HashPublicKey) this.instance).setPublicKeyHash(value);
                return this;
            }

            public Builder clearPublicKeyHash() {
                copyOnWrite();
                ((HashPublicKey) this.instance).clearPublicKeyHash();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67711.f1859xa1df5c61[method.ordinal()]) {
                case 1:
                    return new HashPublicKey();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\n", new Object[]{"dataHash_", "publicKeyHash_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<HashPublicKey> parser = PARSER;
                    if (parser == null) {
                        synchronized (HashPublicKey.class) {
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
            HashPublicKey hashPublicKey = new HashPublicKey();
            DEFAULT_INSTANCE = hashPublicKey;
            GeneratedMessageLite.registerDefaultInstance(HashPublicKey.class, hashPublicKey);
        }

        public static HashPublicKey getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<HashPublicKey> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class PreSigningOutput extends GeneratedMessageLite<PreSigningOutput, Builder> implements PreSigningOutputOrBuilder {
        private static final PreSigningOutput DEFAULT_INSTANCE;
        public static final int ERROR_FIELD_NUMBER = 2;
        public static final int ERROR_MESSAGE_FIELD_NUMBER = 3;
        public static final int HASH_PUBLIC_KEYS_FIELD_NUMBER = 1;
        private static volatile Parser<PreSigningOutput> PARSER;
        private int error_;
        private Internal.ProtobufList<HashPublicKey> hashPublicKeys_ = GeneratedMessageLite.emptyProtobufList();
        private String errorMessage_ = "";

        private PreSigningOutput() {
        }

        @Override // wallet.core.jni.proto.Bitcoin.PreSigningOutputOrBuilder
        public List<HashPublicKey> getHashPublicKeysList() {
            return this.hashPublicKeys_;
        }

        public List<? extends HashPublicKeyOrBuilder> getHashPublicKeysOrBuilderList() {
            return this.hashPublicKeys_;
        }

        @Override // wallet.core.jni.proto.Bitcoin.PreSigningOutputOrBuilder
        public int getHashPublicKeysCount() {
            return this.hashPublicKeys_.size();
        }

        @Override // wallet.core.jni.proto.Bitcoin.PreSigningOutputOrBuilder
        public HashPublicKey getHashPublicKeys(int index) {
            return this.hashPublicKeys_.get(index);
        }

        public HashPublicKeyOrBuilder getHashPublicKeysOrBuilder(int index) {
            return this.hashPublicKeys_.get(index);
        }

        private void ensureHashPublicKeysIsMutable() {
            Internal.ProtobufList<HashPublicKey> protobufList = this.hashPublicKeys_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.hashPublicKeys_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setHashPublicKeys(int index, HashPublicKey value) {
            value.getClass();
            ensureHashPublicKeysIsMutable();
            this.hashPublicKeys_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addHashPublicKeys(HashPublicKey value) {
            value.getClass();
            ensureHashPublicKeysIsMutable();
            this.hashPublicKeys_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addHashPublicKeys(int index, HashPublicKey value) {
            value.getClass();
            ensureHashPublicKeysIsMutable();
            this.hashPublicKeys_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllHashPublicKeys(Iterable<? extends HashPublicKey> values) {
            ensureHashPublicKeysIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.hashPublicKeys_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearHashPublicKeys() {
            this.hashPublicKeys_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeHashPublicKeys(int index) {
            ensureHashPublicKeysIsMutable();
            this.hashPublicKeys_.remove(index);
        }

        @Override // wallet.core.jni.proto.Bitcoin.PreSigningOutputOrBuilder
        public int getErrorValue() {
            return this.error_;
        }

        @Override // wallet.core.jni.proto.Bitcoin.PreSigningOutputOrBuilder
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

        @Override // wallet.core.jni.proto.Bitcoin.PreSigningOutputOrBuilder
        public String getErrorMessage() {
            return this.errorMessage_;
        }

        @Override // wallet.core.jni.proto.Bitcoin.PreSigningOutputOrBuilder
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

        public static PreSigningOutput parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (PreSigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static PreSigningOutput parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (PreSigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static PreSigningOutput parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (PreSigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static PreSigningOutput parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (PreSigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static PreSigningOutput parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (PreSigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static PreSigningOutput parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (PreSigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static PreSigningOutput parseFrom(InputStream input) throws IOException {
            return (PreSigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static PreSigningOutput parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (PreSigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static PreSigningOutput parseDelimitedFrom(InputStream input) throws IOException {
            return (PreSigningOutput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static PreSigningOutput parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (PreSigningOutput) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static PreSigningOutput parseFrom(CodedInputStream input) throws IOException {
            return (PreSigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static PreSigningOutput parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (PreSigningOutput) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(PreSigningOutput prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<PreSigningOutput, Builder> implements PreSigningOutputOrBuilder {
            /* synthetic */ Builder(C67711 c67711) {
                this();
            }

            private Builder() {
                super(PreSigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Bitcoin.PreSigningOutputOrBuilder
            public List<HashPublicKey> getHashPublicKeysList() {
                return Collections.unmodifiableList(((PreSigningOutput) this.instance).getHashPublicKeysList());
            }

            @Override // wallet.core.jni.proto.Bitcoin.PreSigningOutputOrBuilder
            public int getHashPublicKeysCount() {
                return ((PreSigningOutput) this.instance).getHashPublicKeysCount();
            }

            @Override // wallet.core.jni.proto.Bitcoin.PreSigningOutputOrBuilder
            public HashPublicKey getHashPublicKeys(int index) {
                return ((PreSigningOutput) this.instance).getHashPublicKeys(index);
            }

            public Builder setHashPublicKeys(int index, HashPublicKey value) {
                copyOnWrite();
                ((PreSigningOutput) this.instance).setHashPublicKeys(index, value);
                return this;
            }

            public Builder setHashPublicKeys(int index, HashPublicKey.Builder builderForValue) {
                copyOnWrite();
                ((PreSigningOutput) this.instance).setHashPublicKeys(index, builderForValue.build());
                return this;
            }

            public Builder addHashPublicKeys(HashPublicKey value) {
                copyOnWrite();
                ((PreSigningOutput) this.instance).addHashPublicKeys(value);
                return this;
            }

            public Builder addHashPublicKeys(int index, HashPublicKey value) {
                copyOnWrite();
                ((PreSigningOutput) this.instance).addHashPublicKeys(index, value);
                return this;
            }

            public Builder addHashPublicKeys(HashPublicKey.Builder builderForValue) {
                copyOnWrite();
                ((PreSigningOutput) this.instance).addHashPublicKeys(builderForValue.build());
                return this;
            }

            public Builder addHashPublicKeys(int index, HashPublicKey.Builder builderForValue) {
                copyOnWrite();
                ((PreSigningOutput) this.instance).addHashPublicKeys(index, builderForValue.build());
                return this;
            }

            public Builder addAllHashPublicKeys(Iterable<? extends HashPublicKey> values) {
                copyOnWrite();
                ((PreSigningOutput) this.instance).addAllHashPublicKeys(values);
                return this;
            }

            public Builder clearHashPublicKeys() {
                copyOnWrite();
                ((PreSigningOutput) this.instance).clearHashPublicKeys();
                return this;
            }

            public Builder removeHashPublicKeys(int index) {
                copyOnWrite();
                ((PreSigningOutput) this.instance).removeHashPublicKeys(index);
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.PreSigningOutputOrBuilder
            public int getErrorValue() {
                return ((PreSigningOutput) this.instance).getErrorValue();
            }

            public Builder setErrorValue(int value) {
                copyOnWrite();
                ((PreSigningOutput) this.instance).setErrorValue(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.PreSigningOutputOrBuilder
            public Common.SigningError getError() {
                return ((PreSigningOutput) this.instance).getError();
            }

            public Builder setError(Common.SigningError value) {
                copyOnWrite();
                ((PreSigningOutput) this.instance).setError(value);
                return this;
            }

            public Builder clearError() {
                copyOnWrite();
                ((PreSigningOutput) this.instance).clearError();
                return this;
            }

            @Override // wallet.core.jni.proto.Bitcoin.PreSigningOutputOrBuilder
            public String getErrorMessage() {
                return ((PreSigningOutput) this.instance).getErrorMessage();
            }

            @Override // wallet.core.jni.proto.Bitcoin.PreSigningOutputOrBuilder
            public ByteString getErrorMessageBytes() {
                return ((PreSigningOutput) this.instance).getErrorMessageBytes();
            }

            public Builder setErrorMessage(String value) {
                copyOnWrite();
                ((PreSigningOutput) this.instance).setErrorMessage(value);
                return this;
            }

            public Builder clearErrorMessage() {
                copyOnWrite();
                ((PreSigningOutput) this.instance).clearErrorMessage();
                return this;
            }

            public Builder setErrorMessageBytes(ByteString value) {
                copyOnWrite();
                ((PreSigningOutput) this.instance).setErrorMessageBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C67711.f1859xa1df5c61[method.ordinal()]) {
                case 1:
                    return new PreSigningOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u001b\u0002\f\u0003Ȉ", new Object[]{"hashPublicKeys_", HashPublicKey.class, "error_", "errorMessage_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<PreSigningOutput> parser = PARSER;
                    if (parser == null) {
                        synchronized (PreSigningOutput.class) {
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
            PreSigningOutput preSigningOutput = new PreSigningOutput();
            DEFAULT_INSTANCE = preSigningOutput;
            GeneratedMessageLite.registerDefaultInstance(PreSigningOutput.class, preSigningOutput);
        }

        public static PreSigningOutput getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<PreSigningOutput> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }
}
