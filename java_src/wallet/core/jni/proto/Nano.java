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
/* loaded from: classes7.dex */
public final class Nano {

    /* loaded from: classes7.dex */
    public interface SigningInputOrBuilder extends MessageLiteOrBuilder {
        String getBalance();

        ByteString getBalanceBytes();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        ByteString getLinkBlock();

        SigningInput.LinkOneofCase getLinkOneofCase();

        String getLinkRecipient();

        ByteString getLinkRecipientBytes();

        ByteString getParentBlock();

        ByteString getPrivateKey();

        String getRepresentative();

        ByteString getRepresentativeBytes();

        String getWork();

        ByteString getWorkBytes();

        boolean hasLinkBlock();

        boolean hasLinkRecipient();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    /* loaded from: classes7.dex */
    public interface SigningOutputOrBuilder extends MessageLiteOrBuilder {
        ByteString getBlockHash();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ MessageLite getDefaultInstanceForType();

        String getJson();

        ByteString getJsonBytes();

        ByteString getSignature();

        @Override // com.google.protobuf.MessageLiteOrBuilder
        /* synthetic */ boolean isInitialized();
    }

    public static void registerAllExtensions(ExtensionRegistryLite registry) {
    }

    private Nano() {
    }

    /* loaded from: classes7.dex */
    public static final class SigningInput extends GeneratedMessageLite<SigningInput, Builder> implements SigningInputOrBuilder {
        public static final int BALANCE_FIELD_NUMBER = 6;
        private static final SigningInput DEFAULT_INSTANCE;
        public static final int LINK_BLOCK_FIELD_NUMBER = 3;
        public static final int LINK_RECIPIENT_FIELD_NUMBER = 4;
        public static final int PARENT_BLOCK_FIELD_NUMBER = 2;
        private static volatile Parser<SigningInput> PARSER = null;
        public static final int PRIVATE_KEY_FIELD_NUMBER = 1;
        public static final int REPRESENTATIVE_FIELD_NUMBER = 5;
        public static final int WORK_FIELD_NUMBER = 7;
        private String balance_;
        private int linkOneofCase_ = 0;
        private Object linkOneof_;
        private ByteString parentBlock_;
        private ByteString privateKey_;
        private String representative_;
        private String work_;

        private SigningInput() {
            ByteString byteString = ByteString.EMPTY;
            this.privateKey_ = byteString;
            this.parentBlock_ = byteString;
            this.representative_ = "";
            this.balance_ = "";
            this.work_ = "";
        }

        /* loaded from: classes7.dex */
        public enum LinkOneofCase {
            LINK_BLOCK(3),
            LINK_RECIPIENT(4),
            LINKONEOF_NOT_SET(0);
            
            private final int value;

            LinkOneofCase(int value) {
                this.value = value;
            }

            @Deprecated
            public static LinkOneofCase valueOf(int value) {
                return forNumber(value);
            }

            public static LinkOneofCase forNumber(int value) {
                if (value != 0) {
                    if (value != 3) {
                        if (value != 4) {
                            return null;
                        }
                        return LINK_RECIPIENT;
                    }
                    return LINK_BLOCK;
                }
                return LINKONEOF_NOT_SET;
            }

            public int getNumber() {
                return this.value;
            }
        }

