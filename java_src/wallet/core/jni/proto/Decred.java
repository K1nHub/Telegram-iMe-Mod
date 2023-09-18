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
import wallet.core.jni.proto.Bitcoin;
import wallet.core.jni.proto.Common;
/* loaded from: classes5.dex */
public final class Decred {

    /* loaded from: classes5.dex */
    public interface SigningOutputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getEncoded();

        Common.SigningError getError();

        int getErrorValue();

        Transaction getTransaction();

        String getTransactionId();

        ByteString getTransactionIdBytes();

        boolean hasTransaction();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes5.dex */
    public interface TransactionInputOrBuilder extends MessageLiteOrBuilder {
        int getBlockHeight();

        int getBlockIndex();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        Bitcoin.OutPoint getPreviousOutput();

        ByteString getScript();

        int getSequence();

        long getValueIn();

        boolean hasPreviousOutput();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes5.dex */
    public interface TransactionOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        int getExpiry();

        TransactionInput getInputs(int index);

        int getInputsCount();

        List<TransactionInput> getInputsList();

        int getLockTime();

        TransactionOutput getOutputs(int index);

        int getOutputsCount();

        List<TransactionOutput> getOutputsList();

        int getSerializeType();

        int getVersion();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes5.dex */
    public interface TransactionOutputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getScript();

        long getValue();

        int getVersion();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private Decred() {
    }

    /* loaded from: classes5.dex */
    public static final class Transaction extends GeneratedMessageLite<Transaction, Builder> implements TransactionOrBuilder {
        private static final Transaction DEFAULT_INSTANCE;
        public static final int EXPIRY_FIELD_NUMBER = 6;
        public static final int INPUTS_FIELD_NUMBER = 3;
        public static final int LOCKTIME_FIELD_NUMBER = 5;
        public static final int OUTPUTS_FIELD_NUMBER = 4;
        private static volatile Parser<Transaction> PARSER = null;
        public static final int SERIALIZETYPE_FIELD_NUMBER = 1;
        public static final int VERSION_FIELD_NUMBER = 2;
        private int expiry_;
        private int lockTime_;
        private int serializeType_;
        private int version_;
        private Internal.ProtobufList<TransactionInput> inputs_ = GeneratedMessageLite.emptyProtobufList();
        private Internal.ProtobufList<TransactionOutput> outputs_ = GeneratedMessageLite.emptyProtobufList();

        private Transaction() {
        }

