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
/* loaded from: classes7.dex */
public final class VeChain {

    /* loaded from: classes7.dex */
    public interface ClauseOrBuilder extends MessageLiteOrBuilder {
        ByteString getData();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getTo();

        ByteString getToBytes();

        ByteString getValue();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        long getBlockRef();

        int getChainTag();

        Clause getClauses(int index);

        int getClausesCount();

        List<Clause> getClausesList();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getDependsOn();

        int getExpiration();

        long getGas();

        int getGasPriceCoef();

        long getNonce();

        ByteString getPrivateKey();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface SigningOutputOrBuilder extends MessageLiteOrBuilder {
        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getEncoded();

        ByteString getSignature();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private VeChain() {
    }

    /* loaded from: classes7.dex */
    public static final class Clause extends GeneratedMessageLite<Clause, Builder> implements ClauseOrBuilder {
        public static final int DATA_FIELD_NUMBER = 3;
        private static final Clause DEFAULT_INSTANCE;
        private static volatile Parser<Clause> PARSER = null;
        public static final int TO_FIELD_NUMBER = 1;
        public static final int VALUE_FIELD_NUMBER = 2;
        private ByteString data_;
        private String to_ = "";
        private ByteString value_;

        private Clause() {
            ByteString byteString = ByteString.EMPTY;
            this.value_ = byteString;
            this.data_ = byteString;
        }

        @Override // wallet.core.jni.proto.VeChain.ClauseOrBuilder
        public String getTo() {
            return this.to_;
        }

        @Override // wallet.core.jni.proto.VeChain.ClauseOrBuilder
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

        @Override // wallet.core.jni.proto.VeChain.ClauseOrBuilder
        public ByteString getValue() {
            return this.value_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setValue(ByteString value) {
            value.getClass();
            this.value_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearValue() {
            this.value_ = getDefaultInstance().getValue();
        }

        @Override // wallet.core.jni.proto.VeChain.ClauseOrBuilder
        public ByteString getData() {
            return this.data_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setData(ByteString value) {
            value.getClass();
            this.data_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearData() {
            this.data_ = getDefaultInstance().getData();
        }

        public static Clause parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
            return (Clause) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Clause parseFrom(ByteBuffer data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Clause) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Clause parseFrom(ByteString data) throws InvalidProtocolBufferException {
            return (Clause) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Clause parseFrom(ByteString data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Clause) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Clause parseFrom(byte[] data) throws InvalidProtocolBufferException {
            return (Clause) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data);
        }

        public static Clause parseFrom(byte[] data, ExtensionRegistryLite extensionRegistry) throws InvalidProtocolBufferException {
            return (Clause) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, data, extensionRegistry);
        }

        public static Clause parseFrom(InputStream input) throws IOException {
            return (Clause) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Clause parseFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Clause) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Clause parseDelimitedFrom(InputStream input) throws IOException {
            return (Clause) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input);
        }

        public static Clause parseDelimitedFrom(InputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Clause) GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Clause parseFrom(CodedInputStream input) throws IOException {
            return (Clause) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input);
        }

        public static Clause parseFrom(CodedInputStream input, ExtensionRegistryLite extensionRegistry) throws IOException {
            return (Clause) GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, input, extensionRegistry);
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Builder newBuilder(Clause prototype) {
            return DEFAULT_INSTANCE.createBuilder(prototype);
        }

        /* loaded from: classes7.dex */
        public static final class Builder extends GeneratedMessageLite.Builder<Clause, Builder> implements ClauseOrBuilder {
            /* synthetic */ Builder(C74541 c74541) {
                this();
            }

            private Builder() {
                super(Clause.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.VeChain.ClauseOrBuilder
            public String getTo() {
                return ((Clause) this.instance).getTo();
            }

            @Override // wallet.core.jni.proto.VeChain.ClauseOrBuilder
            public ByteString getToBytes() {
                return ((Clause) this.instance).getToBytes();
            }

            public Builder setTo(String value) {
                copyOnWrite();
                ((Clause) this.instance).setTo(value);
                return this;
            }

            public Builder clearTo() {
                copyOnWrite();
                ((Clause) this.instance).clearTo();
                return this;
            }

            public Builder setToBytes(ByteString value) {
                copyOnWrite();
                ((Clause) this.instance).setToBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.VeChain.ClauseOrBuilder
            public ByteString getValue() {
                return ((Clause) this.instance).getValue();
            }

            public Builder setValue(ByteString value) {
                copyOnWrite();
                ((Clause) this.instance).setValue(value);
                return this;
            }

            public Builder clearValue() {
                copyOnWrite();
                ((Clause) this.instance).clearValue();
                return this;
            }

            @Override // wallet.core.jni.proto.VeChain.ClauseOrBuilder
            public ByteString getData() {
                return ((Clause) this.instance).getData();
            }

            public Builder setData(ByteString value) {
                copyOnWrite();
                ((Clause) this.instance).setData(value);
                return this;
            }

            public Builder clearData() {
                copyOnWrite();
                ((Clause) this.instance).clearData();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C74541.f1988xa1df5c61[method.ordinal()]) {
                case 1:
                    return new Clause();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\n", new Object[]{"to_", "value_", "data_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    Parser<Clause> parser = PARSER;
                    if (parser == null) {
                        synchronized (Clause.class) {
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
            Clause clause = new Clause();
            DEFAULT_INSTANCE = clause;
            GeneratedMessageLite.registerDefaultInstance(Clause.class, clause);
        }

        public static Clause getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Parser<Clause> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }
    }

    /* renamed from: wallet.core.jni.proto.VeChain$1 */
    /* loaded from: classes7.dex */
    static /* synthetic */ class C74541 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f1988xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f1988xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1988xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1988xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1988xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1988xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1988xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1988xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes7.dex */
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        public static final int BLOCK_REF_FIELD_NUMBER = 2;
        public static final int CHAIN_TAG_FIELD_NUMBER = 1;
        public static final int CLAUSES_FIELD_NUMBER = 4;
        private static final SigningInput DEFAULT_INSTANCE;
        public static final int DEPENDS_ON_FIELD_NUMBER = 7;
        public static final int EXPIRATION_FIELD_NUMBER = 3;
        public static final int GAS_FIELD_NUMBER = 6;
        public static final int GAS_PRICE_COEF_FIELD_NUMBER = 5;
        public static final int NONCE_FIELD_NUMBER = 8;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PRIVATE_KEY_FIELD_NUMBER = 9;
        private long blockRef_;
        private int chainTag_;
        private Internal.ProtobufList<Clause> clauses_ = GeneratedMessageLite.emptyProtobufList();
        private ByteString dependsOn_;
        private int expiration_;
        private int gasPriceCoef_;
        private long gas_;
        private long nonce_;
        private ByteString privateKey_;

        private SigningInput() {
            ByteString byteString = ByteString.EMPTY;
            this.dependsOn_ = byteString;
            this.privateKey_ = byteString;
        }

        @Override // wallet.core.jni.proto.VeChain.SigningInputOrBuilder
        public int getChainTag() {
            return this.chainTag_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setChainTag(int value) {
            this.chainTag_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearChainTag() {
            this.chainTag_ = 0;
        }

        @Override // wallet.core.jni.proto.VeChain.SigningInputOrBuilder
        public long getBlockRef() {
            return this.blockRef_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBlockRef(long value) {
            this.blockRef_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearBlockRef() {
            this.blockRef_ = 0L;
        }

        @Override // wallet.core.jni.proto.VeChain.SigningInputOrBuilder
        public int getExpiration() {
            return this.expiration_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setExpiration(int value) {
            this.expiration_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearExpiration() {
            this.expiration_ = 0;
        }

        @Override // wallet.core.jni.proto.VeChain.SigningInputOrBuilder
        public List<Clause> getClausesList() {
            return this.clauses_;
        }

        public List<? extends ClauseOrBuilder> getClausesOrBuilderList() {
            return this.clauses_;
        }

        @Override // wallet.core.jni.proto.VeChain.SigningInputOrBuilder
        public int getClausesCount() {
            return this.clauses_.size();
        }

        @Override // wallet.core.jni.proto.VeChain.SigningInputOrBuilder
        public Clause getClauses(int index) {
            return this.clauses_.get(index);
        }

        public ClauseOrBuilder getClausesOrBuilder(int index) {
            return this.clauses_.get(index);
        }

        private void ensureClausesIsMutable() {
            Internal.ProtobufList<Clause> protobufList = this.clauses_;
            if (protobufList.isModifiable()) {
                return;
            }
            this.clauses_ = GeneratedMessageLite.mutableCopy(protobufList);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setClauses(int index, Clause value) {
            value.getClass();
            ensureClausesIsMutable();
            this.clauses_.set(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addClauses(Clause value) {
            value.getClass();
            ensureClausesIsMutable();
            this.clauses_.add(value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addClauses(int index, Clause value) {
            value.getClass();
            ensureClausesIsMutable();
            this.clauses_.add(index, value);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllClauses(Iterable<? extends Clause> values) {
            ensureClausesIsMutable();
            AbstractMessageLite.addAll((Iterable) values, (List) this.clauses_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearClauses() {
            this.clauses_ = GeneratedMessageLite.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeClauses(int index) {
            ensureClausesIsMutable();
            this.clauses_.remove(index);
        }

        @Override // wallet.core.jni.proto.VeChain.SigningInputOrBuilder
        public int getGasPriceCoef() {
            return this.gasPriceCoef_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setGasPriceCoef(int value) {
            this.gasPriceCoef_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearGasPriceCoef() {
            this.gasPriceCoef_ = 0;
        }

        @Override // wallet.core.jni.proto.VeChain.SigningInputOrBuilder
        public long getGas() {
            return this.gas_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setGas(long value) {
            this.gas_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearGas() {
            this.gas_ = 0L;
        }

        @Override // wallet.core.jni.proto.VeChain.SigningInputOrBuilder
        public ByteString getDependsOn() {
            return this.dependsOn_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDependsOn(ByteString value) {
            value.getClass();
            this.dependsOn_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDependsOn() {
            this.dependsOn_ = getDefaultInstance().getDependsOn();
        }

        @Override // wallet.core.jni.proto.VeChain.SigningInputOrBuilder
        public long getNonce() {
            return this.nonce_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setNonce(long value) {
            this.nonce_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearNonce() {
            this.nonce_ = 0L;
        }

        @Override // wallet.core.jni.proto.VeChain.SigningInputOrBuilder
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
            /* synthetic */ Builder(C74541 c74541) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.VeChain.SigningInputOrBuilder
            public int getChainTag() {
                return ((SigningInput) this.instance).getChainTag();
            }

            public Builder setChainTag(int value) {
                copyOnWrite();
                ((SigningInput) this.instance).setChainTag(value);
                return this;
            }

            public Builder clearChainTag() {
                copyOnWrite();
                ((SigningInput) this.instance).clearChainTag();
                return this;
            }

            @Override // wallet.core.jni.proto.VeChain.SigningInputOrBuilder
            public long getBlockRef() {
                return ((SigningInput) this.instance).getBlockRef();
            }

            public Builder setBlockRef(long value) {
                copyOnWrite();
                ((SigningInput) this.instance).setBlockRef(value);
                return this;
            }

            public Builder clearBlockRef() {
                copyOnWrite();
                ((SigningInput) this.instance).clearBlockRef();
                return this;
            }

            @Override // wallet.core.jni.proto.VeChain.SigningInputOrBuilder
            public int getExpiration() {
                return ((SigningInput) this.instance).getExpiration();
            }

            public Builder setExpiration(int value) {
                copyOnWrite();
                ((SigningInput) this.instance).setExpiration(value);
                return this;
            }

            public Builder clearExpiration() {
                copyOnWrite();
                ((SigningInput) this.instance).clearExpiration();
                return this;
            }

            @Override // wallet.core.jni.proto.VeChain.SigningInputOrBuilder
            public List<Clause> getClausesList() {
                return Collections.unmodifiableList(((SigningInput) this.instance).getClausesList());
            }

            @Override // wallet.core.jni.proto.VeChain.SigningInputOrBuilder
            public int getClausesCount() {
                return ((SigningInput) this.instance).getClausesCount();
            }

            @Override // wallet.core.jni.proto.VeChain.SigningInputOrBuilder
            public Clause getClauses(int index) {
                return ((SigningInput) this.instance).getClauses(index);
            }

            public Builder setClauses(int index, Clause value) {
                copyOnWrite();
                ((SigningInput) this.instance).setClauses(index, value);
                return this;
            }

            public Builder setClauses(int index, Clause.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).setClauses(index, builderForValue.build());
                return this;
            }

            public Builder addClauses(Clause value) {
                copyOnWrite();
                ((SigningInput) this.instance).addClauses(value);
                return this;
            }

            public Builder addClauses(int index, Clause value) {
                copyOnWrite();
                ((SigningInput) this.instance).addClauses(index, value);
                return this;
            }

            public Builder addClauses(Clause.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).addClauses(builderForValue.build());
                return this;
            }

            public Builder addClauses(int index, Clause.Builder builderForValue) {
                copyOnWrite();
                ((SigningInput) this.instance).addClauses(index, builderForValue.build());
                return this;
            }

            public Builder addAllClauses(Iterable<? extends Clause> values) {
                copyOnWrite();
                ((SigningInput) this.instance).addAllClauses(values);
                return this;
            }

            public Builder clearClauses() {
                copyOnWrite();
                ((SigningInput) this.instance).clearClauses();
                return this;
            }

            public Builder removeClauses(int index) {
                copyOnWrite();
                ((SigningInput) this.instance).removeClauses(index);
                return this;
            }

            @Override // wallet.core.jni.proto.VeChain.SigningInputOrBuilder
            public int getGasPriceCoef() {
                return ((SigningInput) this.instance).getGasPriceCoef();
            }

            public Builder setGasPriceCoef(int value) {
                copyOnWrite();
                ((SigningInput) this.instance).setGasPriceCoef(value);
                return this;
            }

            public Builder clearGasPriceCoef() {
                copyOnWrite();
                ((SigningInput) this.instance).clearGasPriceCoef();
                return this;
            }

            @Override // wallet.core.jni.proto.VeChain.SigningInputOrBuilder
            public long getGas() {
                return ((SigningInput) this.instance).getGas();
            }

            public Builder setGas(long value) {
                copyOnWrite();
                ((SigningInput) this.instance).setGas(value);
                return this;
            }

            public Builder clearGas() {
                copyOnWrite();
                ((SigningInput) this.instance).clearGas();
                return this;
            }

            @Override // wallet.core.jni.proto.VeChain.SigningInputOrBuilder
            public ByteString getDependsOn() {
                return ((SigningInput) this.instance).getDependsOn();
            }

            public Builder setDependsOn(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setDependsOn(value);
                return this;
            }

            public Builder clearDependsOn() {
                copyOnWrite();
                ((SigningInput) this.instance).clearDependsOn();
                return this;
            }

            @Override // wallet.core.jni.proto.VeChain.SigningInputOrBuilder
            public long getNonce() {
                return ((SigningInput) this.instance).getNonce();
            }

            public Builder setNonce(long value) {
                copyOnWrite();
                ((SigningInput) this.instance).setNonce(value);
                return this;
            }

            public Builder clearNonce() {
                copyOnWrite();
                ((SigningInput) this.instance).clearNonce();
                return this;
            }

            @Override // wallet.core.jni.proto.VeChain.SigningInputOrBuilder
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
            switch (C74541.f1988xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\t\u0000\u0000\u0001\t\t\u0000\u0001\u0000\u0001\u000b\u0002\u0003\u0003\u000b\u0004\u001b\u0005\u000b\u0006\u0003\u0007\n\b\u0003\t\n", new Object[]{"chainTag_", "blockRef_", "expiration_", "clauses_", Clause.class, "gasPriceCoef_", "gas_", "dependsOn_", "nonce_", "privateKey_"});
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
        private static volatile Parser<SigningOutput> PARSER = null;
        public static final int SIGNATURE_FIELD_NUMBER = 2;
        private ByteString encoded_;
        private ByteString signature_;

        private SigningOutput() {
            ByteString byteString = ByteString.EMPTY;
            this.encoded_ = byteString;
            this.signature_ = byteString;
        }

        @Override // wallet.core.jni.proto.VeChain.SigningOutputOrBuilder
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

        @Override // wallet.core.jni.proto.VeChain.SigningOutputOrBuilder
        public ByteString getSignature() {
            return this.signature_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSignature(ByteString value) {
            value.getClass();
            this.signature_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSignature() {
            this.signature_ = getDefaultInstance().getSignature();
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
            /* synthetic */ Builder(C74541 c74541) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.VeChain.SigningOutputOrBuilder
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

            @Override // wallet.core.jni.proto.VeChain.SigningOutputOrBuilder
            public ByteString getSignature() {
                return ((SigningOutput) this.instance).getSignature();
            }

            public Builder setSignature(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setSignature(value);
                return this;
            }

            public Builder clearSignature() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearSignature();
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C74541.f1988xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\n", new Object[]{"encoded_", "signature_"});
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
