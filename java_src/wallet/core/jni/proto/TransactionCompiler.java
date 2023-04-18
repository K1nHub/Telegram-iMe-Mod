package wallet.core.jni.proto;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MessageLite;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import wallet.core.jni.proto.Common;
/* loaded from: classes6.dex */
public final class TransactionCompiler {

    /* loaded from: classes6.dex */
    public interface PreSigningOutputOrBuilder extends MessageLiteOrBuilder {
        ByteString getData();

        ByteString getDataHash();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        Common.SigningError getError();

        String getErrorMessage();

        ByteString getErrorMessageBytes();

        int getErrorValue();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private TransactionCompiler() {
    }

    /* loaded from: classes6.dex */
    public static final class PreSigningOutput extends GeneratedMessageLite<PreSigningOutput, Builder> implements PreSigningOutputOrBuilder {
        public static final int DATA_FIELD_NUMBER = 2;
        public static final int DATA_HASH_FIELD_NUMBER = 1;
        private static final PreSigningOutput DEFAULT_INSTANCE;
        public static final int ERROR_FIELD_NUMBER = 3;
        public static final int ERROR_MESSAGE_FIELD_NUMBER = 4;
        private static volatile Parser<PreSigningOutput> PARSER;
        private ByteString dataHash_;
        private ByteString data_;
        private String errorMessage_;
        private int error_;

        private PreSigningOutput() {
            ByteString byteString = ByteString.EMPTY;
            this.dataHash_ = byteString;
            this.data_ = byteString;
            this.errorMessage_ = "";
        }

        @Override // wallet.core.jni.proto.TransactionCompiler.PreSigningOutputOrBuilder
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

        @Override // wallet.core.jni.proto.TransactionCompiler.PreSigningOutputOrBuilder
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

        @Override // wallet.core.jni.proto.TransactionCompiler.PreSigningOutputOrBuilder
        public int getErrorValue() {
            return this.error_;
        }

        @Override // wallet.core.jni.proto.TransactionCompiler.PreSigningOutputOrBuilder
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

        @Override // wallet.core.jni.proto.TransactionCompiler.PreSigningOutputOrBuilder
        public String getErrorMessage() {
            return this.errorMessage_;
        }

        @Override // wallet.core.jni.proto.TransactionCompiler.PreSigningOutputOrBuilder
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
            /* synthetic */ Builder(C67531 c67531) {
                this();
            }

            private Builder() {
                super(PreSigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.TransactionCompiler.PreSigningOutputOrBuilder
            public ByteString getDataHash() {
                return ((PreSigningOutput) this.instance).getDataHash();
            }

            public Builder setDataHash(ByteString value) {
                copyOnWrite();
                ((PreSigningOutput) this.instance).setDataHash(value);
                return this;
            }

            public Builder clearDataHash() {
                copyOnWrite();
                ((PreSigningOutput) this.instance).clearDataHash();
                return this;
            }

            @Override // wallet.core.jni.proto.TransactionCompiler.PreSigningOutputOrBuilder
            public ByteString getData() {
                return ((PreSigningOutput) this.instance).getData();
            }

            public Builder setData(ByteString value) {
                copyOnWrite();
                ((PreSigningOutput) this.instance).setData(value);
                return this;
            }

            public Builder clearData() {
                copyOnWrite();
                ((PreSigningOutput) this.instance).clearData();
                return this;
            }

            @Override // wallet.core.jni.proto.TransactionCompiler.PreSigningOutputOrBuilder
            public int getErrorValue() {
                return ((PreSigningOutput) this.instance).getErrorValue();
            }

            public Builder setErrorValue(int value) {
                copyOnWrite();
                ((PreSigningOutput) this.instance).setErrorValue(value);
                return this;
            }

            @Override // wallet.core.jni.proto.TransactionCompiler.PreSigningOutputOrBuilder
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

            @Override // wallet.core.jni.proto.TransactionCompiler.PreSigningOutputOrBuilder
            public String getErrorMessage() {
                return ((PreSigningOutput) this.instance).getErrorMessage();
            }

            @Override // wallet.core.jni.proto.TransactionCompiler.PreSigningOutputOrBuilder
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
            switch (C67531.f1822xa1df5c61[method.ordinal()]) {
                case 1:
                    return new PreSigningOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\n\u0002\n\u0003\f\u0004Ȉ", new Object[]{"dataHash_", "data_", "error_", "errorMessage_"});
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

    /* renamed from: wallet.core.jni.proto.TransactionCompiler$1 */
    /* loaded from: classes6.dex */
    static /* synthetic */ class C67531 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f1822xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f1822xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1822xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1822xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1822xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1822xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1822xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1822xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }
}
