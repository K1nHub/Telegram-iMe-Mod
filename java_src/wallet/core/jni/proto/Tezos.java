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
public final class Tezos {

    /* loaded from: classes6.dex */
    public interface DelegationOperationDataOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getDelegate();

        ByteString getDelegateBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface FA12ParametersOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getEntrypoint();

        ByteString getEntrypointBytes();

        String getFrom();

        ByteString getFromBytes();

        String getTo();

        ByteString getToBytes();

        String getValue();

        ByteString getValueBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface FA2ParametersOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getEntrypoint();

        ByteString getEntrypointBytes();

        TxObject getTxsObject(int index);

        int getTxsObjectCount();

        List<TxObject> getTxsObjectList();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface OperationListOrBuilder extends MessageLiteOrBuilder {
        String getBranch();

        ByteString getBranchBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        Operation getOperations(int index);

        int getOperationsCount();

        List<Operation> getOperationsList();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface OperationOrBuilder extends MessageLiteOrBuilder {
        long getCounter();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        DelegationOperationData getDelegationOperationData();

        long getFee();

        long getGasLimit();

        Operation.OperationKind getKind();

        int getKindValue();

        Operation.OperationDataCase getOperationDataCase();

        RevealOperationData getRevealOperationData();

        String getSource();

        ByteString getSourceBytes();

        long getStorageLimit();

        TransactionOperationData getTransactionOperationData();

        boolean hasDelegationOperationData();

        boolean hasRevealOperationData();

        boolean hasTransactionOperationData();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface OperationParametersOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        FA12Parameters getFa12Parameters();

        FA2Parameters getFa2Parameters();

        OperationParameters.ParametersCase getParametersCase();

        boolean hasFa12Parameters();

        boolean hasFa2Parameters();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface RevealOperationDataOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getPublicKey();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getEncodedOperations();

        OperationList getOperationList();

        ByteString getPrivateKey();

        boolean hasOperationList();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface SigningOutputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getEncoded();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TransactionOperationDataOrBuilder extends MessageLiteOrBuilder {
        long getAmount();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getDestination();

        ByteString getDestinationBytes();

        OperationParameters getParameters();

        boolean hasParameters();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TxObjectOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getFrom();

        ByteString getFromBytes();

        Txs getTxs(int index);

        int getTxsCount();

        List<Txs> getTxsList();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes6.dex */
    public interface TxsOrBuilder extends MessageLiteOrBuilder {
        String getAmount();

        ByteString getAmountBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getTo();

        ByteString getToBytes();

        String getTokenId();

        ByteString getTokenIdBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private Tezos() {
    }

    /* loaded from: classes6.dex */
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        private static final SigningInput DEFAULT_INSTANCE;
        public static final int ENCODED_OPERATIONS_FIELD_NUMBER = 2;
        public static final int OPERATION_LIST_FIELD_NUMBER = 1;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PRIVATE_KEY_FIELD_NUMBER = 3;
        private ByteString encodedOperations_;
        private OperationList operationList_;
        private ByteString privateKey_;

        private SigningInput() {
            ByteString byteString = ByteString.EMPTY;
            this.encodedOperations_ = byteString;
            this.privateKey_ = byteString;
        }

        @Override // wallet.core.jni.proto.Tezos.SigningInputOrBuilder
        public boolean hasOperationList() {
            return this.operationList_ != null;
        }

        @Override // wallet.core.jni.proto.Tezos.SigningInputOrBuilder
        public OperationList getOperationList() {
            OperationList operationList = this.operationList_;
            return operationList == null ? OperationList.getDefaultInstance() : operationList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOperationList(OperationList value) {
            value.getClass();
            this.operationList_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeOperationList(OperationList value) {
            value.getClass();
            OperationList operationList = this.operationList_;
            if (operationList != null && operationList != OperationList.getDefaultInstance()) {
                this.operationList_ = OperationList.newBuilder(this.operationList_).mergeFrom((OperationList.Builder) value).buildPartial();
            } else {
                this.operationList_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOperationList() {
            this.operationList_ = null;
        }

        @Override // wallet.core.jni.proto.Tezos.SigningInputOrBuilder
        public ByteString getEncodedOperations() {
            return this.encodedOperations_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setEncodedOperations(ByteString value) {
            value.getClass();
            this.encodedOperations_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearEncodedOperations() {
            this.encodedOperations_ = getDefaultInstance().getEncodedOperations();
        }

        @Override // wallet.core.jni.proto.Tezos.SigningInputOrBuilder
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

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<SigningInput, Builder> implements SigningInputOrBuilder {
            /* synthetic */ Builder(C68541 c68541) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Tezos.SigningInputOrBuilder
            public boolean hasOperationList() {
                return ((SigningInput) this.instance).hasOperationList();
            }

            @Override // wallet.core.jni.proto.Tezos.SigningInputOrBuilder
            public OperationList getOperationList() {
                return ((SigningInput) this.instance).getOperationList();
            }

            public Builder setOperationList(OperationList value) {
                copyOnWrite();
                ((SigningInput) this.instance).setOperationList(value);
                return this;
            }

            public Builder setOperationList(OperationList.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setOperationList(builderForValue.build());
                return this;
            }

            public Builder mergeOperationList(OperationList value) {
                copyOnWrite();
                ((SigningInput) this.instance).mergeOperationList(value);
                return this;
            }

            public Builder clearOperationList() {
                copyOnWrite();
                ((SigningInput) this.instance).clearOperationList();
                return this;
            }

            @Override // wallet.core.jni.proto.Tezos.SigningInputOrBuilder
            public ByteString getEncodedOperations() {
                return ((SigningInput) this.instance).getEncodedOperations();
            }

            public Builder setEncodedOperations(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setEncodedOperations(value);
                return this;
            }

            public Builder clearEncodedOperations() {
                copyOnWrite();
                ((SigningInput) this.instance).clearEncodedOperations();
                return this;
            }

            @Override // wallet.core.jni.proto.Tezos.SigningInputOrBuilder
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
            switch (C68541.f1827xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\n\u0003\n", new Object[]{"operationList_", "encodedOperations_", "privateKey_"});
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

    /* renamed from: wallet.core.jni.proto.Tezos$1 */
    /* loaded from: classes6.dex */
    static /* synthetic */ class C68541 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f1827xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f1827xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1827xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1827xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1827xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1827xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1827xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1827xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class SigningOutput extends GeneratedMessageLite<SigningOutput, Builder> implements SigningOutputOrBuilder {
        private static final SigningOutput DEFAULT_INSTANCE;
        public static final int ENCODED_FIELD_NUMBER = 1;
        private static volatile Parser<SigningOutput> PARSER;
        private ByteString encoded_ = ByteString.EMPTY;

        private SigningOutput() {
        }

        @Override // wallet.core.jni.proto.Tezos.SigningOutputOrBuilder
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
            /* synthetic */ Builder(C68541 c68541) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Tezos.SigningOutputOrBuilder
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
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68541.f1827xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\n", new Object[]{"encoded_"});
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
    public static final class OperationList extends GeneratedMessageLite<OperationList, Builder> implements OperationListOrBuilder {
        public static final int BRANCH_FIELD_NUMBER = 1;
        private static final OperationList DEFAULT_INSTANCE;
        public static final int OPERATIONS_FIELD_NUMBER = 2;
        private static volatile Parser<OperationList> PARSER;
        private String branch_ = "";
        private Internal.ProtobufList<Operation> operations_ = GeneratedMessageLite.emptyProtobufList();

        private OperationList() {
        }

        @Override // wallet.core.jni.proto.Tezos.OperationListOrBuilder
        public String getBranch() {
            return this.branch_;
        }

        @Override // wallet.core.jni.proto.Tezos.OperationListOrBuilder
        public ByteString getBranchBytes() {
            return ByteString.copyFromUtf8(this.branch_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBranch(String value) {
            value.getClass();
            this.branch_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearBranch() {
            this.branch_ = getDefaultInstance().getBranch();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBranchBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.branch_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Tezos.OperationListOrBuilder
        public List<Operation> getOperationsList() {
            return this.operations_;
        }

        public List<? extends OperationOrBuilder> getOperationsOrBuilderList() {
            return this.operations_;
        }

        @Override // wallet.core.jni.proto.Tezos.OperationListOrBuilder
        public int getOperationsCount() {
            return this.operations_.size();
        }

        @Override // wallet.core.jni.proto.Tezos.OperationListOrBuilder
        public Operation getOperations(int index) {
            return this.operations_.get(index);
        }

        public OperationOrBuilder getOperationsOrBuilder(int index) {
            return this.operations_.get(index);
        }

        private void ensureOperationsIsMutable() {
            Internal.ProtobufList<Operation> protobufList = this.operations_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.operations_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOperations(int index, Operation value) {
            value.getClass();
            ensureOperationsIsMutable();
            this.operations_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addOperations(Operation value) {
            value.getClass();
            ensureOperationsIsMutable();
            this.operations_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addOperations(int index, Operation value) {
            value.getClass();
            ensureOperationsIsMutable();
            this.operations_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllOperations(Iterable<? extends Operation> values) {
            ensureOperationsIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.operations_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOperations() {
            this.operations_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeOperations(int index) {
            ensureOperationsIsMutable();
            this.operations_.remove(index);
        }

        public static OperationList parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (OperationList) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationList parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationList) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationList parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (OperationList) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationList parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationList) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationList parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (OperationList) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationList parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationList) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationList parseFrom(InputStream input) throws IOException {
            return (OperationList) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationList parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationList) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OperationList parseDelimitedFrom(InputStream input) throws IOException {
            return (OperationList) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationList parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationList) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OperationList parseFrom(CodedInputStream input) throws IOException {
            return (OperationList) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationList parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationList) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(OperationList prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<OperationList, Builder> implements OperationListOrBuilder {
            /* synthetic */ Builder(C68541 c68541) {
                this();
            }

            private Builder() {
                super(OperationList.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Tezos.OperationListOrBuilder
            public String getBranch() {
                return ((OperationList) this.instance).getBranch();
            }

            @Override // wallet.core.jni.proto.Tezos.OperationListOrBuilder
            public ByteString getBranchBytes() {
                return ((OperationList) this.instance).getBranchBytes();
            }

            public Builder setBranch(String value) {
                copyOnWrite();
                ((OperationList) this.instance).setBranch(value);
                return this;
            }

            public Builder clearBranch() {
                copyOnWrite();
                ((OperationList) this.instance).clearBranch();
                return this;
            }

            public Builder setBranchBytes(ByteString value) {
                copyOnWrite();
                ((OperationList) this.instance).setBranchBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tezos.OperationListOrBuilder
            public List<Operation> getOperationsList() {
                return Collections.unmodifiableList(((OperationList) this.instance).getOperationsList());
            }

            @Override // wallet.core.jni.proto.Tezos.OperationListOrBuilder
            public int getOperationsCount() {
                return ((OperationList) this.instance).getOperationsCount();
            }

            @Override // wallet.core.jni.proto.Tezos.OperationListOrBuilder
            public Operation getOperations(int index) {
                return ((OperationList) this.instance).getOperations(index);
            }

            public Builder setOperations(int index, Operation value) {
                copyOnWrite();
                ((OperationList) this.instance).setOperations(index, value);
                return this;
            }

            public Builder setOperations(int index, Operation.Builder builderForValue) {
                copyOnWrite();
                ((OperationList) this.instance).setOperations(index, builderForValue.build());
                return this;
            }

            public Builder addOperations(Operation value) {
                copyOnWrite();
                ((OperationList) this.instance).addOperations(value);
                return this;
            }

            public Builder addOperations(int index, Operation value) {
                copyOnWrite();
                ((OperationList) this.instance).addOperations(index, value);
                return this;
            }

            public Builder addOperations(Operation.Builder builderForValue) {
                copyOnWrite();
                ((OperationList) this.instance).addOperations(builderForValue.build());
                return this;
            }

            public Builder addOperations(int index, Operation.Builder builderForValue) {
                copyOnWrite();
                ((OperationList) this.instance).addOperations(index, builderForValue.build());
                return this;
            }

            public Builder addAllOperations(Iterable<? extends Operation> values) {
                copyOnWrite();
                ((OperationList) this.instance).addAllOperations(values);
                return this;
            }

            public Builder clearOperations() {
                copyOnWrite();
                ((OperationList) this.instance).clearOperations();
                return this;
            }

            public Builder removeOperations(int index) {
                copyOnWrite();
                ((OperationList) this.instance).removeOperations(index);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68541.f1827xa1df5c61[method.ordinal()]) {
                case 1:
                    return new OperationList();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001Ȉ\u0002\u001b", new Object[]{"branch_", "operations_", Operation.class});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<OperationList> parser = PARSER;
                    if (parser == null) {
                        synchronized (OperationList.class) {
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
            OperationList operationList = new OperationList();
            DEFAULT_INSTANCE = operationList;
            GeneratedMessageLite.registerDefaultInstance(OperationList.class, operationList);
        }

        public static OperationList getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<OperationList> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class Operation extends GeneratedMessageLite<Operation, Builder> implements OperationOrBuilder {
        public static final int COUNTER_FIELD_NUMBER = 1;
        private static final Operation DEFAULT_INSTANCE;
        public static final int DELEGATION_OPERATION_DATA_FIELD_NUMBER = 11;
        public static final int FEE_FIELD_NUMBER = 3;
        public static final int GAS_LIMIT_FIELD_NUMBER = 4;
        public static final int KIND_FIELD_NUMBER = 7;
        private static volatile Parser<Operation> PARSER = null;
        public static final int REVEAL_OPERATION_DATA_FIELD_NUMBER = 8;
        public static final int SOURCE_FIELD_NUMBER = 2;
        public static final int STORAGE_LIMIT_FIELD_NUMBER = 5;
        public static final int TRANSACTION_OPERATION_DATA_FIELD_NUMBER = 9;
        private long counter_;
        private long fee_;
        private long gasLimit_;
        private int kind_;
        private Object operationData_;
        private long storageLimit_;
        private int operationDataCase_ = 0;
        private String source_ = "";

        private Operation() {
        }

        /* loaded from: classes6.dex */
        public enum OperationKind implements Internal.EnumLite {
            ENDORSEMENT(0),
            REVEAL(107),
            TRANSACTION(108),
            DELEGATION(110),
            UNRECOGNIZED(-1);
            
            public static final int DELEGATION_VALUE = 110;
            public static final int ENDORSEMENT_VALUE = 0;
            public static final int REVEAL_VALUE = 107;
            public static final int TRANSACTION_VALUE = 108;
            private static final Internal.EnumLiteMap<OperationKind> internalValueMap = new Internal.EnumLiteMap<OperationKind>() { // from class: wallet.core.jni.proto.Tezos.Operation.OperationKind.1
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public OperationKind findValueByNumber(int number) {
                    return OperationKind.forNumber(number);
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
            public static OperationKind valueOf(int value) {
                return forNumber(value);
            }

            public static OperationKind forNumber(int value) {
                if (value != 0) {
                    if (value != 110) {
                        if (value != 107) {
                            if (value != 108) {
                                return null;
                            }
                            return TRANSACTION;
                        }
                        return REVEAL;
                    }
                    return DELEGATION;
                }
                return ENDORSEMENT;
            }

            public static Internal.EnumLiteMap<OperationKind> internalGetValueMap() {
                return internalValueMap;
            }

            public static Internal.EnumVerifier internalGetVerifier() {
                return OperationKindVerifier.INSTANCE;
            }

            /* loaded from: classes6.dex */
            private static final class OperationKindVerifier implements Internal.EnumVerifier {
                static final Internal.EnumVerifier INSTANCE = new OperationKindVerifier();

                private OperationKindVerifier() {
                }

                @Override // com.google.protobuf.Internal.EnumVerifier
                public boolean isInRange(int number) {
                    return OperationKind.forNumber(number) != null;
                }
            }

            OperationKind(int value) {
                this.value = value;
            }
        }

        /* loaded from: classes6.dex */
        public enum OperationDataCase {
            REVEAL_OPERATION_DATA(8),
            TRANSACTION_OPERATION_DATA(9),
            DELEGATION_OPERATION_DATA(11),
            OPERATIONDATA_NOT_SET(0);
            
            private final int value;

            OperationDataCase(int value) {
                this.value = value;
            }

            @Deprecated
            public static OperationDataCase valueOf(int value) {
                return forNumber(value);
            }

            public static OperationDataCase forNumber(int value) {
                if (value != 0) {
                    if (value != 11) {
                        if (value != 8) {
                            if (value != 9) {
                                return null;
                            }
                            return TRANSACTION_OPERATION_DATA;
                        }
                        return REVEAL_OPERATION_DATA;
                    }
                    return DELEGATION_OPERATION_DATA;
                }
                return OPERATIONDATA_NOT_SET;
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.Tezos.OperationOrBuilder
        public OperationDataCase getOperationDataCase() {
            return OperationDataCase.forNumber(this.operationDataCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOperationData() {
            this.operationDataCase_ = 0;
            this.operationData_ = null;
        }

        @Override // wallet.core.jni.proto.Tezos.OperationOrBuilder
        public long getCounter() {
            return this.counter_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCounter(long value) {
            this.counter_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCounter() {
            this.counter_ = 0L;
        }

        @Override // wallet.core.jni.proto.Tezos.OperationOrBuilder
        public String getSource() {
            return this.source_;
        }

        @Override // wallet.core.jni.proto.Tezos.OperationOrBuilder
        public ByteString getSourceBytes() {
            return ByteString.copyFromUtf8(this.source_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSource(String value) {
            value.getClass();
            this.source_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSource() {
            this.source_ = getDefaultInstance().getSource();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSourceBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.source_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Tezos.OperationOrBuilder
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

        @Override // wallet.core.jni.proto.Tezos.OperationOrBuilder
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

        @Override // wallet.core.jni.proto.Tezos.OperationOrBuilder
        public long getStorageLimit() {
            return this.storageLimit_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStorageLimit(long value) {
            this.storageLimit_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStorageLimit() {
            this.storageLimit_ = 0L;
        }

        @Override // wallet.core.jni.proto.Tezos.OperationOrBuilder
        public int getKindValue() {
            return this.kind_;
        }

        @Override // wallet.core.jni.proto.Tezos.OperationOrBuilder
        public OperationKind getKind() {
            OperationKind forNumber = OperationKind.forNumber(this.kind_);
            return forNumber == null ? OperationKind.UNRECOGNIZED : forNumber;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setKindValue(int value) {
            this.kind_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setKind(OperationKind value) {
            this.kind_ = value.getNumber();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearKind() {
            this.kind_ = 0;
        }

        @Override // wallet.core.jni.proto.Tezos.OperationOrBuilder
        public boolean hasRevealOperationData() {
            return this.operationDataCase_ == 8;
        }

        @Override // wallet.core.jni.proto.Tezos.OperationOrBuilder
        public RevealOperationData getRevealOperationData() {
            if (this.operationDataCase_ == 8) {
                return (RevealOperationData) this.operationData_;
            }
            return RevealOperationData.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRevealOperationData(RevealOperationData value) {
            value.getClass();
            this.operationData_ = value;
            this.operationDataCase_ = 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeRevealOperationData(RevealOperationData value) {
            value.getClass();
            if (this.operationDataCase_ == 8 && this.operationData_ != RevealOperationData.getDefaultInstance()) {
                this.operationData_ = RevealOperationData.newBuilder((RevealOperationData) this.operationData_).mergeFrom((RevealOperationData.Builder) value).buildPartial();
            } else {
                this.operationData_ = value;
            }
            this.operationDataCase_ = 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearRevealOperationData() {
            if (this.operationDataCase_ == 8) {
                this.operationDataCase_ = 0;
                this.operationData_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Tezos.OperationOrBuilder
        public boolean hasTransactionOperationData() {
            return this.operationDataCase_ == 9;
        }

        @Override // wallet.core.jni.proto.Tezos.OperationOrBuilder
        public TransactionOperationData getTransactionOperationData() {
            if (this.operationDataCase_ == 9) {
                return (TransactionOperationData) this.operationData_;
            }
            return TransactionOperationData.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTransactionOperationData(TransactionOperationData value) {
            value.getClass();
            this.operationData_ = value;
            this.operationDataCase_ = 9;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTransactionOperationData(TransactionOperationData value) {
            value.getClass();
            if (this.operationDataCase_ == 9 && this.operationData_ != TransactionOperationData.getDefaultInstance()) {
                this.operationData_ = TransactionOperationData.newBuilder((TransactionOperationData) this.operationData_).mergeFrom((TransactionOperationData.Builder) value).buildPartial();
            } else {
                this.operationData_ = value;
            }
            this.operationDataCase_ = 9;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransactionOperationData() {
            if (this.operationDataCase_ == 9) {
                this.operationDataCase_ = 0;
                this.operationData_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Tezos.OperationOrBuilder
        public boolean hasDelegationOperationData() {
            return this.operationDataCase_ == 11;
        }

        @Override // wallet.core.jni.proto.Tezos.OperationOrBuilder
        public DelegationOperationData getDelegationOperationData() {
            if (this.operationDataCase_ == 11) {
                return (DelegationOperationData) this.operationData_;
            }
            return DelegationOperationData.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDelegationOperationData(DelegationOperationData value) {
            value.getClass();
            this.operationData_ = value;
            this.operationDataCase_ = 11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeDelegationOperationData(DelegationOperationData value) {
            value.getClass();
            if (this.operationDataCase_ == 11 && this.operationData_ != DelegationOperationData.getDefaultInstance()) {
                this.operationData_ = DelegationOperationData.newBuilder((DelegationOperationData) this.operationData_).mergeFrom((DelegationOperationData.Builder) value).buildPartial();
            } else {
                this.operationData_ = value;
            }
            this.operationDataCase_ = 11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDelegationOperationData() {
            if (this.operationDataCase_ == 11) {
                this.operationDataCase_ = 0;
                this.operationData_ = null;
            }
        }

        public static Operation parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (Operation) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Operation parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Operation) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Operation parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (Operation) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Operation parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Operation) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Operation parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (Operation) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Operation parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Operation) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Operation parseFrom(InputStream input) throws IOException {
            return (Operation) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Operation parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Operation) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Operation parseDelimitedFrom(InputStream input) throws IOException {
            return (Operation) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static Operation parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Operation) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Operation parseFrom(CodedInputStream input) throws IOException {
            return (Operation) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Operation parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Operation) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(Operation prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Operation, Builder> implements OperationOrBuilder {
            /* synthetic */ Builder(C68541 c68541) {
                this();
            }

            private Builder() {
                super(Operation.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Tezos.OperationOrBuilder
            public OperationDataCase getOperationDataCase() {
                return ((Operation) this.instance).getOperationDataCase();
            }

            public Builder clearOperationData() {
                copyOnWrite();
                ((Operation) this.instance).clearOperationData();
                return this;
            }

            @Override // wallet.core.jni.proto.Tezos.OperationOrBuilder
            public long getCounter() {
                return ((Operation) this.instance).getCounter();
            }

            public Builder setCounter(long value) {
                copyOnWrite();
                ((Operation) this.instance).setCounter(value);
                return this;
            }

            public Builder clearCounter() {
                copyOnWrite();
                ((Operation) this.instance).clearCounter();
                return this;
            }

            @Override // wallet.core.jni.proto.Tezos.OperationOrBuilder
            public String getSource() {
                return ((Operation) this.instance).getSource();
            }

            @Override // wallet.core.jni.proto.Tezos.OperationOrBuilder
            public ByteString getSourceBytes() {
                return ((Operation) this.instance).getSourceBytes();
            }

            public Builder setSource(String value) {
                copyOnWrite();
                ((Operation) this.instance).setSource(value);
                return this;
            }

            public Builder clearSource() {
                copyOnWrite();
                ((Operation) this.instance).clearSource();
                return this;
            }

            public Builder setSourceBytes(ByteString value) {
                copyOnWrite();
                ((Operation) this.instance).setSourceBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tezos.OperationOrBuilder
            public long getFee() {
                return ((Operation) this.instance).getFee();
            }

            public Builder setFee(long value) {
                copyOnWrite();
                ((Operation) this.instance).setFee(value);
                return this;
            }

            public Builder clearFee() {
                copyOnWrite();
                ((Operation) this.instance).clearFee();
                return this;
            }

            @Override // wallet.core.jni.proto.Tezos.OperationOrBuilder
            public long getGasLimit() {
                return ((Operation) this.instance).getGasLimit();
            }

            public Builder setGasLimit(long value) {
                copyOnWrite();
                ((Operation) this.instance).setGasLimit(value);
                return this;
            }

            public Builder clearGasLimit() {
                copyOnWrite();
                ((Operation) this.instance).clearGasLimit();
                return this;
            }

            @Override // wallet.core.jni.proto.Tezos.OperationOrBuilder
            public long getStorageLimit() {
                return ((Operation) this.instance).getStorageLimit();
            }

            public Builder setStorageLimit(long value) {
                copyOnWrite();
                ((Operation) this.instance).setStorageLimit(value);
                return this;
            }

            public Builder clearStorageLimit() {
                copyOnWrite();
                ((Operation) this.instance).clearStorageLimit();
                return this;
            }

            @Override // wallet.core.jni.proto.Tezos.OperationOrBuilder
            public int getKindValue() {
                return ((Operation) this.instance).getKindValue();
            }

            public Builder setKindValue(int value) {
                copyOnWrite();
                ((Operation) this.instance).setKindValue(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tezos.OperationOrBuilder
            public OperationKind getKind() {
                return ((Operation) this.instance).getKind();
            }

            public Builder setKind(OperationKind value) {
                copyOnWrite();
                ((Operation) this.instance).setKind(value);
                return this;
            }

            public Builder clearKind() {
                copyOnWrite();
                ((Operation) this.instance).clearKind();
                return this;
            }

            @Override // wallet.core.jni.proto.Tezos.OperationOrBuilder
            public boolean hasRevealOperationData() {
                return ((Operation) this.instance).hasRevealOperationData();
            }

            @Override // wallet.core.jni.proto.Tezos.OperationOrBuilder
            public RevealOperationData getRevealOperationData() {
                return ((Operation) this.instance).getRevealOperationData();
            }

            public Builder setRevealOperationData(RevealOperationData value) {
                copyOnWrite();
                ((Operation) this.instance).setRevealOperationData(value);
                return this;
            }

            public Builder setRevealOperationData(RevealOperationData.Builder builderForValue) {
                copyOnWrite();
                ((Operation) this.instance).setRevealOperationData(builderForValue.build());
                return this;
            }

            public Builder mergeRevealOperationData(RevealOperationData value) {
                copyOnWrite();
                ((Operation) this.instance).mergeRevealOperationData(value);
                return this;
            }

            public Builder clearRevealOperationData() {
                copyOnWrite();
                ((Operation) this.instance).clearRevealOperationData();
                return this;
            }

            @Override // wallet.core.jni.proto.Tezos.OperationOrBuilder
            public boolean hasTransactionOperationData() {
                return ((Operation) this.instance).hasTransactionOperationData();
            }

            @Override // wallet.core.jni.proto.Tezos.OperationOrBuilder
            public TransactionOperationData getTransactionOperationData() {
                return ((Operation) this.instance).getTransactionOperationData();
            }

            public Builder setTransactionOperationData(TransactionOperationData value) {
                copyOnWrite();
                ((Operation) this.instance).setTransactionOperationData(value);
                return this;
            }

            public Builder setTransactionOperationData(TransactionOperationData.Builder builderForValue) {
                copyOnWrite();
                ((Operation) this.instance).setTransactionOperationData(builderForValue.build());
                return this;
            }

            public Builder mergeTransactionOperationData(TransactionOperationData value) {
                copyOnWrite();
                ((Operation) this.instance).mergeTransactionOperationData(value);
                return this;
            }

            public Builder clearTransactionOperationData() {
                copyOnWrite();
                ((Operation) this.instance).clearTransactionOperationData();
                return this;
            }

            @Override // wallet.core.jni.proto.Tezos.OperationOrBuilder
            public boolean hasDelegationOperationData() {
                return ((Operation) this.instance).hasDelegationOperationData();
            }

            @Override // wallet.core.jni.proto.Tezos.OperationOrBuilder
            public DelegationOperationData getDelegationOperationData() {
                return ((Operation) this.instance).getDelegationOperationData();
            }

            public Builder setDelegationOperationData(DelegationOperationData value) {
                copyOnWrite();
                ((Operation) this.instance).setDelegationOperationData(value);
                return this;
            }

            public Builder setDelegationOperationData(DelegationOperationData.Builder builderForValue) {
                copyOnWrite();
                ((Operation) this.instance).setDelegationOperationData(builderForValue.build());
                return this;
            }

            public Builder mergeDelegationOperationData(DelegationOperationData value) {
                copyOnWrite();
                ((Operation) this.instance).mergeDelegationOperationData(value);
                return this;
            }

            public Builder clearDelegationOperationData() {
                copyOnWrite();
                ((Operation) this.instance).clearDelegationOperationData();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68541.f1827xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Operation();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\t\u0001\u0000\u0001\u000b\t\u0000\u0000\u0000\u0001\u0002\u0002Ȉ\u0003\u0002\u0004\u0002\u0005\u0002\u0007\f\b<\u0000\t<\u0000\u000b<\u0000", new Object[]{"operationData_", "operationDataCase_", "counter_", "source_", "fee_", "gasLimit_", "storageLimit_", "kind_", RevealOperationData.class, TransactionOperationData.class, DelegationOperationData.class});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Operation> parser = PARSER;
                    if (parser == null) {
                        synchronized (Operation.class) {
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
            Operation operation = new Operation();
            DEFAULT_INSTANCE = operation;
            GeneratedMessageLite.registerDefaultInstance(Operation.class, operation);
        }

        public static Operation getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Operation> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class FA12Parameters extends GeneratedMessageLite<FA12Parameters, Builder> implements FA12ParametersOrBuilder {
        private static final FA12Parameters DEFAULT_INSTANCE;
        public static final int ENTRYPOINT_FIELD_NUMBER = 1;
        public static final int FROM_FIELD_NUMBER = 2;
        private static volatile Parser<FA12Parameters> PARSER = null;
        public static final int TO_FIELD_NUMBER = 3;
        public static final int VALUE_FIELD_NUMBER = 4;
        private String entrypoint_ = "";
        private String from_ = "";
        private String to_ = "";
        private String value_ = "";

        private FA12Parameters() {
        }

        @Override // wallet.core.jni.proto.Tezos.FA12ParametersOrBuilder
        public String getEntrypoint() {
            return this.entrypoint_;
        }

        @Override // wallet.core.jni.proto.Tezos.FA12ParametersOrBuilder
        public ByteString getEntrypointBytes() {
            return ByteString.copyFromUtf8(this.entrypoint_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setEntrypoint(String value) {
            value.getClass();
            this.entrypoint_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearEntrypoint() {
            this.entrypoint_ = getDefaultInstance().getEntrypoint();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setEntrypointBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.entrypoint_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Tezos.FA12ParametersOrBuilder
        public String getFrom() {
            return this.from_;
        }

        @Override // wallet.core.jni.proto.Tezos.FA12ParametersOrBuilder
        public ByteString getFromBytes() {
            return ByteString.copyFromUtf8(this.from_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFrom(String value) {
            value.getClass();
            this.from_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFrom() {
            this.from_ = getDefaultInstance().getFrom();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFromBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.from_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Tezos.FA12ParametersOrBuilder
        public String getTo() {
            return this.to_;
        }

        @Override // wallet.core.jni.proto.Tezos.FA12ParametersOrBuilder
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

        @Override // wallet.core.jni.proto.Tezos.FA12ParametersOrBuilder
        public String getValue() {
            return this.value_;
        }

        @Override // wallet.core.jni.proto.Tezos.FA12ParametersOrBuilder
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

        public static FA12Parameters parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (FA12Parameters) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static FA12Parameters parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (FA12Parameters) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static FA12Parameters parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (FA12Parameters) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static FA12Parameters parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (FA12Parameters) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static FA12Parameters parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (FA12Parameters) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static FA12Parameters parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (FA12Parameters) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static FA12Parameters parseFrom(InputStream input) throws IOException {
            return (FA12Parameters) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static FA12Parameters parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (FA12Parameters) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static FA12Parameters parseDelimitedFrom(InputStream input) throws IOException {
            return (FA12Parameters) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static FA12Parameters parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (FA12Parameters) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static FA12Parameters parseFrom(CodedInputStream input) throws IOException {
            return (FA12Parameters) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static FA12Parameters parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (FA12Parameters) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(FA12Parameters prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<FA12Parameters, Builder> implements FA12ParametersOrBuilder {
            /* synthetic */ Builder(C68541 c68541) {
                this();
            }

            private Builder() {
                super(FA12Parameters.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Tezos.FA12ParametersOrBuilder
            public String getEntrypoint() {
                return ((FA12Parameters) this.instance).getEntrypoint();
            }

            @Override // wallet.core.jni.proto.Tezos.FA12ParametersOrBuilder
            public ByteString getEntrypointBytes() {
                return ((FA12Parameters) this.instance).getEntrypointBytes();
            }

            public Builder setEntrypoint(String value) {
                copyOnWrite();
                ((FA12Parameters) this.instance).setEntrypoint(value);
                return this;
            }

            public Builder clearEntrypoint() {
                copyOnWrite();
                ((FA12Parameters) this.instance).clearEntrypoint();
                return this;
            }

            public Builder setEntrypointBytes(ByteString value) {
                copyOnWrite();
                ((FA12Parameters) this.instance).setEntrypointBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tezos.FA12ParametersOrBuilder
            public String getFrom() {
                return ((FA12Parameters) this.instance).getFrom();
            }

            @Override // wallet.core.jni.proto.Tezos.FA12ParametersOrBuilder
            public ByteString getFromBytes() {
                return ((FA12Parameters) this.instance).getFromBytes();
            }

            public Builder setFrom(String value) {
                copyOnWrite();
                ((FA12Parameters) this.instance).setFrom(value);
                return this;
            }

            public Builder clearFrom() {
                copyOnWrite();
                ((FA12Parameters) this.instance).clearFrom();
                return this;
            }

            public Builder setFromBytes(ByteString value) {
                copyOnWrite();
                ((FA12Parameters) this.instance).setFromBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tezos.FA12ParametersOrBuilder
            public String getTo() {
                return ((FA12Parameters) this.instance).getTo();
            }

            @Override // wallet.core.jni.proto.Tezos.FA12ParametersOrBuilder
            public ByteString getToBytes() {
                return ((FA12Parameters) this.instance).getToBytes();
            }

            public Builder setTo(String value) {
                copyOnWrite();
                ((FA12Parameters) this.instance).setTo(value);
                return this;
            }

            public Builder clearTo() {
                copyOnWrite();
                ((FA12Parameters) this.instance).clearTo();
                return this;
            }

            public Builder setToBytes(ByteString value) {
                copyOnWrite();
                ((FA12Parameters) this.instance).setToBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tezos.FA12ParametersOrBuilder
            public String getValue() {
                return ((FA12Parameters) this.instance).getValue();
            }

            @Override // wallet.core.jni.proto.Tezos.FA12ParametersOrBuilder
            public ByteString getValueBytes() {
                return ((FA12Parameters) this.instance).getValueBytes();
            }

            public Builder setValue(String value) {
                copyOnWrite();
                ((FA12Parameters) this.instance).setValue(value);
                return this;
            }

            public Builder clearValue() {
                copyOnWrite();
                ((FA12Parameters) this.instance).clearValue();
                return this;
            }

            public Builder setValueBytes(ByteString value) {
                copyOnWrite();
                ((FA12Parameters) this.instance).setValueBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68541.f1827xa1df5c61[method.ordinal()]) {
                case 1:
                    return new FA12Parameters();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004Ȉ", new Object[]{"entrypoint_", "from_", "to_", "value_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<FA12Parameters> parser = PARSER;
                    if (parser == null) {
                        synchronized (FA12Parameters.class) {
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
            FA12Parameters fA12Parameters = new FA12Parameters();
            DEFAULT_INSTANCE = fA12Parameters;
            GeneratedMessageLite.registerDefaultInstance(FA12Parameters.class, fA12Parameters);
        }

        public static FA12Parameters getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<FA12Parameters> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class Txs extends GeneratedMessageLite<Txs, Builder> implements TxsOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 3;
        private static final Txs DEFAULT_INSTANCE;
        private static volatile Parser<Txs> PARSER = null;
        public static final int TOKEN_ID_FIELD_NUMBER = 2;
        public static final int TO_FIELD_NUMBER = 1;
        private String to_ = "";
        private String tokenId_ = "";
        private String amount_ = "";

        private Txs() {
        }

        @Override // wallet.core.jni.proto.Tezos.TxsOrBuilder
        public String getTo() {
            return this.to_;
        }

        @Override // wallet.core.jni.proto.Tezos.TxsOrBuilder
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

        @Override // wallet.core.jni.proto.Tezos.TxsOrBuilder
        public String getTokenId() {
            return this.tokenId_;
        }

        @Override // wallet.core.jni.proto.Tezos.TxsOrBuilder
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

        @Override // wallet.core.jni.proto.Tezos.TxsOrBuilder
        public String getAmount() {
            return this.amount_;
        }

        @Override // wallet.core.jni.proto.Tezos.TxsOrBuilder
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

        public static Txs parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (Txs) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Txs parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Txs) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Txs parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (Txs) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Txs parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Txs) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Txs parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (Txs) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Txs parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Txs) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Txs parseFrom(InputStream input) throws IOException {
            return (Txs) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Txs parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Txs) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Txs parseDelimitedFrom(InputStream input) throws IOException {
            return (Txs) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static Txs parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Txs) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Txs parseFrom(CodedInputStream input) throws IOException {
            return (Txs) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Txs parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Txs) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(Txs prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Txs, Builder> implements TxsOrBuilder {
            /* synthetic */ Builder(C68541 c68541) {
                this();
            }

            private Builder() {
                super(Txs.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Tezos.TxsOrBuilder
            public String getTo() {
                return ((Txs) this.instance).getTo();
            }

            @Override // wallet.core.jni.proto.Tezos.TxsOrBuilder
            public ByteString getToBytes() {
                return ((Txs) this.instance).getToBytes();
            }

            public Builder setTo(String value) {
                copyOnWrite();
                ((Txs) this.instance).setTo(value);
                return this;
            }

            public Builder clearTo() {
                copyOnWrite();
                ((Txs) this.instance).clearTo();
                return this;
            }

            public Builder setToBytes(ByteString value) {
                copyOnWrite();
                ((Txs) this.instance).setToBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tezos.TxsOrBuilder
            public String getTokenId() {
                return ((Txs) this.instance).getTokenId();
            }

            @Override // wallet.core.jni.proto.Tezos.TxsOrBuilder
            public ByteString getTokenIdBytes() {
                return ((Txs) this.instance).getTokenIdBytes();
            }

            public Builder setTokenId(String value) {
                copyOnWrite();
                ((Txs) this.instance).setTokenId(value);
                return this;
            }

            public Builder clearTokenId() {
                copyOnWrite();
                ((Txs) this.instance).clearTokenId();
                return this;
            }

            public Builder setTokenIdBytes(ByteString value) {
                copyOnWrite();
                ((Txs) this.instance).setTokenIdBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tezos.TxsOrBuilder
            public String getAmount() {
                return ((Txs) this.instance).getAmount();
            }

            @Override // wallet.core.jni.proto.Tezos.TxsOrBuilder
            public ByteString getAmountBytes() {
                return ((Txs) this.instance).getAmountBytes();
            }

            public Builder setAmount(String value) {
                copyOnWrite();
                ((Txs) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((Txs) this.instance).clearAmount();
                return this;
            }

            public Builder setAmountBytes(ByteString value) {
                copyOnWrite();
                ((Txs) this.instance).setAmountBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68541.f1827xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Txs();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ", new Object[]{"to_", "tokenId_", "amount_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Txs> parser = PARSER;
                    if (parser == null) {
                        synchronized (Txs.class) {
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
            Txs txs = new Txs();
            DEFAULT_INSTANCE = txs;
            GeneratedMessageLite.registerDefaultInstance(Txs.class, txs);
        }

        public static Txs getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Txs> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class TxObject extends GeneratedMessageLite<TxObject, Builder> implements TxObjectOrBuilder {
        private static final TxObject DEFAULT_INSTANCE;
        public static final int FROM_FIELD_NUMBER = 1;
        private static volatile Parser<TxObject> PARSER = null;
        public static final int TXS_FIELD_NUMBER = 2;
        private String from_ = "";
        private Internal.ProtobufList<Txs> txs_ = GeneratedMessageLite.emptyProtobufList();

        private TxObject() {
        }

        @Override // wallet.core.jni.proto.Tezos.TxObjectOrBuilder
        public String getFrom() {
            return this.from_;
        }

        @Override // wallet.core.jni.proto.Tezos.TxObjectOrBuilder
        public ByteString getFromBytes() {
            return ByteString.copyFromUtf8(this.from_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFrom(String value) {
            value.getClass();
            this.from_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFrom() {
            this.from_ = getDefaultInstance().getFrom();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFromBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.from_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Tezos.TxObjectOrBuilder
        public List<Txs> getTxsList() {
            return this.txs_;
        }

        public List<? extends TxsOrBuilder> getTxsOrBuilderList() {
            return this.txs_;
        }

        @Override // wallet.core.jni.proto.Tezos.TxObjectOrBuilder
        public int getTxsCount() {
            return this.txs_.size();
        }

        @Override // wallet.core.jni.proto.Tezos.TxObjectOrBuilder
        public Txs getTxs(int index) {
            return this.txs_.get(index);
        }

        public TxsOrBuilder getTxsOrBuilder(int index) {
            return this.txs_.get(index);
        }

        private void ensureTxsIsMutable() {
            Internal.ProtobufList<Txs> protobufList = this.txs_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.txs_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTxs(int index, Txs value) {
            value.getClass();
            ensureTxsIsMutable();
            this.txs_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addTxs(Txs value) {
            value.getClass();
            ensureTxsIsMutable();
            this.txs_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addTxs(int index, Txs value) {
            value.getClass();
            ensureTxsIsMutable();
            this.txs_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllTxs(Iterable<? extends Txs> values) {
            ensureTxsIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.txs_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTxs() {
            this.txs_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeTxs(int index) {
            ensureTxsIsMutable();
            this.txs_.remove(index);
        }

        public static TxObject parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TxObject) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TxObject parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TxObject) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TxObject parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TxObject) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TxObject parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TxObject) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TxObject parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TxObject) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TxObject parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TxObject) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TxObject parseFrom(InputStream input) throws IOException {
            return (TxObject) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TxObject parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TxObject) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TxObject parseDelimitedFrom(InputStream input) throws IOException {
            return (TxObject) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TxObject parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TxObject) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TxObject parseFrom(CodedInputStream input) throws IOException {
            return (TxObject) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TxObject parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TxObject) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TxObject prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TxObject, Builder> implements TxObjectOrBuilder {
            /* synthetic */ Builder(C68541 c68541) {
                this();
            }

            private Builder() {
                super(TxObject.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Tezos.TxObjectOrBuilder
            public String getFrom() {
                return ((TxObject) this.instance).getFrom();
            }

            @Override // wallet.core.jni.proto.Tezos.TxObjectOrBuilder
            public ByteString getFromBytes() {
                return ((TxObject) this.instance).getFromBytes();
            }

            public Builder setFrom(String value) {
                copyOnWrite();
                ((TxObject) this.instance).setFrom(value);
                return this;
            }

            public Builder clearFrom() {
                copyOnWrite();
                ((TxObject) this.instance).clearFrom();
                return this;
            }

            public Builder setFromBytes(ByteString value) {
                copyOnWrite();
                ((TxObject) this.instance).setFromBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tezos.TxObjectOrBuilder
            public List<Txs> getTxsList() {
                return Collections.unmodifiableList(((TxObject) this.instance).getTxsList());
            }

            @Override // wallet.core.jni.proto.Tezos.TxObjectOrBuilder
            public int getTxsCount() {
                return ((TxObject) this.instance).getTxsCount();
            }

            @Override // wallet.core.jni.proto.Tezos.TxObjectOrBuilder
            public Txs getTxs(int index) {
                return ((TxObject) this.instance).getTxs(index);
            }

            public Builder setTxs(int index, Txs value) {
                copyOnWrite();
                ((TxObject) this.instance).setTxs(index, value);
                return this;
            }

            public Builder setTxs(int index, Txs.Builder builderForValue) {
                copyOnWrite();
                ((TxObject) this.instance).setTxs(index, builderForValue.build());
                return this;
            }

            public Builder addTxs(Txs value) {
                copyOnWrite();
                ((TxObject) this.instance).addTxs(value);
                return this;
            }

            public Builder addTxs(int index, Txs value) {
                copyOnWrite();
                ((TxObject) this.instance).addTxs(index, value);
                return this;
            }

            public Builder addTxs(Txs.Builder builderForValue) {
                copyOnWrite();
                ((TxObject) this.instance).addTxs(builderForValue.build());
                return this;
            }

            public Builder addTxs(int index, Txs.Builder builderForValue) {
                copyOnWrite();
                ((TxObject) this.instance).addTxs(index, builderForValue.build());
                return this;
            }

            public Builder addAllTxs(Iterable<? extends Txs> values) {
                copyOnWrite();
                ((TxObject) this.instance).addAllTxs(values);
                return this;
            }

            public Builder clearTxs() {
                copyOnWrite();
                ((TxObject) this.instance).clearTxs();
                return this;
            }

            public Builder removeTxs(int index) {
                copyOnWrite();
                ((TxObject) this.instance).removeTxs(index);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68541.f1827xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TxObject();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001Ȉ\u0002\u001b", new Object[]{"from_", "txs_", Txs.class});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TxObject> parser = PARSER;
                    if (parser == null) {
                        synchronized (TxObject.class) {
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
            TxObject txObject = new TxObject();
            DEFAULT_INSTANCE = txObject;
            GeneratedMessageLite.registerDefaultInstance(TxObject.class, txObject);
        }

        public static TxObject getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TxObject> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class FA2Parameters extends GeneratedMessageLite<FA2Parameters, Builder> implements FA2ParametersOrBuilder {
        private static final FA2Parameters DEFAULT_INSTANCE;
        public static final int ENTRYPOINT_FIELD_NUMBER = 1;
        private static volatile Parser<FA2Parameters> PARSER = null;
        public static final int TXS_OBJECT_FIELD_NUMBER = 2;
        private String entrypoint_ = "";
        private Internal.ProtobufList<TxObject> txsObject_ = GeneratedMessageLite.emptyProtobufList();

        private FA2Parameters() {
        }

        @Override // wallet.core.jni.proto.Tezos.FA2ParametersOrBuilder
        public String getEntrypoint() {
            return this.entrypoint_;
        }

        @Override // wallet.core.jni.proto.Tezos.FA2ParametersOrBuilder
        public ByteString getEntrypointBytes() {
            return ByteString.copyFromUtf8(this.entrypoint_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setEntrypoint(String value) {
            value.getClass();
            this.entrypoint_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearEntrypoint() {
            this.entrypoint_ = getDefaultInstance().getEntrypoint();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setEntrypointBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.entrypoint_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Tezos.FA2ParametersOrBuilder
        public List<TxObject> getTxsObjectList() {
            return this.txsObject_;
        }

        public List<? extends TxObjectOrBuilder> getTxsObjectOrBuilderList() {
            return this.txsObject_;
        }

        @Override // wallet.core.jni.proto.Tezos.FA2ParametersOrBuilder
        public int getTxsObjectCount() {
            return this.txsObject_.size();
        }

        @Override // wallet.core.jni.proto.Tezos.FA2ParametersOrBuilder
        public TxObject getTxsObject(int index) {
            return this.txsObject_.get(index);
        }

        public TxObjectOrBuilder getTxsObjectOrBuilder(int index) {
            return this.txsObject_.get(index);
        }

        private void ensureTxsObjectIsMutable() {
            Internal.ProtobufList<TxObject> protobufList = this.txsObject_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.txsObject_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTxsObject(int index, TxObject value) {
            value.getClass();
            ensureTxsObjectIsMutable();
            this.txsObject_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addTxsObject(TxObject value) {
            value.getClass();
            ensureTxsObjectIsMutable();
            this.txsObject_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addTxsObject(int index, TxObject value) {
            value.getClass();
            ensureTxsObjectIsMutable();
            this.txsObject_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllTxsObject(Iterable<? extends TxObject> values) {
            ensureTxsObjectIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.txsObject_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTxsObject() {
            this.txsObject_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeTxsObject(int index) {
            ensureTxsObjectIsMutable();
            this.txsObject_.remove(index);
        }

        public static FA2Parameters parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (FA2Parameters) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static FA2Parameters parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (FA2Parameters) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static FA2Parameters parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (FA2Parameters) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static FA2Parameters parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (FA2Parameters) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static FA2Parameters parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (FA2Parameters) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static FA2Parameters parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (FA2Parameters) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static FA2Parameters parseFrom(InputStream input) throws IOException {
            return (FA2Parameters) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static FA2Parameters parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (FA2Parameters) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static FA2Parameters parseDelimitedFrom(InputStream input) throws IOException {
            return (FA2Parameters) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static FA2Parameters parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (FA2Parameters) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static FA2Parameters parseFrom(CodedInputStream input) throws IOException {
            return (FA2Parameters) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static FA2Parameters parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (FA2Parameters) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(FA2Parameters prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<FA2Parameters, Builder> implements FA2ParametersOrBuilder {
            /* synthetic */ Builder(C68541 c68541) {
                this();
            }

            private Builder() {
                super(FA2Parameters.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Tezos.FA2ParametersOrBuilder
            public String getEntrypoint() {
                return ((FA2Parameters) this.instance).getEntrypoint();
            }

            @Override // wallet.core.jni.proto.Tezos.FA2ParametersOrBuilder
            public ByteString getEntrypointBytes() {
                return ((FA2Parameters) this.instance).getEntrypointBytes();
            }

            public Builder setEntrypoint(String value) {
                copyOnWrite();
                ((FA2Parameters) this.instance).setEntrypoint(value);
                return this;
            }

            public Builder clearEntrypoint() {
                copyOnWrite();
                ((FA2Parameters) this.instance).clearEntrypoint();
                return this;
            }

            public Builder setEntrypointBytes(ByteString value) {
                copyOnWrite();
                ((FA2Parameters) this.instance).setEntrypointBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tezos.FA2ParametersOrBuilder
            public List<TxObject> getTxsObjectList() {
                return Collections.unmodifiableList(((FA2Parameters) this.instance).getTxsObjectList());
            }

            @Override // wallet.core.jni.proto.Tezos.FA2ParametersOrBuilder
            public int getTxsObjectCount() {
                return ((FA2Parameters) this.instance).getTxsObjectCount();
            }

            @Override // wallet.core.jni.proto.Tezos.FA2ParametersOrBuilder
            public TxObject getTxsObject(int index) {
                return ((FA2Parameters) this.instance).getTxsObject(index);
            }

            public Builder setTxsObject(int index, TxObject value) {
                copyOnWrite();
                ((FA2Parameters) this.instance).setTxsObject(index, value);
                return this;
            }

            public Builder setTxsObject(int index, TxObject.Builder builderForValue) {
                copyOnWrite();
                ((FA2Parameters) this.instance).setTxsObject(index, builderForValue.build());
                return this;
            }

            public Builder addTxsObject(TxObject value) {
                copyOnWrite();
                ((FA2Parameters) this.instance).addTxsObject(value);
                return this;
            }

            public Builder addTxsObject(int index, TxObject value) {
                copyOnWrite();
                ((FA2Parameters) this.instance).addTxsObject(index, value);
                return this;
            }

            public Builder addTxsObject(TxObject.Builder builderForValue) {
                copyOnWrite();
                ((FA2Parameters) this.instance).addTxsObject(builderForValue.build());
                return this;
            }

            public Builder addTxsObject(int index, TxObject.Builder builderForValue) {
                copyOnWrite();
                ((FA2Parameters) this.instance).addTxsObject(index, builderForValue.build());
                return this;
            }

            public Builder addAllTxsObject(Iterable<? extends TxObject> values) {
                copyOnWrite();
                ((FA2Parameters) this.instance).addAllTxsObject(values);
                return this;
            }

            public Builder clearTxsObject() {
                copyOnWrite();
                ((FA2Parameters) this.instance).clearTxsObject();
                return this;
            }

            public Builder removeTxsObject(int index) {
                copyOnWrite();
                ((FA2Parameters) this.instance).removeTxsObject(index);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68541.f1827xa1df5c61[method.ordinal()]) {
                case 1:
                    return new FA2Parameters();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001Ȉ\u0002\u001b", new Object[]{"entrypoint_", "txsObject_", TxObject.class});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<FA2Parameters> parser = PARSER;
                    if (parser == null) {
                        synchronized (FA2Parameters.class) {
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
            FA2Parameters fA2Parameters = new FA2Parameters();
            DEFAULT_INSTANCE = fA2Parameters;
            GeneratedMessageLite.registerDefaultInstance(FA2Parameters.class, fA2Parameters);
        }

        public static FA2Parameters getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<FA2Parameters> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class OperationParameters extends GeneratedMessageLite<OperationParameters, Builder> implements OperationParametersOrBuilder {
        private static final OperationParameters DEFAULT_INSTANCE;
        public static final int FA12_PARAMETERS_FIELD_NUMBER = 1;
        public static final int FA2_PARAMETERS_FIELD_NUMBER = 2;
        private static volatile Parser<OperationParameters> PARSER;
        private int parametersCase_ = 0;
        private Object parameters_;

        private OperationParameters() {
        }

        /* loaded from: classes6.dex */
        public enum ParametersCase {
            FA12_PARAMETERS(1),
            FA2_PARAMETERS(2),
            PARAMETERS_NOT_SET(0);
            
            private final int value;

            ParametersCase(int value) {
                this.value = value;
            }

            @Deprecated
            public static ParametersCase valueOf(int value) {
                return forNumber(value);
            }

            public static ParametersCase forNumber(int value) {
                if (value != 0) {
                    if (value != 1) {
                        if (value != 2) {
                            return null;
                        }
                        return FA2_PARAMETERS;
                    }
                    return FA12_PARAMETERS;
                }
                return PARAMETERS_NOT_SET;
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.Tezos.OperationParametersOrBuilder
        public ParametersCase getParametersCase() {
            return ParametersCase.forNumber(this.parametersCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearParameters() {
            this.parametersCase_ = 0;
            this.parameters_ = null;
        }

        @Override // wallet.core.jni.proto.Tezos.OperationParametersOrBuilder
        public boolean hasFa12Parameters() {
            return this.parametersCase_ == 1;
        }

        @Override // wallet.core.jni.proto.Tezos.OperationParametersOrBuilder
        public FA12Parameters getFa12Parameters() {
            if (this.parametersCase_ == 1) {
                return (FA12Parameters) this.parameters_;
            }
            return FA12Parameters.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFa12Parameters(FA12Parameters value) {
            value.getClass();
            this.parameters_ = value;
            this.parametersCase_ = 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeFa12Parameters(FA12Parameters value) {
            value.getClass();
            if (this.parametersCase_ == 1 && this.parameters_ != FA12Parameters.getDefaultInstance()) {
                this.parameters_ = FA12Parameters.newBuilder((FA12Parameters) this.parameters_).mergeFrom((FA12Parameters.Builder) value).buildPartial();
            } else {
                this.parameters_ = value;
            }
            this.parametersCase_ = 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFa12Parameters() {
            if (this.parametersCase_ == 1) {
                this.parametersCase_ = 0;
                this.parameters_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Tezos.OperationParametersOrBuilder
        public boolean hasFa2Parameters() {
            return this.parametersCase_ == 2;
        }

        @Override // wallet.core.jni.proto.Tezos.OperationParametersOrBuilder
        public FA2Parameters getFa2Parameters() {
            if (this.parametersCase_ == 2) {
                return (FA2Parameters) this.parameters_;
            }
            return FA2Parameters.getDefaultInstance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFa2Parameters(FA2Parameters value) {
            value.getClass();
            this.parameters_ = value;
            this.parametersCase_ = 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeFa2Parameters(FA2Parameters value) {
            value.getClass();
            if (this.parametersCase_ == 2 && this.parameters_ != FA2Parameters.getDefaultInstance()) {
                this.parameters_ = FA2Parameters.newBuilder((FA2Parameters) this.parameters_).mergeFrom((FA2Parameters.Builder) value).buildPartial();
            } else {
                this.parameters_ = value;
            }
            this.parametersCase_ = 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFa2Parameters() {
            if (this.parametersCase_ == 2) {
                this.parametersCase_ = 0;
                this.parameters_ = null;
            }
        }

        public static OperationParameters parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (OperationParameters) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationParameters parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationParameters) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationParameters parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (OperationParameters) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationParameters parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationParameters) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationParameters parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (OperationParameters) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static OperationParameters parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (OperationParameters) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static OperationParameters parseFrom(InputStream input) throws IOException {
            return (OperationParameters) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationParameters parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationParameters) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OperationParameters parseDelimitedFrom(InputStream input) throws IOException {
            return (OperationParameters) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationParameters parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationParameters) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static OperationParameters parseFrom(CodedInputStream input) throws IOException {
            return (OperationParameters) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static OperationParameters parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (OperationParameters) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(OperationParameters prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<OperationParameters, Builder> implements OperationParametersOrBuilder {
            /* synthetic */ Builder(C68541 c68541) {
                this();
            }

            private Builder() {
                super(OperationParameters.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Tezos.OperationParametersOrBuilder
            public ParametersCase getParametersCase() {
                return ((OperationParameters) this.instance).getParametersCase();
            }

            public Builder clearParameters() {
                copyOnWrite();
                ((OperationParameters) this.instance).clearParameters();
                return this;
            }

            @Override // wallet.core.jni.proto.Tezos.OperationParametersOrBuilder
            public boolean hasFa12Parameters() {
                return ((OperationParameters) this.instance).hasFa12Parameters();
            }

            @Override // wallet.core.jni.proto.Tezos.OperationParametersOrBuilder
            public FA12Parameters getFa12Parameters() {
                return ((OperationParameters) this.instance).getFa12Parameters();
            }

            public Builder setFa12Parameters(FA12Parameters value) {
                copyOnWrite();
                ((OperationParameters) this.instance).setFa12Parameters(value);
                return this;
            }

            public Builder setFa12Parameters(FA12Parameters.Builder builderForValue) {
                copyOnWrite();
                ((OperationParameters) this.instance).setFa12Parameters(builderForValue.build());
                return this;
            }

            public Builder mergeFa12Parameters(FA12Parameters value) {
                copyOnWrite();
                ((OperationParameters) this.instance).mergeFa12Parameters(value);
                return this;
            }

            public Builder clearFa12Parameters() {
                copyOnWrite();
                ((OperationParameters) this.instance).clearFa12Parameters();
                return this;
            }

            @Override // wallet.core.jni.proto.Tezos.OperationParametersOrBuilder
            public boolean hasFa2Parameters() {
                return ((OperationParameters) this.instance).hasFa2Parameters();
            }

            @Override // wallet.core.jni.proto.Tezos.OperationParametersOrBuilder
            public FA2Parameters getFa2Parameters() {
                return ((OperationParameters) this.instance).getFa2Parameters();
            }

            public Builder setFa2Parameters(FA2Parameters value) {
                copyOnWrite();
                ((OperationParameters) this.instance).setFa2Parameters(value);
                return this;
            }

            public Builder setFa2Parameters(FA2Parameters.Builder builderForValue) {
                copyOnWrite();
                ((OperationParameters) this.instance).setFa2Parameters(builderForValue.build());
                return this;
            }

            public Builder mergeFa2Parameters(FA2Parameters value) {
                copyOnWrite();
                ((OperationParameters) this.instance).mergeFa2Parameters(value);
                return this;
            }

            public Builder clearFa2Parameters() {
                copyOnWrite();
                ((OperationParameters) this.instance).clearFa2Parameters();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68541.f1827xa1df5c61[method.ordinal()]) {
                case 1:
                    return new OperationParameters();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000", new Object[]{"parameters_", "parametersCase_", FA12Parameters.class, FA2Parameters.class});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<OperationParameters> parser = PARSER;
                    if (parser == null) {
                        synchronized (OperationParameters.class) {
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
            OperationParameters operationParameters = new OperationParameters();
            DEFAULT_INSTANCE = operationParameters;
            GeneratedMessageLite.registerDefaultInstance(OperationParameters.class, operationParameters);
        }

        public static OperationParameters getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<OperationParameters> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class TransactionOperationData extends GeneratedMessageLite<TransactionOperationData, Builder> implements TransactionOperationDataOrBuilder {
        public static final int AMOUNT_FIELD_NUMBER = 2;
        private static final TransactionOperationData DEFAULT_INSTANCE;
        public static final int DESTINATION_FIELD_NUMBER = 1;
        public static final int PARAMETERS_FIELD_NUMBER = 3;
        private static volatile Parser<TransactionOperationData> PARSER;
        private long amount_;
        private String destination_ = "";
        private OperationParameters parameters_;

        private TransactionOperationData() {
        }

        @Override // wallet.core.jni.proto.Tezos.TransactionOperationDataOrBuilder
        public String getDestination() {
            return this.destination_;
        }

        @Override // wallet.core.jni.proto.Tezos.TransactionOperationDataOrBuilder
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

        @Override // wallet.core.jni.proto.Tezos.TransactionOperationDataOrBuilder
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

        @Override // wallet.core.jni.proto.Tezos.TransactionOperationDataOrBuilder
        public boolean hasParameters() {
            return this.parameters_ != null;
        }

        @Override // wallet.core.jni.proto.Tezos.TransactionOperationDataOrBuilder
        public OperationParameters getParameters() {
            OperationParameters operationParameters = this.parameters_;
            return operationParameters == null ? OperationParameters.getDefaultInstance() : operationParameters;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setParameters(OperationParameters value) {
            value.getClass();
            this.parameters_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeParameters(OperationParameters value) {
            value.getClass();
            OperationParameters operationParameters = this.parameters_;
            if (operationParameters != null && operationParameters != OperationParameters.getDefaultInstance()) {
                this.parameters_ = OperationParameters.newBuilder(this.parameters_).mergeFrom((OperationParameters.Builder) value).buildPartial();
            } else {
                this.parameters_ = value;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearParameters() {
            this.parameters_ = null;
        }

        public static TransactionOperationData parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (TransactionOperationData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionOperationData parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionOperationData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionOperationData parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (TransactionOperationData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionOperationData parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionOperationData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionOperationData parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (TransactionOperationData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static TransactionOperationData parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (TransactionOperationData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static TransactionOperationData parseFrom(InputStream input) throws IOException {
            return (TransactionOperationData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionOperationData parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionOperationData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransactionOperationData parseDelimitedFrom(InputStream input) throws IOException {
            return (TransactionOperationData) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionOperationData parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionOperationData) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static TransactionOperationData parseFrom(CodedInputStream input) throws IOException {
            return (TransactionOperationData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static TransactionOperationData parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (TransactionOperationData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(TransactionOperationData prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<TransactionOperationData, Builder> implements TransactionOperationDataOrBuilder {
            /* synthetic */ Builder(C68541 c68541) {
                this();
            }

            private Builder() {
                super(TransactionOperationData.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Tezos.TransactionOperationDataOrBuilder
            public String getDestination() {
                return ((TransactionOperationData) this.instance).getDestination();
            }

            @Override // wallet.core.jni.proto.Tezos.TransactionOperationDataOrBuilder
            public ByteString getDestinationBytes() {
                return ((TransactionOperationData) this.instance).getDestinationBytes();
            }

            public Builder setDestination(String value) {
                copyOnWrite();
                ((TransactionOperationData) this.instance).setDestination(value);
                return this;
            }

            public Builder clearDestination() {
                copyOnWrite();
                ((TransactionOperationData) this.instance).clearDestination();
                return this;
            }

            public Builder setDestinationBytes(ByteString value) {
                copyOnWrite();
                ((TransactionOperationData) this.instance).setDestinationBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Tezos.TransactionOperationDataOrBuilder
            public long getAmount() {
                return ((TransactionOperationData) this.instance).getAmount();
            }

            public Builder setAmount(long value) {
                copyOnWrite();
                ((TransactionOperationData) this.instance).setAmount(value);
                return this;
            }

            public Builder clearAmount() {
                copyOnWrite();
                ((TransactionOperationData) this.instance).clearAmount();
                return this;
            }

            @Override // wallet.core.jni.proto.Tezos.TransactionOperationDataOrBuilder
            public boolean hasParameters() {
                return ((TransactionOperationData) this.instance).hasParameters();
            }

            @Override // wallet.core.jni.proto.Tezos.TransactionOperationDataOrBuilder
            public OperationParameters getParameters() {
                return ((TransactionOperationData) this.instance).getParameters();
            }

            public Builder setParameters(OperationParameters value) {
                copyOnWrite();
                ((TransactionOperationData) this.instance).setParameters(value);
                return this;
            }

            public Builder setParameters(OperationParameters.Builder builderForValue) {
                copyOnWrite();
                ((TransactionOperationData) this.instance).setParameters(builderForValue.build());
                return this;
            }

            public Builder mergeParameters(OperationParameters value) {
                copyOnWrite();
                ((TransactionOperationData) this.instance).mergeParameters(value);
                return this;
            }

            public Builder clearParameters() {
                copyOnWrite();
                ((TransactionOperationData) this.instance).clearParameters();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68541.f1827xa1df5c61[method.ordinal()]) {
                case 1:
                    return new TransactionOperationData();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\u0002\u0003\t", new Object[]{"destination_", "amount_", "parameters_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<TransactionOperationData> parser = PARSER;
                    if (parser == null) {
                        synchronized (TransactionOperationData.class) {
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
            TransactionOperationData transactionOperationData = new TransactionOperationData();
            DEFAULT_INSTANCE = transactionOperationData;
            GeneratedMessageLite.registerDefaultInstance(TransactionOperationData.class, transactionOperationData);
        }

        public static TransactionOperationData getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<TransactionOperationData> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class RevealOperationData extends GeneratedMessageLite<RevealOperationData, Builder> implements RevealOperationDataOrBuilder {
        private static final RevealOperationData DEFAULT_INSTANCE;
        private static volatile Parser<RevealOperationData> PARSER = null;
        public static final int PUBLIC_KEY_FIELD_NUMBER = 1;
        private ByteString publicKey_ = ByteString.EMPTY;

        private RevealOperationData() {
        }

        @Override // wallet.core.jni.proto.Tezos.RevealOperationDataOrBuilder
        public ByteString getPublicKey() {
            return this.publicKey_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPublicKey(ByteString value) {
            value.getClass();
            this.publicKey_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPublicKey() {
            this.publicKey_ = getDefaultInstance().getPublicKey();
        }

        public static RevealOperationData parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (RevealOperationData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static RevealOperationData parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (RevealOperationData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static RevealOperationData parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (RevealOperationData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static RevealOperationData parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (RevealOperationData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static RevealOperationData parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (RevealOperationData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static RevealOperationData parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (RevealOperationData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static RevealOperationData parseFrom(InputStream input) throws IOException {
            return (RevealOperationData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static RevealOperationData parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (RevealOperationData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static RevealOperationData parseDelimitedFrom(InputStream input) throws IOException {
            return (RevealOperationData) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static RevealOperationData parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (RevealOperationData) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static RevealOperationData parseFrom(CodedInputStream input) throws IOException {
            return (RevealOperationData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static RevealOperationData parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (RevealOperationData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(RevealOperationData prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<RevealOperationData, Builder> implements RevealOperationDataOrBuilder {
            /* synthetic */ Builder(C68541 c68541) {
                this();
            }

            private Builder() {
                super(RevealOperationData.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Tezos.RevealOperationDataOrBuilder
            public ByteString getPublicKey() {
                return ((RevealOperationData) this.instance).getPublicKey();
            }

            public Builder setPublicKey(ByteString value) {
                copyOnWrite();
                ((RevealOperationData) this.instance).setPublicKey(value);
                return this;
            }

            public Builder clearPublicKey() {
                copyOnWrite();
                ((RevealOperationData) this.instance).clearPublicKey();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68541.f1827xa1df5c61[method.ordinal()]) {
                case 1:
                    return new RevealOperationData();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\n", new Object[]{"publicKey_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<RevealOperationData> parser = PARSER;
                    if (parser == null) {
                        synchronized (RevealOperationData.class) {
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
            RevealOperationData revealOperationData = new RevealOperationData();
            DEFAULT_INSTANCE = revealOperationData;
            GeneratedMessageLite.registerDefaultInstance(RevealOperationData.class, revealOperationData);
        }

        public static RevealOperationData getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<RevealOperationData> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* loaded from: classes6.dex */
    public static final class DelegationOperationData extends GeneratedMessageLite<DelegationOperationData, Builder> implements DelegationOperationDataOrBuilder {
        private static final DelegationOperationData DEFAULT_INSTANCE;
        public static final int DELEGATE_FIELD_NUMBER = 1;
        private static volatile Parser<DelegationOperationData> PARSER;
        private String delegate_ = "";

        private DelegationOperationData() {
        }

        @Override // wallet.core.jni.proto.Tezos.DelegationOperationDataOrBuilder
        public String getDelegate() {
            return this.delegate_;
        }

        @Override // wallet.core.jni.proto.Tezos.DelegationOperationDataOrBuilder
        public ByteString getDelegateBytes() {
            return ByteString.copyFromUtf8(this.delegate_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDelegate(String value) {
            value.getClass();
            this.delegate_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDelegate() {
            this.delegate_ = getDefaultInstance().getDelegate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDelegateBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.delegate_ = value.toStringUtf8();
        }

        public static DelegationOperationData parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (DelegationOperationData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DelegationOperationData parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DelegationOperationData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DelegationOperationData parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (DelegationOperationData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DelegationOperationData parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DelegationOperationData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DelegationOperationData parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (DelegationOperationData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static DelegationOperationData parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (DelegationOperationData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static DelegationOperationData parseFrom(InputStream input) throws IOException {
            return (DelegationOperationData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DelegationOperationData parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DelegationOperationData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DelegationOperationData parseDelimitedFrom(InputStream input) throws IOException {
            return (DelegationOperationData) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static DelegationOperationData parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DelegationOperationData) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static DelegationOperationData parseFrom(CodedInputStream input) throws IOException {
            return (DelegationOperationData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static DelegationOperationData parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (DelegationOperationData) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(DelegationOperationData prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes6.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<DelegationOperationData, Builder> implements DelegationOperationDataOrBuilder {
            /* synthetic */ Builder(C68541 c68541) {
                this();
            }

            private Builder() {
                super(DelegationOperationData.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Tezos.DelegationOperationDataOrBuilder
            public String getDelegate() {
                return ((DelegationOperationData) this.instance).getDelegate();
            }

            @Override // wallet.core.jni.proto.Tezos.DelegationOperationDataOrBuilder
            public ByteString getDelegateBytes() {
                return ((DelegationOperationData) this.instance).getDelegateBytes();
            }

            public Builder setDelegate(String value) {
                copyOnWrite();
                ((DelegationOperationData) this.instance).setDelegate(value);
                return this;
            }

            public Builder clearDelegate() {
                copyOnWrite();
                ((DelegationOperationData) this.instance).clearDelegate();
                return this;
            }

            public Builder setDelegateBytes(ByteString value) {
                copyOnWrite();
                ((DelegationOperationData) this.instance).setDelegateBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C68541.f1827xa1df5c61[method.ordinal()]) {
                case 1:
                    return new DelegationOperationData();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"delegate_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<DelegationOperationData> parser = PARSER;
                    if (parser == null) {
                        synchronized (DelegationOperationData.class) {
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
            DelegationOperationData delegationOperationData = new DelegationOperationData();
            DEFAULT_INSTANCE = delegationOperationData;
            GeneratedMessageLite.registerDefaultInstance(DelegationOperationData.class, delegationOperationData);
        }

        public static DelegationOperationData getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<DelegationOperationData> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }
}