        @Override // wallet.core.jni.proto.Decred.TransactionOrBuilder
        public int getSerializeType() {
            return this.serializeType_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSerializeType(int value) {
            this.serializeType_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSerializeType() {
            this.serializeType_ = 0;
        }

        @Override // wallet.core.jni.proto.Decred.TransactionOrBuilder
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

        @Override // wallet.core.jni.proto.Decred.TransactionOrBuilder
        public List<TransactionInput> getInputsList() {
            return this.inputs_;
        }

        public List<? extends TransactionInputOrBuilder> getInputsOrBuilderList() {
            return this.inputs_;
        }

        @Override // wallet.core.jni.proto.Decred.TransactionOrBuilder
        public int getInputsCount() {
            return this.inputs_.size();
        }

        @Override // wallet.core.jni.proto.Decred.TransactionOrBuilder
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

        @Override // wallet.core.jni.proto.Decred.TransactionOrBuilder
        public List<TransactionOutput> getOutputsList() {
            return this.outputs_;
        }

        public List<? extends TransactionOutputOrBuilder> getOutputsOrBuilderList() {
            return this.outputs_;
        }

        @Override // wallet.core.jni.proto.Decred.TransactionOrBuilder
        public int getOutputsCount() {
            return this.outputs_.size();
        }

        @Override // wallet.core.jni.proto.Decred.TransactionOrBuilder
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

        @Override // wallet.core.jni.proto.Decred.TransactionOrBuilder
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

        @Override // wallet.core.jni.proto.Decred.TransactionOrBuilder
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

        /* loaded from: classes5.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Transaction, Builder> implements TransactionOrBuilder {
            /* synthetic */ Builder(C73281 c73281) {
                this();
            }

            private Builder() {
                super(Transaction.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Decred.TransactionOrBuilder
            public int getSerializeType() {
                return ((Transaction) this.instance).getSerializeType();
            }

            public Builder setSerializeType(int value) {
                copyOnWrite();
                ((Transaction) this.instance).setSerializeType(value);
                return this;
            }

            public Builder clearSerializeType() {
                copyOnWrite();
                ((Transaction) this.instance).clearSerializeType();
                return this;
            }

            @Override // wallet.core.jni.proto.Decred.TransactionOrBuilder
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

            @Override // wallet.core.jni.proto.Decred.TransactionOrBuilder
            public List<TransactionInput> getInputsList() {
                return Collections.unmodifiableList(((Transaction) this.instance).getInputsList());
            }

            @Override // wallet.core.jni.proto.Decred.TransactionOrBuilder
            public int getInputsCount() {
                return ((Transaction) this.instance).getInputsCount();
            }

            @Override // wallet.core.jni.proto.Decred.TransactionOrBuilder
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

            @Override // wallet.core.jni.proto.Decred.TransactionOrBuilder
            public List<TransactionOutput> getOutputsList() {
                return Collections.unmodifiableList(((Transaction) this.instance).getOutputsList());
            }

            @Override // wallet.core.jni.proto.Decred.TransactionOrBuilder
            public int getOutputsCount() {
                return ((Transaction) this.instance).getOutputsCount();
            }

            @Override // wallet.core.jni.proto.Decred.TransactionOrBuilder
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

            @Override // wallet.core.jni.proto.Decred.TransactionOrBuilder
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

            @Override // wallet.core.jni.proto.Decred.TransactionOrBuilder
            public int getExpiry() {
                return ((Transaction) this.instance).getExpiry();
            }

            public Builder setExpiry(int value) {
                copyOnWrite();
                ((Transaction) this.instance).setExpiry(value);
                return this;
            }

            public Builder clearExpiry() {
                copyOnWrite();
                ((Transaction) this.instance).clearExpiry();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C73281.f1941xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Transaction();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0002\u0000\u0001\u000b\u0002\u000b\u0003\u001b\u0004\u001b\u0005\u000b\u0006\u000b", new Object[]{"serializeType_", "version_", "inputs_", TransactionInput.class, "outputs_", TransactionOutput.class, "lockTime_", "expiry_"});
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

    /* renamed from: wallet.core.jni.proto.Decred$1 */
    /* loaded from: classes5.dex */
    static /* synthetic */ class C73281 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f1941xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f1941xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1941xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1941xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1941xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1941xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1941xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1941xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes5.dex */
    public static final class TransactionInput extends GeneratedMessageLite<TransactionInput, Builder> implements TransactionInputOrBuilder {
        public static final int BLOCKHEIGHT_FIELD_NUMBER = 4;
        public static final int BLOCKINDEX_FIELD_NUMBER = 5;
        private static final TransactionInput DEFAULT_INSTANCE;
        private static volatile Parser<TransactionInput> PARSER = null;
        public static final int PREVIOUSOUTPUT_FIELD_NUMBER = 1;
        public static final int SCRIPT_FIELD_NUMBER = 6;
        public static final int SEQUENCE_FIELD_NUMBER = 2;
        public static final int VALUEIN_FIELD_NUMBER = 3;
        private int blockHeight_;
        private int blockIndex_;
        private Bitcoin.OutPoint previousOutput_;
        private ByteString script_ = ByteString.EMPTY;
        private int sequence_;
        private long valueIn_;

        private TransactionInput() {
        }

        @Override // wallet.core.jni.proto.Decred.TransactionInputOrBuilder
        public boolean hasPreviousOutput() {
            return this.previousOutput_ != null;
        }

        @Override // wallet.core.jni.proto.Decred.TransactionInputOrBuilder
        public Bitcoin.OutPoint getPreviousOutput() {
            Bitcoin.OutPoint outPoint = this.previousOutput_;
            return outPoint == null ? Bitcoin.OutPoint.getDefaultInstance() : outPoint;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPreviousOutput(Bitcoin.OutPoint value) {
            value.getClass();
            this.previousOutput_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergePreviousOutput(Bitcoin.OutPoint value) {
            value.getClass();
            Bitcoin.OutPoint outPoint = this.previousOutput_;
            if (outPoint != null && outPoint != Bitcoin.OutPoint.getDefaultInstance()) {
                this.previousOutput_ = Bitcoin.OutPoint.newBuilder(this.previousOutput_).mergeFrom((Bitcoin.OutPoint.Builder) value).buildPartial();
            } else {
                this.previousOutput_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPreviousOutput() {
            this.previousOutput_ = null;
        }

        @Override // wallet.core.jni.proto.Decred.TransactionInputOrBuilder
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

        @Override // wallet.core.jni.proto.Decred.TransactionInputOrBuilder
        public long getValueIn() {
            return this.valueIn_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setValueIn(long value) {
            this.valueIn_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearValueIn() {
            this.valueIn_ = 0L;
        }

        @Override // wallet.core.jni.proto.Decred.TransactionInputOrBuilder
        public int getBlockHeight() {
            return this.blockHeight_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBlockHeight(int value) {
            this.blockHeight_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearBlockHeight() {
            this.blockHeight_ = 0;
        }

        @Override // wallet.core.jni.proto.Decred.TransactionInputOrBuilder
        public int getBlockIndex() {
            return this.blockIndex_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBlockIndex(int value) {
            this.blockIndex_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearBlockIndex() {
            this.blockIndex_ = 0;
        }

        @Override // wallet.core.jni.proto.Decred.TransactionInputOrBuilder
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

        /* loaded from: classes5.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TransactionInput, Builder> implements TransactionInputOrBuilder {
            /* synthetic */ Builder(C73281 c73281) {
                this();
            }

            private Builder() {
                super(TransactionInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Decred.TransactionInputOrBuilder
            public boolean hasPreviousOutput() {
                return ((TransactionInput) this.instance).hasPreviousOutput();
            }

            @Override // wallet.core.jni.proto.Decred.TransactionInputOrBuilder
            public Bitcoin.OutPoint getPreviousOutput() {
                return ((TransactionInput) this.instance).getPreviousOutput();
            }

            public Builder setPreviousOutput(Bitcoin.OutPoint value) {
                copyOnWrite();
                ((TransactionInput) this.instance).setPreviousOutput(value);
                return this;
            }

            public Builder setPreviousOutput(Bitcoin.OutPoint.Builder builderForValue) {
                copyOnWrite();
                ((TransactionInput) this.instance).setPreviousOutput(builderForValue.build());
                return this;
            }

            public Builder mergePreviousOutput(Bitcoin.OutPoint value) {
                copyOnWrite();
                ((TransactionInput) this.instance).mergePreviousOutput(value);
                return this;
            }

            public Builder clearPreviousOutput() {
                copyOnWrite();
                ((TransactionInput) this.instance).clearPreviousOutput();
                return this;
            }

            @Override // wallet.core.jni.proto.Decred.TransactionInputOrBuilder
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

            @Override // wallet.core.jni.proto.Decred.TransactionInputOrBuilder
            public long getValueIn() {
                return ((TransactionInput) this.instance).getValueIn();
            }

            public Builder setValueIn(long value) {
                copyOnWrite();
                ((TransactionInput) this.instance).setValueIn(value);
                return this;
            }

            public Builder clearValueIn() {
                copyOnWrite();
                ((TransactionInput) this.instance).clearValueIn();
                return this;
            }

            @Override // wallet.core.jni.proto.Decred.TransactionInputOrBuilder
            public int getBlockHeight() {
                return ((TransactionInput) this.instance).getBlockHeight();
            }

            public Builder setBlockHeight(int value) {
                copyOnWrite();
                ((TransactionInput) this.instance).setBlockHeight(value);
                return this;
            }

            public Builder clearBlockHeight() {
                copyOnWrite();
                ((TransactionInput) this.instance).clearBlockHeight();
                return this;
            }

            @Override // wallet.core.jni.proto.Decred.TransactionInputOrBuilder
            public int getBlockIndex() {
                return ((TransactionInput) this.instance).getBlockIndex();
            }

            public Builder setBlockIndex(int value) {
                copyOnWrite();
                ((TransactionInput) this.instance).setBlockIndex(value);
                return this;
            }

            public Builder clearBlockIndex() {
                copyOnWrite();
                ((TransactionInput) this.instance).clearBlockIndex();
                return this;
            }

            @Override // wallet.core.jni.proto.Decred.TransactionInputOrBuilder
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
            switch (C73281.f1941xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TransactionInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\t\u0002\u000b\u0003\u0002\u0004\u000b\u0005\u000b\u0006\n", new Object[]{"previousOutput_", "sequence_", "valueIn_", "blockHeight_", "blockIndex_", "script_"});
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

    /* loaded from: classes5.dex */
    public static final class TransactionOutput extends GeneratedMessageLite<TransactionOutput, Builder> implements TransactionOutputOrBuilder {
        private static final TransactionOutput DEFAULT_INSTANCE;
        private static volatile Parser<TransactionOutput> PARSER = null;
        public static final int SCRIPT_FIELD_NUMBER = 3;
        public static final int VALUE_FIELD_NUMBER = 1;
        public static final int VERSION_FIELD_NUMBER = 2;
        private ByteString script_ = ByteString.EMPTY;
        private long value_;
        private int version_;

        private TransactionOutput() {
        }

        @Override // wallet.core.jni.proto.Decred.TransactionOutputOrBuilder
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

        @Override // wallet.core.jni.proto.Decred.TransactionOutputOrBuilder
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

        @Override // wallet.core.jni.proto.Decred.TransactionOutputOrBuilder
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

        /* loaded from: classes5.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TransactionOutput, Builder> implements TransactionOutputOrBuilder {
            /* synthetic */ Builder(C73281 c73281) {
                this();
            }

            private Builder() {
                super(TransactionOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Decred.TransactionOutputOrBuilder
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

            @Override // wallet.core.jni.proto.Decred.TransactionOutputOrBuilder
            public int getVersion() {
                return ((TransactionOutput) this.instance).getVersion();
            }

            public Builder setVersion(int value) {
                copyOnWrite();
                ((TransactionOutput) this.instance).setVersion(value);
                return this;
            }

            public Builder clearVersion() {
                copyOnWrite();
                ((TransactionOutput) this.instance).clearVersion();
                return this;
            }

            @Override // wallet.core.jni.proto.Decred.TransactionOutputOrBuilder
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
            switch (C73281.f1941xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TransactionOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0002\u0002\u000b\u0003\n", new Object[]{"value_", "version_", "script_"});
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

    /* loaded from: classes5.dex */
    public static final class SigningOutput extends GeneratedMessageLite<SigningOutput, Builder> implements SigningOutputOrBuilder {
        private static final SigningOutput DEFAULT_INSTANCE;
        public static final int ENCODED_FIELD_NUMBER = 2;
        public static final int ERROR_FIELD_NUMBER = 4;
        private static volatile Parser<SigningOutput> PARSER = null;
        public static final int TRANSACTION_FIELD_NUMBER = 1;
        public static final int TRANSACTION_ID_FIELD_NUMBER = 3;
        private int error_;
        private Transaction transaction_;
        private ByteString encoded_ = ByteString.EMPTY;
        private String transactionId_ = "";

        private SigningOutput() {
        }

        @Override // wallet.core.jni.proto.Decred.SigningOutputOrBuilder
        public boolean hasTransaction() {
            return this.transaction_ != null;
        }

        @Override // wallet.core.jni.proto.Decred.SigningOutputOrBuilder
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

        @Override // wallet.core.jni.proto.Decred.SigningOutputOrBuilder
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

        @Override // wallet.core.jni.proto.Decred.SigningOutputOrBuilder
        public String getTransactionId() {
            return this.transactionId_;
        }

        @Override // wallet.core.jni.proto.Decred.SigningOutputOrBuilder
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

        @Override // wallet.core.jni.proto.Decred.SigningOutputOrBuilder
        public int getErrorValue() {
            return this.error_;
        }

        @Override // wallet.core.jni.proto.Decred.SigningOutputOrBuilder
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

        /* loaded from: classes5.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<SigningOutput, Builder> implements SigningOutputOrBuilder {
            /* synthetic */ Builder(C73281 c73281) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Decred.SigningOutputOrBuilder
            public boolean hasTransaction() {
                return ((SigningOutput) this.instance).hasTransaction();
            }

            @Override // wallet.core.jni.proto.Decred.SigningOutputOrBuilder
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

            @Override // wallet.core.jni.proto.Decred.SigningOutputOrBuilder
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

            @Override // wallet.core.jni.proto.Decred.SigningOutputOrBuilder
            public String getTransactionId() {
                return ((SigningOutput) this.instance).getTransactionId();
            }

            @Override // wallet.core.jni.proto.Decred.SigningOutputOrBuilder
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

            @Override // wallet.core.jni.proto.Decred.SigningOutputOrBuilder
            public int getErrorValue() {
                return ((SigningOutput) this.instance).getErrorValue();
            }

            public Builder setErrorValue(int value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setErrorValue(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Decred.SigningOutputOrBuilder
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
            switch (C73281.f1941xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\n\u0003Ȉ\u0004\f", new Object[]{"transaction_", "encoded_", "transactionId_", "error_"});
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