        @Override // wallet.core.jni.proto.Nano.SigningInputOrBuilder
        public LinkOneofCase getLinkOneofCase() {
            return LinkOneofCase.forNumber(this.linkOneofCase_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearLinkOneof() {
            this.linkOneofCase_ = 0;
            this.linkOneof_ = null;
        }

        @Override // wallet.core.jni.proto.Nano.SigningInputOrBuilder
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

        @Override // wallet.core.jni.proto.Nano.SigningInputOrBuilder
        public ByteString getParentBlock() {
            return this.parentBlock_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setParentBlock(ByteString value) {
            value.getClass();
            this.parentBlock_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearParentBlock() {
            this.parentBlock_ = getDefaultInstance().getParentBlock();
        }

        @Override // wallet.core.jni.proto.Nano.SigningInputOrBuilder
        public boolean hasLinkBlock() {
            return this.linkOneofCase_ == 3;
        }

        @Override // wallet.core.jni.proto.Nano.SigningInputOrBuilder
        public ByteString getLinkBlock() {
            if (this.linkOneofCase_ == 3) {
                return (ByteString) this.linkOneof_;
            }
            return ByteString.EMPTY;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLinkBlock(ByteString value) {
            value.getClass();
            this.linkOneofCase_ = 3;
            this.linkOneof_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearLinkBlock() {
            if (this.linkOneofCase_ == 3) {
                this.linkOneofCase_ = 0;
                this.linkOneof_ = null;
            }
        }

        @Override // wallet.core.jni.proto.Nano.SigningInputOrBuilder
        public boolean hasLinkRecipient() {
            return this.linkOneofCase_ == 4;
        }

        @Override // wallet.core.jni.proto.Nano.SigningInputOrBuilder
        public String getLinkRecipient() {
            return this.linkOneofCase_ == 4 ? (String) this.linkOneof_ : "";
        }

        @Override // wallet.core.jni.proto.Nano.SigningInputOrBuilder
        public ByteString getLinkRecipientBytes() {
            return ByteString.copyFromUtf8(this.linkOneofCase_ == 4 ? (String) this.linkOneof_ : "");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLinkRecipient(String value) {
            value.getClass();
            this.linkOneofCase_ = 4;
            this.linkOneof_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearLinkRecipient() {
            if (this.linkOneofCase_ == 4) {
                this.linkOneofCase_ = 0;
                this.linkOneof_ = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLinkRecipientBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.linkOneof_ = value.toStringUtf8();
            this.linkOneofCase_ = 4;
        }

        @Override // wallet.core.jni.proto.Nano.SigningInputOrBuilder
        public String getRepresentative() {
            return this.representative_;
        }

        @Override // wallet.core.jni.proto.Nano.SigningInputOrBuilder
        public ByteString getRepresentativeBytes() {
            return ByteString.copyFromUtf8(this.representative_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRepresentative(String value) {
            value.getClass();
            this.representative_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearRepresentative() {
            this.representative_ = getDefaultInstance().getRepresentative();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setRepresentativeBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.representative_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Nano.SigningInputOrBuilder
        public String getBalance() {
            return this.balance_;
        }

        @Override // wallet.core.jni.proto.Nano.SigningInputOrBuilder
        public ByteString getBalanceBytes() {
            return ByteString.copyFromUtf8(this.balance_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBalance(String value) {
            value.getClass();
            this.balance_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearBalance() {
            this.balance_ = getDefaultInstance().getBalance();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBalanceBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.balance_ = value.toStringUtf8();
        }

        @Override // wallet.core.jni.proto.Nano.SigningInputOrBuilder
        public String getWork() {
            return this.work_;
        }

        @Override // wallet.core.jni.proto.Nano.SigningInputOrBuilder
        public ByteString getWorkBytes() {
            return ByteString.copyFromUtf8(this.work_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setWork(String value) {
            value.getClass();
            this.work_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearWork() {
            this.work_ = getDefaultInstance().getWork();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setWorkBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.work_ = value.toStringUtf8();
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
            /* synthetic */ Builder(C72221 c72221) {
                this();
            }

            private Builder() {
                super(SigningInput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Nano.SigningInputOrBuilder
            public LinkOneofCase getLinkOneofCase() {
                return ((SigningInput) this.instance).getLinkOneofCase();
            }

            public Builder clearLinkOneof() {
                copyOnWrite();
                ((SigningInput) this.instance).clearLinkOneof();
                return this;
            }

            @Override // wallet.core.jni.proto.Nano.SigningInputOrBuilder
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

            @Override // wallet.core.jni.proto.Nano.SigningInputOrBuilder
            public ByteString getParentBlock() {
                return ((SigningInput) this.instance).getParentBlock();
            }

            public Builder setParentBlock(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setParentBlock(value);
                return this;
            }

            public Builder clearParentBlock() {
                copyOnWrite();
                ((SigningInput) this.instance).clearParentBlock();
                return this;
            }

            @Override // wallet.core.jni.proto.Nano.SigningInputOrBuilder
            public boolean hasLinkBlock() {
                return ((SigningInput) this.instance).hasLinkBlock();
            }

            @Override // wallet.core.jni.proto.Nano.SigningInputOrBuilder
            public ByteString getLinkBlock() {
                return ((SigningInput) this.instance).getLinkBlock();
            }

            public Builder setLinkBlock(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setLinkBlock(value);
                return this;
            }

            public Builder clearLinkBlock() {
                copyOnWrite();
                ((SigningInput) this.instance).clearLinkBlock();
                return this;
            }

            @Override // wallet.core.jni.proto.Nano.SigningInputOrBuilder
            public boolean hasLinkRecipient() {
                return ((SigningInput) this.instance).hasLinkRecipient();
            }

            @Override // wallet.core.jni.proto.Nano.SigningInputOrBuilder
            public String getLinkRecipient() {
                return ((SigningInput) this.instance).getLinkRecipient();
            }

            @Override // wallet.core.jni.proto.Nano.SigningInputOrBuilder
            public ByteString getLinkRecipientBytes() {
                return ((SigningInput) this.instance).getLinkRecipientBytes();
            }

            public Builder setLinkRecipient(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setLinkRecipient(value);
                return this;
            }

            public Builder clearLinkRecipient() {
                copyOnWrite();
                ((SigningInput) this.instance).clearLinkRecipient();
                return this;
            }

            public Builder setLinkRecipientBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setLinkRecipientBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Nano.SigningInputOrBuilder
            public String getRepresentative() {
                return ((SigningInput) this.instance).getRepresentative();
            }

            @Override // wallet.core.jni.proto.Nano.SigningInputOrBuilder
            public ByteString getRepresentativeBytes() {
                return ((SigningInput) this.instance).getRepresentativeBytes();
            }

            public Builder setRepresentative(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setRepresentative(value);
                return this;
            }

            public Builder clearRepresentative() {
                copyOnWrite();
                ((SigningInput) this.instance).clearRepresentative();
                return this;
            }

            public Builder setRepresentativeBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setRepresentativeBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Nano.SigningInputOrBuilder
            public String getBalance() {
                return ((SigningInput) this.instance).getBalance();
            }

            @Override // wallet.core.jni.proto.Nano.SigningInputOrBuilder
            public ByteString getBalanceBytes() {
                return ((SigningInput) this.instance).getBalanceBytes();
            }

            public Builder setBalance(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setBalance(value);
                return this;
            }

            public Builder clearBalance() {
                copyOnWrite();
                ((SigningInput) this.instance).clearBalance();
                return this;
            }

            public Builder setBalanceBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setBalanceBytes(value);
                return this;
            }

            @Override // wallet.core.jni.proto.Nano.SigningInputOrBuilder
            public String getWork() {
                return ((SigningInput) this.instance).getWork();
            }

            @Override // wallet.core.jni.proto.Nano.SigningInputOrBuilder
            public ByteString getWorkBytes() {
                return ((SigningInput) this.instance).getWorkBytes();
            }

            public Builder setWork(String value) {
                copyOnWrite();
                ((SigningInput) this.instance).setWork(value);
                return this;
            }

            public Builder clearWork() {
                copyOnWrite();
                ((SigningInput) this.instance).clearWork();
                return this;
            }

            public Builder setWorkBytes(ByteString value) {
                copyOnWrite();
                ((SigningInput) this.instance).setWorkBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C72221.f1952xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningInput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0007\u0001\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001\n\u0002\n\u0003=\u0000\u0004Ȼ\u0000\u0005Ȉ\u0006Ȉ\u0007Ȉ", new Object[]{"linkOneof_", "linkOneofCase_", "privateKey_", "parentBlock_", "representative_", "balance_", "work_"});
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

    /* renamed from: wallet.core.jni.proto.Nano$1 */
    /* loaded from: classes7.dex */
    static /* synthetic */ class C72221 {

        /* renamed from: $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke */
        static final /* synthetic */ int[] f1952xa1df5c61;

        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f1952xa1df5c61 = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1952xa1df5c61[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1952xa1df5c61[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1952xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1952xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1952xa1df5c61[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1952xa1df5c61[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes7.dex */
    public static final class SigningOutput extends GeneratedMessageLite<SigningOutput, Builder> implements SigningOutputOrBuilder {
        public static final int BLOCK_HASH_FIELD_NUMBER = 2;
        private static final SigningOutput DEFAULT_INSTANCE;
        public static final int JSON_FIELD_NUMBER = 3;
        private static volatile Parser<SigningOutput> PARSER = null;
        public static final int SIGNATURE_FIELD_NUMBER = 1;
        private ByteString blockHash_;
        private String json_;
        private ByteString signature_;

        private SigningOutput() {
            ByteString byteString = ByteString.EMPTY;
            this.signature_ = byteString;
            this.blockHash_ = byteString;
            this.json_ = "";
        }

        @Override // wallet.core.jni.proto.Nano.SigningOutputOrBuilder
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

        @Override // wallet.core.jni.proto.Nano.SigningOutputOrBuilder
        public ByteString getBlockHash() {
            return this.blockHash_;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBlockHash(ByteString value) {
            value.getClass();
            this.blockHash_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearBlockHash() {
            this.blockHash_ = getDefaultInstance().getBlockHash();
        }

        @Override // wallet.core.jni.proto.Nano.SigningOutputOrBuilder
        public String getJson() {
            return this.json_;
        }

        @Override // wallet.core.jni.proto.Nano.SigningOutputOrBuilder
        public ByteString getJsonBytes() {
            return ByteString.copyFromUtf8(this.json_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setJson(String value) {
            value.getClass();
            this.json_ = value;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearJson() {
            this.json_ = getDefaultInstance().getJson();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setJsonBytes(ByteString value) {
            AbstractMessageLite.checkByteStringIsUtf8(value);
            this.json_ = value.toStringUtf8();
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
            /* synthetic */ Builder(C72221 c72221) {
                this();
            }

            private Builder() {
                super(SigningOutput.DEFAULT_INSTANCE);
            }

            @Override // wallet.core.jni.proto.Nano.SigningOutputOrBuilder
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

            @Override // wallet.core.jni.proto.Nano.SigningOutputOrBuilder
            public ByteString getBlockHash() {
                return ((SigningOutput) this.instance).getBlockHash();
            }

            public Builder setBlockHash(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setBlockHash(value);
                return this;
            }

            public Builder clearBlockHash() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearBlockHash();
                return this;
            }

            @Override // wallet.core.jni.proto.Nano.SigningOutputOrBuilder
            public String getJson() {
                return ((SigningOutput) this.instance).getJson();
            }

            @Override // wallet.core.jni.proto.Nano.SigningOutputOrBuilder
            public ByteString getJsonBytes() {
                return ((SigningOutput) this.instance).getJsonBytes();
            }

            public Builder setJson(String value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setJson(value);
                return this;
            }

            public Builder clearJson() {
                copyOnWrite();
                ((SigningOutput) this.instance).clearJson();
                return this;
            }

            public Builder setJsonBytes(ByteString value) {
                copyOnWrite();
                ((SigningOutput) this.instance).setJsonBytes(value);
                return this;
            }
        }

        @Override // com.google.protobuf.GeneratedMessageLite
        protected final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke method, Object arg0, Object arg1) {
            switch (C72221.f1952xa1df5c61[method.ordinal()]) {
                case 1:
                    return new SigningOutput();
                case 2:
                    return new Builder(null);
                case 3:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\n\u0002\n\u0003Ȉ", new Object[]{"signature_", "blockHash_", "json_"});
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
